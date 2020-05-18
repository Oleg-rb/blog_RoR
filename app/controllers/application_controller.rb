class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?    # применяем метод фильтрации только в контроллере devise

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up)  << :username    # добавляем значение username в хеш
  end
end
