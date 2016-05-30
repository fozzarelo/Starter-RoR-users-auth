class User < ActiveRecord::Base

  validates :email, presence: true, uniqueness: true
  # TODO enforce later
  #, format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  has_secure_password

  has_many :auctions, dependent: :destroy

  has_many :bids, dependent: :destroy
  has_many :biddings, through: :bids, source: :auctions

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end

end
