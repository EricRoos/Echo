class CreateEchoCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :echo_centers do |t|

      t.timestamps
    end
  end
end
