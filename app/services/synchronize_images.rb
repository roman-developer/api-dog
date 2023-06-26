# frozen_string_literal: true

class SynchronizeImages
  def initialize(dog_images:)
    @dog_images = dog_images
  end

  def call
    return if @dog_images.blank?

    @dog_images.each do |dog_image|
      Dog.find_or_create_by(name: dog_image[:name]) do |dog|
        dog.image = dog_image[:image]
      end
    end
  end
end
