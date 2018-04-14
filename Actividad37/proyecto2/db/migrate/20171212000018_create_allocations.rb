class CreateAllocations < ActiveRecord::Migration[5.1]
  def change
    create_table :allocations do |t|

      t.timestamps
    end
  end
end
