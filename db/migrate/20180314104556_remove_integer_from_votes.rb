class RemoveIntegerFromVotes < ActiveRecord::Migration[5.1]
  def change
    change_table :votes do |t|
      t.remove :integer
    end
  end
end
