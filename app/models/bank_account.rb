class BankAccount < ApplicationRecord
  belongs_to :user
  has_many :account_transactions
  before_validation :load_defaults

  validates :user, presence: true
  validates :account_number, presence: true, uniqueness: true
  validates :balance, presence: true, numericality: true



  def load_defaults
      if self.new_record?
        self.balance = 0.00
      end
  end

  def to_s
    account_number
  end
end
