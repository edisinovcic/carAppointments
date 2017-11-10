module UsersConcern
  def set_locale(user)
    I18n.locale = user.language || I18n.default_locale
  end
end