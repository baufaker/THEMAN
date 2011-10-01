class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :title
      t.string :categoria

      t.timestamps
    end
  end
  
  def down
    drop_table :programas
  end
end
