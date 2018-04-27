class StripePayment
  attr_accessor :email, :source, :customer, :amount, :description, :currency
  def initialize(params)
    @email = params[:stripeEmail]
    @source = params[:stripeToken]
    @amount = 1500
    @description = params[:description]
    @currency = params[:currency] || 'usd'
  end

  def process_payment
    binding.pry
    customer = Stripe::Customer.create(email: @email, source: @source)
    binding.pry
    charge = Stripe::Charge.create(customer: customer.id, amount: @amount, description: @description, currency: @currency)

    binding.pry
  rescue Stripe::CardError => e
    flash[:error] = e.message
    # redirect_to
  end
end
