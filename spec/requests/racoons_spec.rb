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
  it 'cannot be created without a name' do
    racoon_params = {
      racoon: {
        age: 1,
        hobbies: 'Likes long walks on the curb',
        dislikes: 'Dislikes Sinning, Rock Music, and Halloween',
        img:'https://i.pinimg.com/564x/4c/19/ee/4c19ee1534048a8776b7b7121eec09dc.jpg'
      }
    }

    post '/racoons', params: racoon_params
    expect(response).to have_http_status(422)
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end
  it 'cannot be created without an age' do
    racoon_params = {
      racoon: {
        name: 'Boba',
        hobbies: 'Likes long walks on the curb',
        dislikes: 'Dislikes Sinning, Rock Music, and Halloween',
        img:'https://i.pinimg.com/564x/4c/19/ee/4c19ee1534048a8776b7b7121eec09dc.jpg'
      }
    }

    post '/racoons', params: racoon_params
    expect(response).to have_http_status(422)
    json = JSON.parse(response.body)
    expect(json['age']).to include "can't be blank"
  end
  it 'cannot be created without hobbies' do
    racoon_params = {
      racoon: {
        name: 'Boba',
        age: 1,
        dislikes: 'Dislikes Sinning, Rock Music, and Halloween',
        img:'https://i.pinimg.com/564x/4c/19/ee/4c19ee1534048a8776b7b7121eec09dc.jpg'
      }
    }

    post '/racoons', params: racoon_params
    expect(response).to have_http_status(422)
    json = JSON.parse(response.body)
    expect(json['hobbies']).to include "can't be blank"
  end
  it 'cannot be created without dislikes' do
    racoon_params = {
      racoon: {
        name: 'Boba',
        age: 1,
        hobbies: 'Likes long walks on the curb',
        img:'https://i.pinimg.com/564x/4c/19/ee/4c19ee1534048a8776b7b7121eec09dc.jpg'
      }
    }

    post '/racoons', params: racoon_params
    expect(response).to have_http_status(422)
    json = JSON.parse(response.body)
    expect(json['dislikes']).to include "can't be blank"
  end
  it 'cannot be created without img' do
    racoon_params = {
      racoon: {
        name: 'Boba',
        age: 1,
        hobbies: 'Likes long walks on the curb',
        dislikes: 'Dislikes Sinning, Rock Music, and Halloween'
      }
    }

    post '/racoons', params: racoon_params
    expect(response).to have_http_status(422)
    json = JSON.parse(response.body)
    expect(json['img']).to include "can't be blank"
  end
end
