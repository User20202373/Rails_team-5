class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # 다음 줄을 추가하여 특정 컨트롤러의 CSRF 보호를 비활성화
  skip_before_action :verify_authenticity_token, if: -> { Rails.env.development? }
end
