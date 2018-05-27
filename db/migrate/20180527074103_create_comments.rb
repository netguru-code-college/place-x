class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :place, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
