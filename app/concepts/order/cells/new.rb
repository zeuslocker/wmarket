require 'securerandom'
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

    def main_image
      model.product.attachments.first.value
    end

    def product_images
      @product_images ||= model.product.attachments.map(&:value)
    end

    def qiwi_label
      SecureRandom.hex(6)
    end

    def product_code
      params[:product_id][0, 8].tr('-', '')
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
