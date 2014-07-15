class EnquiryMailer < ActionMailer::Base
  default from: "UXSG Contact Form <webmaster@uxsg.org>"

  def user_enquiry(enquiry)
    @enquiry = enquiry
    mail(to: "webmaster@uxsg.org", subject: "#{enquiry.name} would like to #{enquiry.type}")
  end
end
