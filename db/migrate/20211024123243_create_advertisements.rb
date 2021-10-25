class CreateAdvertisements < ActiveRecord::Migration[6.1]
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :desc
      t.string :phone
      t.string :others

      t.timestamps
    end
  end
end
