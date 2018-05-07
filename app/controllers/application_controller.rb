class ApplicationController < ActionController::Base
  before_action :set_i18n_locale
  protect_from_forgery with: :exception
  protect_from_forgery with: :exception
  include SessionHelper
  include ApplicationHelper
  def set_i18n_locale
    if params[:locale]
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = params[:locale] + t("is_not_supported")
          I18n.locale = params[:locale]
      end
    end
  end

  def default_url_options
    {locale: I18n.locale}
  end
end
