require 'rails_helper'

RSpec.describe Api::V1::DogsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/dogs').to route_to('api/v1/dogs#index')
    end

    it 'routes to #show' do
      expect(get: '/api/v1/dogs/1').to route_to('api/v1/dogs#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/api/v1/dogs').to route_to('api/v1/dogs#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/api/v1/dogs/1').to route_to('api/v1/dogs#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/v1/dogs/1').to route_to('api/v1/dogs#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/dogs/1').to route_to('api/v1/dogs#destroy', id: '1')
    end
  end
end
