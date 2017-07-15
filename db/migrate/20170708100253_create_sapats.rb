class CreateSapats < ActiveRecord::Migration[5.1]
  def change
    create_table :sapats do |t|
      t.string :name
      t.strin :pass
      t.string :age=integer

      t.timestamps
    end
  end
end
