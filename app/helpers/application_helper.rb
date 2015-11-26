module ApplicationHelper
  def shallow_args(parent, child)
    params[:action] == 'new' ? [parent, child] : child
  end
end
