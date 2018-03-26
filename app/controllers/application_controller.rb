class ApplicationController < ActionController::Base
  before_action :set_i18n_locale

  protect_from_forgery with: :exception

  def set_i18n_locale
    if params[:locale]
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = params[:locale] + t("is_not_supported")
      end
    end
  end

  def default_url_options
    {locale: I18n.locale}
  end
end
