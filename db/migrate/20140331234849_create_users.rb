class CreateUsers < ActiveRecord::Migration
  def up
    create_table 'users' do |t|
      t.string   "name"
      t.string   "email"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "facebook"
      t.string   "uid"
    end
  end
  
  
  def down
    drop_table 'users'
  end
  
end
