class ImportDogImages
  def initialize(count:)
    @count = count
  end

  def call
    dog_images = GetApiImages.new(count: @count).call
    return if dog_images.blank?

    SynchronizeImages.new(dog_images: dog_images).call
  end
end
