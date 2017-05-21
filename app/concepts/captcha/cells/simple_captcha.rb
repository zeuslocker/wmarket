module Captcha::Cell
  class SimpleCaptcha < Trailblazer::Cell
    include ::SimpleCaptcha::ViewHelper

    def simple_captcha_my
      @simple_captcha_my ||= simple_captcha_options.merge(context[:simple_captcha_options])
    end
  end
end
