class CreateEmos < ActiveRecord::Migration
  def self.up
    create_table :emos do |t|
      t.string :word
      t.float :score

      t.timestamps
    end
  end

  def self.down
    drop_table :emos
  end
end
