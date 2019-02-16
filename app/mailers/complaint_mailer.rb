class ComplaintMailer < ApplicationMailer
  default from: 'notifications@example.com'
  def send_email
    @compalint = Complaint.where(id: params[:complaint][:id]).first
    @mechenic = Mechenic.where(mec_name: @compalint.mechenic).first
    mail(to: @mechenic.email, subject: @compalint.fault)
  end
end
