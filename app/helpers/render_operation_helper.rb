module RenderOperationHelper
  def render_view(action, options = {})
    operation_result = options.fetch(:result, (result || {}))
    page_layout = options.fetch(:layout, true)
    flash_render(options)
    render html: concept("#{cell_path}/cell/#{action}",
                         operation_result['model'],
                         cell_options(options)), layout: page_layout
  end

  def cell_options(options)
    {
      context: options.fetch(:context, nil),
    }.merge(options.fetch(:options, {})).compact
  end
  def flash_render(options)
    flash.now.notice = options[:notice] if options[:notice]
    flash.now.alert = options[:alert] if options[:alert]
    flash.now.alert = options[:error] if options[:error]
  end

  def cell_path
    self.class.instance_variable_get('@path') || params['controller'].singularize
  end
end
