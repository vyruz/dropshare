require 'spec_helper'

describe DriveController do

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'upload'" do
    it "returns http success" do
      get 'upload'
      response.should be_success
    end
  end

  describe "GET 'download'" do
    it "returns http success" do
      get 'download'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    it "returns http success" do
      get 'logout'
      response.should be_success
    end
  end

end
