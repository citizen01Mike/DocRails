class CreateBreeds < ActiveRecord::Migration[7.1]
  def change
    create_table :breeds do |t|
      t.timestamps(null: false )     
      t.string :name, null: false, default:""
    end

    add_index(:breeds, :name)
  end
end
