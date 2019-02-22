require 'csv'
require 'byebug'

namespace :import do
  
  desc "import salons from csv"
  task salons: :environment do
    filename = File.join Rails.root, "db/csv/salons.csv"

    CSV.foreach(filename, headers: true) do |row|

      Salons.create(name: row['name'], street_1: row['street_1'], street_2: row['street_2'], city: row['city'], state: row['state'], phone: row['phone'], email: row['email'], web: row['web'], business_certification: row['business_certification'], tax_id: row['tax_id'], image: row['image'])
    end
  end

  desc "import services from csv"
  task services: :environment do
    filename = File.join Rails.root, "db/csv/services.csv"

    CSV.foreach(filename, headers: true) do |row|
      Service.create(name: row['name'], salon_id: row['salon_id'], certification_id: row['certification_id'])
    end
  end

  desc "import service_types from csv" 
  task service_types: :environment do
    filename = File.join Rails.root, "db/csv/service_types.csv"

    CSV.foreach(filename, headers: true) do |row|
      ServiceType.create(name: row['name'], price: row['price'], service_id: row['service_id'])
    end 
  end

  desc "import service_products from csv"
  task service_products: :environment do 
    filename = File.join Rails.root, "db/csv/service_products.csv"

    CSV.foreach(filename, headers: true) do |row|
      ServiceProduct.create(product_id: row["product_id"], service_type: row["service_type"])
    end
  end

  desc "import products from csv"
  task products: :environment do
    filename = File.join Rails.root, "db/csv/products.csv"

    CSV.foreach(filename, headers: true) do |row|
      Product.create(name: row[:name], size: row[:size], quantity: row["quantity"], cost: row["cost"])
    end
  end

  desc "import product_categories from csv"
  task product_categories: :environment do
    filename = File.join Rails.root, "db/csv/product_categories.csv"

    CSV.foreach(filename, headers: true) do |row|
      ProductCategory.create(name: row["string"])
    end
  end

  desc "import users from csv"
  task users: :environment do
    filename = File.join Rails.root, "db/csv/users.csv"

    CSV.foreach(filename, headers: true) do |row|
      User.create(username: row['username'], password_digest: row['password_digest'], role: row["row"], image: row["image"], salon_id: row['salon_id'])
    end
  end

  desc "import profiles from csv"
  task profiles: :environment do
    filename = File.join Rails.root, "db/csv/profiles.csv"

    CSV.foreach(filename, headers: true) do |row|
      Profile.create(first_name: row['firstname'], last_name: row['last_namee'], birthday: row['birthday'], email: row['email'], home: row['home'], mobile: row['mobile'], street_1: row['street_1'], street_2: row['street_2'], city: row['city'], state: row['state'], zip: row['zip'], user_id: row[user_id])
    end
  end

  desc "import hair_cards from csv"
  task hair_cards: :environment do
    filename = Filename.join Rails.root, "db/csv/hair_cards.csv"

    CSV.foreach(filename, headers: true) do |row|
      HairCard.create(suffered_from_hair_loss?:	row['suffered_from_hair_loss?'],been_diagnosed_with_alopecia?:row['been_diagnosed_with_alopecia?'], take_any_medication?: row['take_any_medication?'],	been_pregnant_in_the_last_6_months?:	row['been_pregnant_in_the_last_6_months?'], suffer_from_psoriasis_to_the_scalp?:	row['suffer_from_psoriasis_to_the_scalp?'], suffer_from_ezcema_to_the_scalp?:
      row['suffer_from_ezcema_to_the_scalp?'],	have_a_sensitive_scalp?: row['	have_a_sensitive_scalp?'],	any_known_allergies?:	 row['any_known_allergies?'], which_ones?: row['which_ones?'],	frequently_swim_or_go_to_the_gym?: row['frequently_swim_or_go_to_the_gym?'], 	currently_have_colour_in_your_hair?:	row['currently_have_colour_in_your_hair?'], which_method?:	row['which_method?'], last_time_colored?:	row['last_time_colored?'], used_hair_extensions_before?:	row['used_hair_extensions_before?'], which_type_did_you_use?: row['which_type_did_you_use?'],	have_a_perm_or_relaxer?: row['have_a_perm_or_relaxer?'], last_time_you_had_a_relaxer?:	row['last_time_you_had_a_relaxer?'], wash_frequency?:	row['wash_frequency?'],hair_type: row['hair_type'], hair_is:	row['hair_is'], length:	row['length'], user_id:	row['user_id'], stylist_id:	row['stylist_id'], hair_personality_id: row['hair_personality_id'])
    end
  end

  desc "import hair_personalities from csv"
  task hair_personalities: :environment do
    filename = Filename.join Rails.root, "db/csv/hair_personalities.csv"

    CSV.foreach(filename, headers: true) do |row|
      HairPersonality.create(name: row[:name], description: row['description'], hair_card: row['hair_card'])
    end
  end

  desc "import certifications from csv"
  task certifications: :environment do
    filename = Filename.join Rails.root, "db/csv/certifications"

    CSV.foreach(filename, headers: true) do |row|
      Certification.create(name: row['name'], organization: row['orgnization'], hours_completed: row['hours_completed'], license: row['license'], license_id: row['license_id'], renewal: row["renewal"], stylist_id: row['stylist_id'])
    end
  end


  desc "import appointments from csv"
  task appointments: :environment do
    filename = Filename.join Rails.root, "db/csv/appointments.csv"

    CSV.foreach(filename, headers: true) do |row|
    Appointment.create(date: row['date'], start_time: row['start_time'], end_time: row['end_time'], status: row['status'], service_total: row['service_total'], user_id: row['user_id'], stylist_id: row['stylist_id'])
    end
  end

  desc "import service_request from csv"
  task service_requests: :environment do
    filename = Filename.join Rails.root, "db/csv/service_requests.csv"

    CSV.foreach(filename, headers: true) do |row|
      ServiceRequest.create(hairstyle: row['hairstyle'], appointment_id: row['appointment_id'], service_id: row['service_id'])
    end
  end

  desc "import gallery from csv"
  task galleries: :environment do
    filename = Filename.join Rails.root, "db/csv/galleries.csv"

    CSV.foreach(filename, headers: true) do |row|
      Gallery.create(image: row['image'], gallery_category_id: row['gallery_category_id'], gallerable_id: row['gallerable_id'], gallerable_type: row['gallerable_type'])
    end
  end

  desc "import gallery_category from csv"
  task gallery_catergories: :environment do
    filename = Filename.join Rails.root, "db/csv/gallery_categories.csv"

    CSV.foreach(filename, headers: true) do |row|
      GalleryCategory.create(name: row['name'])
    end
  end

end