class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "supreme", password: "hemantsharma"
  # layout false
end
