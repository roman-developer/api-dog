
namespace :dogs do
  desc 'Importing dogs images'
  task import_images: :environment do
    COUNT_IMAGES = 500

    ImportDogImages.new(count: COUNT_IMAGES).call
  end
end
