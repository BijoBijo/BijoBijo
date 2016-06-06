class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.integer :status
      t.references :article
      t.timestamps
    end
  end
end
