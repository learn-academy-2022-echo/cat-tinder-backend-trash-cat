require 'rails_helper'

RSpec.describe Racoon, type: :model do
it 'should validate name' do 
  racoon = Racoon.create
  expect(racoon.errors[:name]).to_not be_empty
  end
  it 'should validate age' do 
    racoon = Racoon.create
    expect(racoon.errors[:age]).to_not be_empty
  end
  it 'should validate hobbies' do 
    racoon = Racoon.create
    expect(racoon.errors[:hobbies]).to_not be_empty
  end
  it 'should validate dislikes' do 
    racoon = Racoon.create
    expect(racoon.errors[:dislikes]).to_not be_empty
  end
  it 'should validate img' do 
    racoon = Racoon.create
    expect(racoon.errors[:img]).to_not be_empty
  end
  it 'hobbies entry needs to be at least 10 characters long' do 
    racoon = Racoon.create
    expect(racoon.errors[:hobbies]).to_not be_empty
  end
  it
end
