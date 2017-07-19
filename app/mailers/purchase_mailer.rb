class PurchaseMailer < ActionMailer::Base
  layout "purchase_mailer"
  default from: "Chris Zev <christopher@codelinedesign.com>"
  def purchase_receipt purchase
    @purchase = purchase
    mail to: purchase.email, subject: "Thanks for choosing Codeline!"
  end
end
