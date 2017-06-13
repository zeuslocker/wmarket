module Product::Cell
  class BuyForm < Trailblazer::Cell
    include ::ActionView::Helpers::FormOptionsHelper

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

    def city_region_tag
      select_tag :region, options_for_select([[I18n.t('form.region.anyone'), 0],
                                              [I18n.t('form.region.galich'), 1],
                                              [I18n.t('form.region.frankovy'), 2],
                                              [I18n.t('form.region.sihiv'), 3],
                                              [I18n.t('form.region.livan'), 4],
                                              [I18n.t('form.region.lichakiv'), 5],
                                              [I18n.t('form.region.shechenkiv'), 6]]), required: true, class: 'form-control'
    end
  end
end
