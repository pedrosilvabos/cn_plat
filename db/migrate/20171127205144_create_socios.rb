class CreateSocios < ActiveRecord::Migration[5.1]
  def change
    create_table :socios do |t|
      t.string :nome
      t.string :morada
      t.string :email

      t.timestamps
    end
  end
end
