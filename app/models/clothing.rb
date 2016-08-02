class Clothing < ApplicationRecord
  before_save :set_handle_extension
  attr_accessor :entry
  has_many :clothing_colors, join_table: 'clothing_colors'
  has_many :clothing_tags, join_table: 'clothing_tags'

  PUBLISHED = "TRUE"
  VARIANT_INVENTORY_QTY = "1"
  VARIANT_INVENTORY_POLICY = "deny"
  FULFILLMENT_SVC = "manual"
  VARIANT_REQUIRES_SHIPPING = "TRUE"
  VARIANT_TAXABLE = "FALSE"
  GIFT_CARD = "FALSE"
  SIZE_SKUS = {'XS' => 'XS', 'S' => 'S', 'M' => 'M', 'L' => 'L',  'XL' => 'XL',  'XXL' => 'XXL'}
  has_and_belongs_to_many :tags, join_table: :clothing_tags
  has_and_belongs_to_many :colors, join_table: :clothing_colors
  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
  default_scope { where(active: true) }

  def add_tags(tags)
    tags.each do |tag|
      tag_record = Tag.where(name: tag).first_or_create
      ClothingTag.where(clothing: self, tag: tag_record).first_or_create
    end
  end

  def image_url_builder(url_design, sub_dir, image)
    [url_design, extension, sub_dir, image].compact.join("/")
  end

  def handle
    @entry.handle + handle_extension.downcase + "-" + style.parameterize
  end

  def entry_tags(first_line)
    @entry.tags(self, PUBLISHED, first_line)
  end

  def style_tag
    if (style.split(' ') & %w(Mens Womens Kids)).empty?
      case gender
      when 'Male'
        return "Mens #{style}"
      when 'Women'
        return "Womens #{style}"
      when 'Kids'
        return "Kids #{style}"
      end
    else
      return style
    end
  end

  def options_data(color, size)
    ["Style", style_tag, "Color", color.color_name, "Size", size]
  end

  def variants_data
    [nil, weight,nil,VARIANT_INVENTORY_QTY,VARIANT_INVENTORY_POLICY,FULFILLMENT_SVC, price, nil, VARIANT_REQUIRES_SHIPPING, VARIANT_TAXABLE,nil]
  end

  def img_alt_text(color)
    gender_prefix = ''
    case gender
    when 'Male'
      gender_prefix = "Mens " unless style.include?('Mens')
    when 'Women'
      gender_prefix = "Womens " unless style.include?('Womens')
    when 'Kids'
      gender_prefix = "Kids " unless style.include?('Kids')
    end
    gender_prefix + style + " " + color
  end

  def image_data(image_url, color)
    [image_url, img_alt_text(color.color_name)]
  end

  def seo_title
    "#{@entry.title} #{style} | 500 LEVEL"
  end

  def seo_description
    description = "Show off your fandom with 500 LEVEL's #{@entry.title} #{style}. Made by fans, "
    description << "for fans, 500 LEVEL sports apparel lets you rep your team in style. Browse our selection "
    description << "and order today."
    description
  end

  def csv_line_for_size_and_color(size, clothing_color, image_url, first_line)
    columns = [handle] 
    columns += entry_tags(first_line)
    columns += options_data(clothing_color, size)
    columns += variants_data + image_data(image_url, clothing_color)
    columns += first_line ? first_line_entries(image_url) : later_line_entries(image_url)
    columns += full_sku(size, clothing_color)
  end

  def first_line_entries(image_url)
    csv_line = [GIFT_CARD, nil, nil, nil, nil]
    csv_line << seo_title
    csv_line << seo_description
    9.times { csv_line << nil }
    csv_line << image_url
    csv_line << nil

    csv_line
  end

  def later_line_entries(image_url)
    csv_line = []
    16.times { csv_line << nil }
    csv_line << image_url
    csv_line << nil

    csv_line
  end

  def size_style_color_sku(size, clothing_color)
    size_sku = SIZE_SKUS[size] || size[0..1]
    [size_sku, sku, clothing_color.color.sku].join('')
  end

  def full_sku(size)
    [
      [
        ENV['UPLOAD_VERSION'],
        size_style_color_sku(size, color),
        @entry.team.player_sku,
        @entry.team.player_sku_id,
      ].join("-")
    ]
  end

  def valid_colors
    @valid_colors ||= Hash[colors.map{ |color, image_url| !@entry.url_string_for_product(self, image_url).nil? ? [color, image_url] : nil }.compact]
  end

  def csv_lines_for_color(clothing_color, first_line)
    lines = []
    image_url = @entry.url_string_for_clothing(self, clothing_color.image)
    return false unless image_url

    sizes.each do |size|
      lines << csv_line_for_size_and_color(size, clothing_color, image_url, first_line)
      first_line = false if first_line
    end

    lines
  end

  private

  def set_handle_extension
    self.handle_extension = ""
    self.handle_extension = '-kids' if gender == 'Kids'
    self.handle_extension += "-#{extension.upcase}" if extension
  end
end
