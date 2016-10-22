class Api::V1::EventsController < Api::ApiController 
  respond_to :json
  before_action :authenticate
  #before_action :destroy_session

	#rescue_from ActiveRecord::RecordNotFound, with: :not_found

  	#def not_found
    #  	render :json => {:error => "not-found"}.to_json, :status => 404
  	#end	

	#def destroy_session
	#	request.session_options[:skip] = true
	#end
 
  def index
    @events = Event.all
    render json: @events
  end
end
