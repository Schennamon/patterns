# Каждый отдельный продукт семейства продуктов должен иметь базовый интерфейс.
# Все вариации продукта должны реализовывать этот интерфейс.
#
# @abstract
class AbstractProductA
  # @abstract
  #
  # @return [String]
  def useful_function_a
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end