class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :name
      t.boolean :bebida

      t.timestamps
    end
  end
end
