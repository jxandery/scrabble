class CreateEvaluates < ActiveRecord::Migration
  def change
    create_table :evaluates do |t|
      t.string :words

      t.timestamps
    end
  end
end
