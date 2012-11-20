module Spree
  class InvoiceController < BaseController
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404

    def print
      params[:template] ||= "invoice"
      template = params[:template] 
      @order = Spree::Order.find_by_number(params[:id])
      @order ||= current_order
      if @order.payment.nil? || !@order.payment.completed?
        flash[:notice] = I18n.(:invoice_not_printable).html_safe
        return redirect_to account_path 
      end
      # if @order && ( @order.user == try_spree_current_user || @order == current_order) && @order.state == 'completed'
      if @order && ( @order.user == try_spree_current_user || @order == current_order) && @order.state == 'complete'
        render "spree/invoice/#{template}" , :layout => false and return
      end
      render :status => 404
    end
  end
end
