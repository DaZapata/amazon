class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true, numericality: {only_integer: true, greater_than: 0 }
  validate :product_present
  validate :order_present

  before_save :finalize

  def unit_decimal
    if persisted?
      self[:unit_decimal]
    else
      product.price
    end
  end

  def total_price
    unit_decimal * quantity
  end

  private
  def product_present
    if product.nil?
      errors.add(:product, "Is not valid or is not active")
    end
  end
  
  def order_present
    if order.nil?
      errors.add(:order, "Is not valid or is not active")
    end
  end

  def finalize
    self[:unit_decimal] = unit_decimal
    self[:total_price] = quantity * self[:unit_decimal]
  end
end
