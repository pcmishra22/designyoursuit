class CreateSuitdesigns < ActiveRecord::Migration[6.1]
  def change
    create_table :suitdesigns do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
