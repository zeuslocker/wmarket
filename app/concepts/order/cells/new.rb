require_relative '../../../trailblazer_helpers/simple_captcha'

module Order::Cell
  class New < Trailblazer::Cell
    include ::ActionView::Helpers::FormOptionsHelper
    include ::SimpleCaptcha::ViewHelper
    include ::TrailblazerHelpers::SimpleCaptcha

    property :avatar, :title, :price

    def show
      render :form
    end

    def pay_title
      title[0, 18] + '...'
    end

    def city_region_tag(f)
      f.select(:region, options_for_select([[I18n.t('form.region.anyone'), 0],
                                              [I18n.t('form.region.galich'), 1],
                                              [I18n.t('form.region.frankovy'), 2],
                                              [I18n.t('form.region.sihiv'), 3],
                                              [I18n.t('form.region.livan'), 4],
                                              [I18n.t('form.region.lichakiv'), 5],
                                              [I18n.t('form.region.shechenkiv'), 6]]),{},
                       {class: 'form-control'})
    end
  end
end
