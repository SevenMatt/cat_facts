class CreateFacts < ActiveRecord::Migration[8.0]
  def change
    create_table :facts do |t|
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
