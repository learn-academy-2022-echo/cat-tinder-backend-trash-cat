require 'rails_helper'

RSpec.describe "Racoons", type: :request do
  describe "GET /index" do
    it "get a list of raccoons" do
      Racoon.create(
        name: 'Julius',
        age: 45,
        hobbies: 'Loves To go to church, Ride dirt bikes, and Collect eggs',
        dislikes: 'Dislikes Sinning, Rock Music, and Halloween',
        img:'https://i.pinimg.com/564x/4c/19/ee/4c19ee1534048a8776b7b7121eec09dc.jpg'
      )

      get '/racoons'

      racoon = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(racoon.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a raccoon" do
      racoon_params = {
        racoon: {
          name: 'Julius',
          age: 45,
          hobbies: 'Loves To go to church, Ride dirt bikes, and Collect eggs',
          dislikes: 'Dislikes Sinning, Rock Music, and Halloween',
          img:'https://i.pinimg.com/564x/4c/19/ee/4c19ee1534048a8776b7b7121eec09dc.jpg'
        }
      }

      post '/racoons', params: racoon_params

      expect(response).to have_http_status(200)

      racoon = Racoon.first

      expect(racoon.name). to eq('Julius')
    end
  end
end
