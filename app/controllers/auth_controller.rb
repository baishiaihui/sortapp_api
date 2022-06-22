class AuthController < ApplicationController
  module Api
    module V1       

        def login
          user = User.find_by(uid: params[:uid])
          if user && user.authenticate(params[:password])
            payload = {user_id: user.id,uid: user.uid}
            token = encode_token(payload)
            render json: {jwt: token,success: "Welcome back, #{user.uid}"}
          else
            response_unauthorized
          end
        end

        def auto_login
          if session_user 
            render json: session_user
          else
            render json: {errors: "No user Logged In"}
          end
        end
    end
  end
end
