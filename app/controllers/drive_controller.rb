class DriveController < ApplicationController
  def login
    if params[:user].exists?
      session[:drive] = GoogleDrive.login_with_oauth(params[:user], params[:pass])
    end
  end

  def upload(uploadpath, uploadfile, convertTF)
    session[:drive].upload_from_file(uploadpath, uploadfile, :convert => convertTF)
    
  end

  def download(downloadfile, path)
    @filetodownload = session[:drive].file_by_title(downloadfile)
    @filetodownload.download_to_file(path)
  end

  def logout
    session[:drive] = nil
  end
end
