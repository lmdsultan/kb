class CreateIncidents < ActiveRecord::Migration[6.0]
  def change
    create_table :incidents do |t|
      t.string :issue
      t.references :system, null: false, foreign_key: true
      t.text :solution

      t.timestamps
    end
  end
end
