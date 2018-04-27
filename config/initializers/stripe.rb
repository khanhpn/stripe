Rails.configuration.stripe = {
  :publishable_key => Rails.application.credentials.stripe_publishable_key,
  :secret_key      => Rails.application.credentials.stripe_secret_key
}

Stripe.api_key = Rails.application.credentials.stripe_secret_key
