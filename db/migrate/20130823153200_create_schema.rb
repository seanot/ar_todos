class CreateSchema < ActiveRecord::Migration
  def change
    create_table :lists do |list|
      list.string :name
      list.timestamps
    end
    #add_index :lists, :name, :unique => true

    create_table :tasks do |task|
      task.integer :list_id
      task.string :description
      task.integer :status
      task.timestamps
    end
    #add_index :tasks, :l
  end
end  
