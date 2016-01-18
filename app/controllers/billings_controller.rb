class BillingsController < ApplicationController

   def index
    @billings = Billing.all
end

   def new
    @billings =Message.new
  end

  def create
    @billing = billing.new(billing_params)
  if @billing.save
    redirect_to '/billing'
  else
    render 'new'
  end
end

  private
  def billing_params
    params.require(:Billing).permit(:content)
  end
end


