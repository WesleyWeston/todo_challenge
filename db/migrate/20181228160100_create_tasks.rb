class CreateTasks < ActiveRecord::Migration[5.0]
	def change
    create_table :tasks do |t|
      t.integer :songnumb
      t.string :song
      t.boolean :status , default: false
    end
  end
end