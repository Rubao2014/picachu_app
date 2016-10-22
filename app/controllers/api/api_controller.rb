class Api::ApiController < ActionController::Base
# Authentication and other filters implementation.
  private
 
  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      @Cadastro = Cadastro.where(api_key: token).first
    end
  end

end