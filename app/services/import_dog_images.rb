class ImportDogImages
  def initialize(count:)
    @count = count
  end

  def call
    puts "Getting images..."
    dog_images = GetApiImages.new(count: @count).call
    return if dog_images.blank?

    puts "Synchronizing images in database..."
    SynchronizeImages.new(dog_images: dog_images).call
  end
end
