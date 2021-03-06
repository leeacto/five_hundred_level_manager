#colors
true_green = Color.where(name: 'True Green').first_or_create
true_royal = Color.where(name: 'True Royal').first_or_create
true_red = Color.where(name: 'True Red').first_or_create
lavender = Color.where(name: 'Lavender').first_or_create
athletic_gray = Color.where(name: 'Athletic Gray').first_or_create
athletic_blue = Color.where(name: 'Athletic Blue').first_or_create
gray = Color.where(name: 'Gray').first_or_create
heather_lake_blue = Color.where(name: 'Heather Lake Blue').first_or_create
heather_black = Color.where(name: 'Heather Black').first_or_create
heather_gold = Color.where(name: 'Heather Gold').first_or_create
heather_gray = Color.where(name: 'Heather Gray').first_or_create
white = Color.where(name: 'White').first_or_create
ivory = Color.where(name: 'Ivory').first_or_create
ash = Color.where(name: 'Ash').first_or_create
royal = Color.where(name: 'Royal').first_or_create
navy = Color.where(name: 'Navy').first_or_create
purple = Color.where(name: 'Purple').first_or_create
grass = Color.where(name: 'Grass').first_or_create
turquoise = Color.where(name: 'Turquoise').first_or_create
baby_blue = Color.where(name: 'Baby Blue').first_or_create
royal_blue = Color.where(name: 'Royal Blue').first_or_create
red = Color.where(name: 'Red').first_or_create
charcoal = Color.where(name: 'Charcoal').first_or_create
gold = Color.where(name: 'Gold').first_or_create
kelly_green = Color.where(name: 'Kelly Green').first_or_create
lime_green = Color.where(name: 'Lime Green').first_or_create
eco_true_purple = Color.where(name: 'Eco True Purple').first_or_create
eco_purple = Color.where(name: 'Eco Purple').first_or_create
eco_gray = Color.where(name: 'Eco Gray').first_or_create
eco_green = Color.where(name: 'Eco Green').first_or_create
eco_red = Color.where(name: 'Eco Red').first_or_create
eco_true_red = Color.where(name: 'Eco True Red').first_or_create
eco_true_royal = Color.where(name: 'Eco True Royal').first_or_create
eco_true_green = Color.where(name: 'Eco True Green').first_or_create
eco_royal = Color.where(name: 'Eco Royal').first_or_create
eco_black = Color.where(name: 'Eco Black').first_or_create
eco_teal = Color.where(name: 'Eco Teal').first_or_create
eco_stone = Color.where(name: 'Eco Stone').first_or_create
eco_wheat = Color.where(name: 'Eco Wheat').first_or_create

# Sizes
Size.where(name: 'XS', sku: 'XS').first_or_create
Size.where(name: 'S', sku: 'SM').first_or_create
Size.where(name: 'M', sku: 'MD').first_or_create
Size.where(name: 'L', sku: 'LG').first_or_create
Size.where(name: 'XL', sku: 'XL').first_or_create
Size.where(name: 'XXL', sku: '2X').first_or_create
Size.where(name: 'XXXL', sku: '3X').first_or_create
Size.where(name: '2T', sku: '2T', is_kids: true).first_or_create
Size.where(name: '4-5Y', sku: '5Y', is_kids: true).first_or_create
Size.where(name: '6-7Y', sku: '7Y', is_kids: true).first_or_create
Size.where(name: '8Y', sku: '8Y', is_kids: true).first_or_create
Size.where(name: '10-12Y', sku: 'PT', is_kids: true).first_or_create #Pre-Teen
Size.where(name: '14-16Y', sku: 'TN', is_kids: true).first_or_create #Teen
Size.where(name: '3-6M', sku: 'TH', is_kids: true).first_or_create
Size.where(name: '6-12M', sku: 'SX', is_kids: true).first_or_create
Size.where(name: '12-18M', sku: 'TW', is_kids: true).first_or_create
Size.where(name: '18-24M', sku: 'EI', is_kids: true).first_or_create

