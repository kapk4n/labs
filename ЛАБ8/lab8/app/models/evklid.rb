class Evklid < ApplicationRecord
  before_save :set_twins

  def decoded_twins
    ActiveSupport::JSON.decode(result)
  end

  private

  def set_twins
    self.result = ActiveSupport::JSON.encode(calculate_twins)
  end

  def calculate_twins
    arr = []
    n1 = num1.to_i
    n2 = num2.to_i
    while [n1, n2].min != 0
      if n1 < n2
        n2 -= n1
      else
        n1 -= n2
      end
      arr.push([n1, n2])
    end
    return arr unless arr.length.zero?
  end
end
