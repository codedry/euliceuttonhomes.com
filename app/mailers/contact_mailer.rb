class ContactMailer < ActionMailer::Base
  default from: "juicycode.mailer@gmail.com"

  TO = %w[
    eulice.uttonhomes@cwjamaica.com
    fay.petgrave@cwjamaica.com
  ]

  BCC = %w[
    petgrave@cwjamaica.com
    marcel.morgan@codedry.com
  ]

  def contact_received(contact)
    @contact = contact
    mail to: TO, bcc: BCC, subject: "Contact received from #{@contact.name}"
  end
end
