module CreditCardsConcern
  extend ActiveSupport::Concern do
    def credit_card_status
      enum status: [:active, :inactive]
    end
  end
end