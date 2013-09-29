class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
    	t.string :name, :null => false
			t.polygon :polygon, :geographic => true, :null => false
			t.text :description
      t.timestamps
    end
  end
end
