class Booking

  include DataMapper::Resource

  belongs_to :pad
  belongs_to :user

  property :id, Serial
  property :date, String

end
