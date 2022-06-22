class ApplicationController < ActionController::API

    # 401 Unauthorized
    def response_unauthorized
        render status: 401, json: { status: 401, message: 'Unauthorized' }
    end

    #tokenの生成
    def encode_token(payload)
        JWT.encode(payload,'my_secret_key','HS256')
    end

    # decodeトークンの値検証
    def session_user
        decoded_hash = decoded_token
        if !decoded_hash.empty?
            user_id = decoded_hash[0]['user_id']
            @user = User.find_by(id: user_id)
        else 
            nil
        end
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'my_secret', true,algorithm: 'HS256')
            rescue JWT::DecodeError
                []
            end
        end
    end

    def auth_header
        request.headers['Authorization']
    end 
end
