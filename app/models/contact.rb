class Contact < ActiveRecord::Base

  validates_presence_of :name, :subject, :message
  validates :email, email: true, allow_blank: true

  validate :phone_or_email_required

  def phone_or_email_required
    if phone.blank? && email.blank?
      errors.add :base, "Please provide a contact (phone or email)"
    end
  end
end
