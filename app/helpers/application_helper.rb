module ApplicationHelper
	def full_title page_title = ""
		base_title = "Young Calsual"
		if page_title.empty?
			base_title
		else
			"#{page_title} | #{base_title}"
		end
	end

  def current_order
    session[:order_id] ? Order.find_by(id: session[:order_id]) : Order.create
  end
end
