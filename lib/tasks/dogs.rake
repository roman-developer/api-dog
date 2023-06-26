
namespace :dogs do
  desc 'Importing dogs images'
  task import_images: :environment do
    ImportDogsJob.perform_later
  end
end
