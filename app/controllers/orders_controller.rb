class OrdersController < ApplicationController
  cell_path 'order'

  def new
    run Order::New
    render_view :new
  end

  def create
    if simple_captcha_valid?
      run Order::Create do |result|
        return redirect_to root_path, notice: I18n.t('order.success')
      end
      return redirect_to root_path, alert: AlertsViewHandler.call(result)
    else
      return redirect_to root_path, alert: AlertsViewHandler.call(alerts: [I18n.t('captcha.failure')])
    end
  end
end
