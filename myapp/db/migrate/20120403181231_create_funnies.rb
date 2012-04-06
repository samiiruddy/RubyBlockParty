class CreateFunnies < ActiveRecord::Migration
  def change
    create_table :funnies do |t|
      t.string :joke

      t.timestamps
    end
  end
end