mens_hoodie = Clothing.where(
  base_name: 'Mens Hoodie'
).first_or_initialize
mens_hoodie.update_attributes(
  clothing_type: 'Long Sleeve',
  style: 'Mens Hoodie',
  gender: 'Men',
  price: 45,
  weight: 908,
  sku: 'MNH',
  extension: 'Winter'
)
mens_hoodie.add_tags(["Mens Hoodie", "Crew Sweatshirt", "Zip Hoodie", "Lace Hoodie", "Long Sleeve"])
mens_hoodie.add_sizes(["S","M","L","XL","XXL","XXXL"])
ClothingColor.where(clothing: mens_hoodie, color: gray, image: "UNISEX-GREY-CHAMPION-HOODIE.png").first_or_create
ClothingColor.where(clothing: mens_hoodie, color: white, image: "UNISEX-WHITE-CHAMPION-HOODIE.png").first_or_create
ClothingColor.where(clothing: mens_hoodie, color: ash, image: "UNISEX-ASH-CHAMPION-HOODIE.png").first_or_create
ClothingColor.where(clothing: mens_hoodie, color: royal_blue, image: "UNISEX-BLUE-CHAMPION-HOODIE.png").first_or_create
ClothingColor.where(clothing: mens_hoodie, color: gold, image: "UNISEX-GOLD-CHAMPION-HOODIE.png").first_or_create
ClothingColor.where(clothing: mens_hoodie, color: lime_green, image: "UNISEX-LIME-GREEN-CHAMPION-HOODIE.png").first_or_create

zip_hoodie = Clothing.where(
  base_name: 'Zip Hoodie'
).first_or_initialize
zip_hoodie.update_attributes(
  clothing_type: 'Long Sleeve',
  style: 'Zip Hoodie',
  gender: 'Men',
  price: 50,
  weight: 908,
  sku: 'ZPH',
  extension: 'Winter'
)
zip_hoodie.add_tags(["Mens Hoodie", "Crew Sweatshirt", "Zip Hoodie", "Lace Hoodie", "Long Sleeve"])
zip_hoodie.add_sizes(["S","M","L","XL","XXL"])
ClothingColor.where(clothing: zip_hoodie, color: eco_gray, image: "UNISEX-GREY-AA-ZIP-HOODIE.png").first_or_create
ClothingColor.where(clothing: zip_hoodie, color: true_red, image: "UNISEX-RED-AA-ZIP-HOODIE.png").first_or_create
ClothingColor.where(clothing: zip_hoodie, color: eco_royal, image: "UNISEX-LT-BLUE-AA-ZIP-HOODIE.png").first_or_create
ClothingColor.where(clothing: zip_hoodie, color: eco_true_royal, image: "UNISEX-BLUE-AA-ZIP-HOODIE.png").first_or_create
ClothingColor.where(clothing: zip_hoodie, color: eco_black, image: "UNISEX-BLACK-AA-ZIP-HOODIE.png").first_or_create
ClothingColor.where(clothing: zip_hoodie, color: eco_purple, image: "UNISEX-PURPLE-AA-ZIP-HOODIE.png").first_or_create

lace_hoodie = Clothing.where(
  base_name: 'Lace Hoodie'
).first_or_initialize
lace_hoodie.update_attributes(
  clothing_type: 'Long Sleeve',
  style: 'Lace Hoodie',
  gender: 'Men',
  price: 50,
  weight: 908,
  sku: 'LCH',
  extension: 'Winter'
)
lace_hoodie.add_tags(["Mens Hoodie", "Crew Sweatshirt", "Zip Hoodie", "Lace Hoodie", "Long Sleeve"])
lace_hoodie.add_sizes(["S","M","L","XL","XXL", "XXXL"])
ClothingColor.where(clothing: lace_hoodie, color: gray, image: "UNISEX-GREY-HOCKEY-HOODIE.png").first_or_create
ClothingColor.where(clothing: lace_hoodie, color: white, image: "UNISEX-WHITE-HOCKEY-HOODIE.png").first_or_create
ClothingColor.where(clothing: lace_hoodie, color: royal, image: "UNISEX-BLUE-HOCKEY-HOODIE.png").first_or_create
ClothingColor.where(clothing: lace_hoodie, color: red, image: "UNISEX-RED-HOCKEY-HOODIE.png").first_or_create
ClothingColor.where(clothing: lace_hoodie, color: charcoal, image: "UNISEX-BLACK-HOCKEY-HOODIE.png").first_or_create

