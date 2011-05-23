class CreateMsgdata < ActiveRecord::Migration
  def self.up
    create_table :msgdata do |t|
      t.datetime :createdate
      t.string :profile_image
      t.string :from_user_id
      t.string :id_str
      t.string :from_user
      t.text :message
      t.string :metadata
      t.string :id
      t.string :language_cd
      t.text :source_url

      t.timestamps
    end
  end

  def self.down
    drop_table :msgdata
  end
end
