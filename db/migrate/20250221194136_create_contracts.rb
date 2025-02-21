class CreateContracts < ActiveRecord::Migration[8.0]
  def change
    create_table :contracts do |t|
      t.references :company, null: false, foreign_key: true
      t.belongs_to :contractable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
