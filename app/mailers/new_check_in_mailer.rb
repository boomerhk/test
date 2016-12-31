class NewCheckInMailer < ApplicationMailer
  def notify_check_in(check_in_out)
    @check_in_out = check_in_out
    attachments.inline[@check_in_out.check_in_no.to_s+".png"] = File.read("app/assets/images/Check_in_out_QrCode/"+@check_in_out.check_in_no.to_s+".png")
    mail(to: @check_in_out.guest_email, subject: "Check in request for Data Center" )
  end
end
