class CreateUsers < ActiveRecord::Migration
  def up
    create_table 'users' do |t|
      t.string   "name"
      t.string   "email"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "facebook"
      t.string   "uid"
      t.string   "provider"
      t.string   "oauth_token"
      t.datetime "oauth_expires_at"
    end
  end
  
  
  def down
    drop_table 'users'
  end
  
end
