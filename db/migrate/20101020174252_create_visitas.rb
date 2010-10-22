class CreateVisitas < ActiveRecord::Migration
  def self.up
    create_table :visitas do |t|
      t.string :pais
      t.string :ip
	  t.references :link

      t.timestamps
    end
  end

  def self.down
    drop_table :visitas
  end
end
