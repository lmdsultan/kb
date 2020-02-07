class CreateSystems < ActiveRecord::Migration[6.0]
  def change
    create_table :systems do |t|
      t.string :name, null: false, default: ""
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
