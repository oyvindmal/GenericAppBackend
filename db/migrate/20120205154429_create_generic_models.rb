class CreateGenericModels < ActiveRecord::Migration
  def change
    create_table :generic_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
