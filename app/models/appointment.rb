class Appointment
  include ActiveModel::Model

  attr_accessor :client_name

  validates :client_name, presence: true, length: {maximum: 75, minimum: 3}
  validates :client_phone, phone: true

  def client_phone
    return unless @client_phone.present?
    ::Phonelib.parse(@client_phone).international
  end

  def client_phone=(value)
    @client_phone = ::Phonelib.parse(value.to_s).to_s
  end
end
