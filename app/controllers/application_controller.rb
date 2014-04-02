class ApplicationController < ActionController::Base
  include GoogleHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  CLIENT_ID = '498744125514-91ht0e1p2t0dvbk5r9epgblcbnitvp26.apps.googleusercontent.com'
  CLIENT_SECRET = 'A-O4yKQ-qPErjayyvfyiPYXt'
  OAUTH_SCOPE = 'https://www.googleapis.com/auth/drive'
  REDIRECT_URI = 'http://localhost:3000/oauth2callback'
  BASEURL = 'http://localhost:3000'
end
