class AddAdminUser < ActiveRecord::Migration
  def up
  	User.create(:username => "Admin", :password => "><MNB", :password_confirmation => "><MNB")
  end

  def down
  end
end
