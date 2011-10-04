class AddCategoria2ToPrograma < ActiveRecord::Migration
  def change
    add_column :programas, :categoria2, :string
  end
end
