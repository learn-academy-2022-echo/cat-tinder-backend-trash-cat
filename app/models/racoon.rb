class Racoon < ApplicationRecord
    validates :name, :age, :hobbies, :dislikes, :img, presence: true
    validates :hobbies, length: { minimum: 10 }
end
