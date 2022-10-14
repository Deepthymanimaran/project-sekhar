class ApplicationController < ActionController::API
    attr_reader :current_user

    def authenticate_request!
        token = request.headers['HTTP_AUTHENTICATION_TOKEN']
        render json: {success: false, message: "Invalid authentication"}
        decode = AuthToken.decode(token)
        @current_user = User.find_by(id: decode["user_id"])
        true
end

     def success_response
        render json: {success: true,data: data,}
     end
    end
