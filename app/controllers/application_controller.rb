class ApplicationController < ActionController::API

  # def encode_token(payload)
  #   token = JWT.encode(payload, ENV['SECRET'])
  # end

  # def authHeader 
  #   auth_header = request.headers['Authorization']
  # end
  
  # def decode_token
  #   token = authHeader.split("")[1]
  #   decoded_token = JWT.decode(token, ENV['SECRET'], true, {algorithm: 'HS256'})
  # end

  # def current_user
  #   user_id = decode_token[0]['user_id']
  #   user = User.find(user_id)
  # end

end
