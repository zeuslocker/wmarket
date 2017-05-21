module TrailblazerHelpers::SimpleCaptcha
  def show_simple_captcha(options={})
    key = simple_captcha_key(options[:object])
    options[:field_value] = set_simple_captcha_data(key, options)

    defaults = {
       :image => simple_captcha_image(key, options),
       :label => options[:label] || I18n.t('simple_captcha.label'),
       :field => simple_captcha_field(options)
       }
    concept('captcha/cell/simple_captcha', nil, context: {simple_captcha_options: defaults}).show
  end
end
