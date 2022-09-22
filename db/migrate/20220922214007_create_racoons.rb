class CreateRacoons < ActiveRecord::Migration[7.0]
  def change
    create_table :racoons do |t|
      t.string :name
      t.integer :age
      t.text :hobbies
      t.text :dislikes
      t.text :img

      t.timestamps
    end
  end
end
