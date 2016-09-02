module ApplicationHelper
  def set_locale(lang)
    I18n.locale = lang
  end
end
