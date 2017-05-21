class AlertsViewHandler
  attr_reader :result, :alerts

  class << self
    def call(result = {}, alerts: [])
      new(result, alerts).perform
    end
  end

  def initialize(result, alerts)
    @result = result
    @alerts = alerts
  end

  def perform
    setup_alerts!
  end

  def setup_alerts!
    (step_errors | contract_errors | alerts).inject('') do |acc, elem|
      acc << elem + ' '
    end.chop
  end

  private

  def contract_errors
    result['contract.default']&.errors&.full_messages || []
  end

  def step_errors
    result['step.errors'] || []
  end
end
