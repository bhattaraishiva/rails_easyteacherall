class CreateBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :batches do |t|
      t.string :batchname
      t.text :batchdescription

      t.timestamps
    end
  end
end
