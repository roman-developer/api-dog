
class GetApiImages 
  def initialize(count:)
    @count = count
  end

  def call
    dogs_ary = []

    (1..@count).each do
      response = Faraday.get(ENV['API_DOGS_URL'])
      
      if response.status == 200
        image = JSON.parse(response.body)["message"]
        dogs_ary << {
                      image: image,
                      name: image.match(/breeds\/(\w+)/)[1]
                    } if image.present?
      end
    end


    dogs_ary
  end
end