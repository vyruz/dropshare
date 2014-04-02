module GoogleHelper
  def login_url
    redirect_uri = ApplicationController::BASEURL + '/oauth2callback'
    url =
      'https://accounts.google.com/o/oauth2/auth?' +
        'scope='+
        ApplicationController::OAUTH_SCOPE + '&' +
        'redirect_uri='+ redirect_uri + '&' +
        'response_type=code&' + 
        'client_id=' +
        ApplicationController::CLIENT_ID + '&' + 
        'access_type=offline'

    URI.parse(URI.encode(url.strip))
  end
  def get_tokens(code)
    params['code'] = code
    params['client_id'] = ApplicationController::CLIENT_ID
    params['client_secret'] = ApplicationController::CLIENT_SECRET
    params['redirect_uri'] = ApplicationController::BASEURL + '/oauth2callback'
    params['grant_type'] = 'authorization_code'
    # Initialize HTTP library
    url = URI.parse('https://accounts.google.com')
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE #use verify_peer
    request = Net::HTTP::Post.new('/o/oauth2/token')
    request.set_form_data(params)
    response = http.request(request)
    JSON.parse(response.body)
  end
  
  def call_api(path, access_token)
    url = URI.parse('https://www.googleapis.com')
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE #user verify_peer

    #Make request to API
    request = Net::HTTP::Get.new(path)
    request['Authorization'] = 'Bearer ' + access_token
    response = http.request(request)
    JSON.parse(response.body)
  end
end
