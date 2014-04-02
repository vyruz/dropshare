class DriveController < ApplicationController
  def login(username, password)
    session[:drive] = GoogleDrive.login(username, password)
    redirect_to root_url
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
    redirect_to root_url
  end
end
