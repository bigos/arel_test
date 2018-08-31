class CreateFTables < ActiveRecord::Migration
  def change
    create_table :f_tables do |t|
      t.integer :df1
      t.integer :df2
      t.float :value

      t.timestamps null: false
    end
  end
end
