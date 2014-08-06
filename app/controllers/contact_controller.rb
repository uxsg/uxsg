class ContactController < ApplicationController
  def show
    @enquiry = Enquiry.new
  end

  def create
    @enquiry = Enquiry.new enquiry_params

    if @enquiry.valid?
      EnquiryMailer.user_enquiry(@enquiry).deliver
      redirect_to contact_url, flash: { success: "Thanks! We have received your enquiry." }
    else
      render action: :show
    end
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :type, :question, :email)
  end
end
