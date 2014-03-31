require 'spec_helper'

describe "Drivelogins" do
  describe "GET /drive/login" do
    it "logs in to Drive" do
      login = GoogleDrive.login("testermctestingstons@gmail.com", "dropshare")
      puts login
    end
  end
end
