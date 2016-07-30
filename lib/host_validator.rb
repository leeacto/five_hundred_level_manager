class HostValidator < AwsParent
  attr_reader :validator

  def initialize
    super
    @validator = Aws::S3::Client.new
  end

  def objects
    return @objects if @objects

    objs = []
     @validator.list_objects(bucket: ENV['BUCKET_NAME']).each do |response|
      objs += response.contents
    end

    @objects = objs
  end

  def paths
    @paths ||= objects.map { |object| object.key.split('/')[0...-1].join('/') + '/' }.uniq
  end

  def valid_folder?(path)
    encoded_path = path.gsub("(","\\(")
    encoded_path = encoded_path.gsub(")","\\)")
    paths.join.match(encoded_path)
  end
end
