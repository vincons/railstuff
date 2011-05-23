class AlterPosts < ActiveRecord::Migration
  def self.up
      add_column :msgdata ,:score, :float
  end

  def self.down
  end
end