crew_sweatshirt = Clothing.where(
  base_name: 'Crew Sweatshirt'
).first_or_initialize
crew_sweatshirt.update_attributes(
  clothing_type: 'Long Sleeve',
  style: 'Crew Sweatshirt',
  gender: 'Men',
  price: 45,
  weight: 454,
  sku: 'CRW',
  extension: 'Winter'
)
crew_sweatshirt.add_tags(["Mens Hoodie", "Crew Sweatshirt", "Zip Hoodie", "Lace Hoodie", "Long Sleeve"])
crew_sweatshirt.add_sizes(["S","M","L","XL","XXL"])
ClothingColor.where(clothing: crew_sweatshirt, color: eco_gray, image: "UNISEX-GREY-AA-CREWNECK-SWEATSHIRT.png").first_or_create
ClothingColor.where(clothing: crew_sweatshirt, color: eco_true_red, image: "UNISEX-RED-AA-CREWNECK-SWEATSHIRT.png").first_or_create
ClothingColor.where(clothing: crew_sweatshirt, color: eco_true_royal, image: "UNISEX-BLUE-AA-CREWNECK-SWEATSHIRT.png").first_or_create
ClothingColor.where(clothing: crew_sweatshirt, color: eco_black, image: "UNISEX-BLACK-AA-CREWNECK-SWEATSHIRT.png").first_or_create
ClothingColor.where(clothing: crew_sweatshirt, color: eco_true_green, image: "UNISEX-GREEN-AA-CREWNECK-SWEATSHIRT.png").first_or_create

long_sleeve = Clothing.where(
  base_name: 'Long Sleeve'
).first_or_initialize
long_sleeve.update_attributes(
  clothing_type: 'Long Sleeve',
  style: 'Long Sleeve',
  gender: 'Men',
  price: 32,
  weight: 227,
  sku: 'MLS',
  extension: 'Winter'
)
long_sleeve.add_tags(["Mens Hoodie", "Crew Sweatshirt", "Zip Hoodie", "Lace Hoodie", "Long Sleeve"])
long_sleeve.add_sizes(["S","M","L","XL","XXL"])
ClothingColor.where(clothing: long_sleeve, color: white, image: "MEN-WHITE-AA-LS-TEE.png").first_or_create
ClothingColor.where(clothing: long_sleeve, color: heather_gray, image: "MEN-GREY-AA-LS-TEE.png").first_or_create
ClothingColor.where(clothing: long_sleeve, color: lime_green, image: "MEN-LIME-GREEN-AA-LS-TEE.png").first_or_create

w_hoodie_sleeve = Clothing.where(
  base_name: 'Womens Hoodie'
).first_or_initialize
w_hoodie_sleeve.update_attributes(
  clothing_type: 'Long Sleeve',
  style: 'Womens Hoodie',
  gender: 'Women',
  price: 45,
  weight: 908,
  sku: 'WMH',
  extension: 'Winter'
)
w_hoodie_sleeve.add_tags(["Womens Hoodie", "Maniac Sweatshirt"])
w_hoodie_sleeve.add_sizes(["S","M","L","XL"])
ClothingColor.where(clothing: w_hoodie_sleeve, color: eco_gray, image: "WOMAN-GREY-AA-HOODIE.png").first_or_create
ClothingColor.where(clothing: w_hoodie_sleeve, color: eco_stone, image: "WOMEN-OATMEAL-AA-HOODIE.png").first_or_create

