module Api
  module V1
    class ApiController < ActionController::API
      
      def response_data(data: nil, message: nil, status: nil, error: nil, disabled: false)
        result = Hash.new
        result[:data] = data
        result[:message] = message
        result[:status] = status
        result[:error] = error
        render json: result, status: status
      end

      def throw_unauthorised(message: "You are not authorised.")
        return response_data(data: nil, message: message, status: 401, error: 'unauthorised')
      end

      def throw_login(message: "You need to login.")
        return response_data(data: nil, message: message, status: 101, error: 'login required')
      end

      def throw_forbidden(message: "Forbidden.")
        return response_data(data: nil, message: message, status: 403, error: 'forbidden')
      end

      def throw_not_found(message: "Not Found.")
        return response_data(data: nil, message: message, status: 404, error: 'not found')
      end

      def throw_token_expired(message: "You are not authorised.")
        return response_data(data: nil, message: message, status: 401, error: 'token expired')
      end

      def throw_invalid_token(message: "You are not authorised.")
        return response_data(data: nil, message: message, status: 401, error: 'invalid token')
      end

      def throw_less_parameters(message: "Sufficient parameters are not provided.")
        return response_data(data: nil, message: message, status: 422, error: 'insufficient parameters')
      end

      def throw_unprocessable(message: "Insufficient parameters or Incorrect parameters.")
        return response_data(data: nil, message: message, status: 422, error: 'unprocessable')
      end

      def throw_internal_server_error(message: "Internal Server Error.")
        return response_data(data: nil, message: message, status: 500, error: 'internal server error')
      end

      def render_success(data: {}, message: "Successful Request.")
        return response_data(data: data, message: message, status: 200, error: nil)
      end

    end
  end
end