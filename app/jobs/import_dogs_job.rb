class ImportDogsJob < ApplicationJob
  queue_as :default
  COUNT_IMAGES = 500

  def perform(*args)
    ImportDogImages.new(count: COUNT_IMAGES).call
  end
end