maniac = Clothing.where(
  base_name: 'Maniac Sweatshirt'
).first_or_initialize
maniac.update_attributes(
  clothing_type: 'Long Sleeve',
  style: 'Maniac Sweatshirt',
  gender: 'Women',
  price: 45,
  weight: 454,
  sku: 'MAN',
  extension: 'Winter'
)
maniac.add_tags(["Womens Hoodie", "Maniac Sweatshirt"])
maniac.add_sizes(["S","M","L","XL"])
ClothingColor.where(clothing: maniac, color: eco_gray, image: "WOMEN-GREY-AA-MANIAC.png").first_or_create
ClothingColor.where(clothing: maniac, color: eco_wheat, image: "WOMEN-OATMEAL-AA-MANIAC.png").first_or_create
ClothingColor.where(clothing: maniac, color: eco_true_purple, image: "WOMEN-PURPLE-AA-MANIAC.png").first_or_create
ClothingColor.where(clothing: maniac, color: eco_teal, image: "a.png").first_or_create
ClothingColor.where(clothing: maniac, color: eco_black, image: "a.png").first_or_create
ClothingColor.where(clothing: maniac, color: eco_true_royal, image: "WOMEN-BLUE-AA-MANIAC.png").first_or_create
ClothingColor.where(clothing: maniac, color: eco_royal, image: "WOMEN-LT-BLUE-AA-MANIAC.png").first_or_create

