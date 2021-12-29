# Интерфейс Абстрактной Фабрики объявляет набор методов, которые возвращают
# различные абстрактные продукты. Эти продукты называются семейством и связаны
# темой или концепцией высокого уровня. Продукты одного семейства обычно могут
# взаимодействовать между собой. Семейство продуктов может иметь несколько
# вариаций, но продукты одной вариации несовместимы с продуктами другой.
#
# @abstract
class AbstractFactory
  # @abstract
  def create_product_a
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # @abstract
  def create_product_b
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end