# Конкретная Фабрика производит семейство продуктов одной вариации. Фабрика
# гарантирует совместимость полученных продуктов. Обратите внимание, что
# сигнатуры методов Конкретной Фабрики возвращают абстрактный продукт, в то
# время как внутри метода создается экземпляр конкретного продукта.
class ConcreteFactory1 < AbstractFactory
  def create_product_a
    ConcreteProductA1.new
  end

  def create_product_b
    ConcreteProductB1.new
  end
end