m_tshirt = Clothing.where(
  base_name: 'Mens T-Shirt'
).first_or_initialize
m_tshirt.update_attributes(
  clothing_type: 'T-Shirt',
  style: 'T-Shirt',
  gender: 'Men',
  price: 27,
  sku: 'MNT',
  weight: 318,
)
m_tshirt.add_tags(["T-Shirt", "V-Neck", "Tank Top"])
m_tshirt.add_sizes(["S","M","L","XL","XXL"])
ClothingColor.where(clothing: m_tshirt, color: eco_black, image: "Men-Eco-Black-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: eco_green, image: "Men-Eco-Green-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: eco_red, image: "Men-Eco-Red-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: navy, image: "Men-Eco-Navy-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: gold, image: "Men-Gold-AA-Tee1.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: heather_gold, image: "Men-Gold-AA-Tee-Lighter.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: heather_gray, image: "Men-Grey-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: ivory, image: "Men-Ivory-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: purple, image: "Men-Purple-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: turquoise, image: "Men-Teal-AA-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: true_green, image: "Men-True-Green-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: true_red, image: "Men-True-Red-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: true_royal, image: "Men-True-Royal-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: lime_green, image: "Men-Lime-Green-Tee.png").first_or_create
ClothingColor.where(clothing: m_tshirt, color: eco_royal, image: "Men-Lt-Blue-Tee.png").first_or_create

w_tshirt = Clothing.unscoped.where(
  base_name: 'Womens T-Shirt'
).first_or_initialize
w_tshirt.update_attributes(
  clothing_type: 'T-Shirt',
  style: 'T-Shirt',
  gender: 'Women',
  sku: 'WMT',
  price: 27,
  weight: 318,
)
w_tshirt.add_tags(["T-Shirt", "V-Neck", "Tank Top"])
w_tshirt.add_sizes(["S","M","L","XL","XXL"])
ClothingColor.where(clothing: w_tshirt, color: heather_black, image: "Women-Eco-Black-AA-Fine-Tee.png").first_or_create
ClothingColor.where(clothing: w_tshirt, color: heather_gray, image: "Women-Grey-Scoop-Tee.png").first_or_create
ClothingColor.where(clothing: w_tshirt, color: heather_lake_blue, image: "Women-Blue-AA-Fine-Tee.png").first_or_create
ClothingColor.where(clothing: w_tshirt, color: kelly_green, image: "Women-Green-Scoop-Tee.png").first_or_create
ClothingColor.where(clothing: w_tshirt, color: purple, image: "Women-Purple-Scoop-Tee.png").first_or_create
ClothingColor.where(clothing: w_tshirt, color: red, image: "Women-Red-Scoop-Tee.png").first_or_create
ClothingColor.where(clothing: w_tshirt, color: white, image: "Women-White-Scoop-Tee.png").first_or_create

t_tshirt = Clothing.where(
  base_name: 'Kids T-Shirt'
).first_or_initialize
t_tshirt.update_attributes(
  clothing_type: 'T-Shirt',
  style: 'Kids T-Shirt',
  gender: 'Kids',
  price: 17,
  sku: 'KDT',
  weight: 136,
)
t_tshirt.add_tags(["Onesie","Kids T-Shirt"])
t_tshirt.add_sizes(%w(2T 4-5Y 6-7Y 8Y 10-12Y 14-16Y))
ClothingColor.where(clothing: t_tshirt, color: heather_gray, image: "Kids-Grey-Toddler-Tee.png").first_or_create
ClothingColor.where(clothing: t_tshirt, color: red, image: "Kids-Red-Toddler-Tee.png").first_or_create
ClothingColor.where(clothing: t_tshirt, color: white, image: "Kids-White-Toddler-Tee.png").first_or_create

y_hoodie = Clothing.where(
  base_name: 'Youth Hoodie'
).first_or_initialize
y_hoodie.update_attributes(
  clothing_type: 'Long Sleeve',
  style: 'Youth Hoodie',
  gender: 'Kids',
  price: 35,
  sku: 'YTH',
  weight: 908,
  extension: 'Winter'
)
y_hoodie.add_tags(["Youth Hoodie"])
y_hoodie.add_sizes(["S","M","L","XL"])
ClothingColor.where(clothing: y_hoodie, color: gray, image: "UNISEX-GREY-CHAMPION-HOODIE.png").first_or_create

m_vneck = Clothing.where(
  base_name: "Mens V-Neck"
).first_or_initialize
m_vneck.update_attributes(
  clothing_type: 'T-Shirt',
  style: "V-Neck",
  gender: 'Men',
  sku: 'MVN',
  price: 27,
  weight: 318,
)
m_vneck.add_tags(["T-Shirt", "V-Neck", "Tank Top"])
m_vneck.add_sizes(["XS","S","M","L","XL","XXL"])
ClothingColor.where(clothing: m_vneck, color: eco_black, image: "Men-Eco-Black-V-Neck.png").first_or_create
ClothingColor.where(clothing: m_vneck, color: eco_green, image: "Men-Eco-Green-V-Neck.png").first_or_create
ClothingColor.where(clothing: m_vneck, color: eco_red, image: "Men-Eco-Red-V-Neck.png").first_or_create
ClothingColor.where(clothing: m_vneck, color: eco_royal, image: "Men-Eco-Royal-V-Neck.png").first_or_create
ClothingColor.where(clothing: m_vneck, color: heather_gray, image: "Men-Grey-V-Neck.png").first_or_create
ClothingColor.where(clothing: m_vneck, color: navy, image: "Men-Eco-Navy-V-Neck.png").first_or_create
ClothingColor.where(clothing: m_vneck, color: white, image: "Men-White-V-Neck.png").first_or_create

w_vneck = Clothing.where(
  base_name: "Womens V-Neck"
).first_or_initialize
w_vneck.update_attributes(
  clothing_type: 'T-Shirt',
  style: "V-Neck",
  gender: 'Women',
  price: 27,
  sku: 'WVN',
  weight: 318,
)
w_vneck.add_tags(["T-Shirt", "V-Neck", "Tank Top"])
w_vneck.add_sizes(["S","M","L","XL","XXL"])
ClothingColor.where(clothing: w_vneck, color: white, image: "Women-White-V-Neck.png").first_or_create
ClothingColor.where(clothing: w_vneck, color: red, image: "Women-Red-V-Neck.png").first_or_create
ClothingColor.where(clothing: w_vneck, color: baby_blue, image: "Women-Lt-Blue-V-Neck.png").first_or_create
ClothingColor.where(clothing: w_vneck, color: athletic_gray, image: "Women-Grey-V-Neck.png").first_or_create

m_tank = Clothing.where(
  base_name: "Mens Tank Top"
).first_or_initialize
m_tank.update_attributes(
  clothing_type: 'T-Shirt',
  style: "Tank Top",
  gender: 'Men',
  price: 27,
  sku: 'MTK',
  weight: 318,
)
m_tank.add_tags(["T-Shirt","V-Neck","Tank Top"])
m_tank.add_sizes(["XS","S","M","L","XL"])
ClothingColor.where(clothing: m_tank, color: athletic_gray, image: "Men-Grey-Tank-Top.png").first_or_create
ClothingColor.where(clothing: m_tank, color: athletic_blue, image: "Men-Eco-Royal-Tank-Top.png").first_or_create

w_tank = Clothing.where(
  base_name: "Women Tank Top"
).first_or_initialize
w_tank.update_attributes(
  clothing_type: 'T-Shirt',
  style: "Tank Top",
  gender: 'Women',
  sku: 'WTK',
  price: 27,
  weight: 318,
)
w_tank.add_sizes(["S","M","L","XL"])
w_tank.add_tags(["T-Shirt", "V-Neck", "Tank Top"])
ClothingColor.where(clothing: w_tank, color: eco_black, image: "Women-Eco-Black-Tank-Top.png").first_or_create
ClothingColor.where(clothing: w_tank, color: eco_purple, image: "Women-Purple-Tank-Top.png").first_or_create
ClothingColor.where(clothing: w_tank, color: gold, image: "Women-Gold-Tank-Top.png").first_or_create
ClothingColor.where(clothing: w_tank, color: heather_gray, image: "Women-Grey-Tank-Top.png").first_or_create
ClothingColor.where(clothing: w_tank, color: ivory, image: "Women-Ivory-Tank-Top.png").first_or_create
ClothingColor.where(clothing: w_tank, color: red, image: "Women-Red-Tank-Top.png").first_or_create
ClothingColor.where(clothing: w_tank, color: true_royal, image: "Women-Blue-Tank-Top.png").first_or_create
ClothingColor.where(clothing: w_tank, color: turquoise, image: "Women-Teal-Tank-Top.png").first_or_create

onesie = Clothing.where(
  base_name: "Onesie"
).first_or_initialize
onesie.update_attributes(
  clothing_type: 'Onesie',
  style: "Onesie",
  gender: 'Kids',
  price: 17,
  sku: 'WNZ',
  weight: 136,
)
onesie.add_tags(["Onesie","Kids T-Shirt"])
onesie.add_sizes(%w(2T 4-5Y 6-7Y 8Y 10-12Y 14-16Y))
ClothingColor.where(clothing: onesie, color: white, image: "Kids-White-Onesie.png").first_or_create
ClothingColor.where(clothing: onesie, color: heather_gray, image: "Kids-Grey-Onesie.png").first_or_create
ClothingColor.where(clothing: onesie, color: red, image: "Kids-Red-Onesie.png").first_or_create

# Sales Channels
shopify = SalesChannel.where(name: 'Shopify', sku: 'SH').first_or_initialize
shopify.update_attributes(percentage: 5)
amazon = SalesChannel.where(name: 'Amazon', sku: 'AZ').first_or_initialize
amazon.update_attributes(percentage: 10)
storefront = SalesChannel.where(name: 'Storefront', sku: 'ST').first_or_initialize
storefront.update_attributes(percentage: 4)
etsy = SalesChannel.where(name: 'Etsy', sku: 'ET').first_or_initialize
etsy.update_attributes(percentage: 3)

# Royalties
mlb = Royalty.where(league: 'MLB', code: 'B').first_or_initialize
mlb.update_attributes(percentage: 1)
nba = Royalty.where(league: 'NBA', code: 'A').first_or_initialize
nba.update_attributes(percentage: 2)
nfl = Royalty.where(league: 'NFL', code: 'L').first_or_initialize
nfl.update_attributes(percentage: 5)
