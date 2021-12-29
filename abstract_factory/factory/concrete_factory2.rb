# Каждая Конкретная Фабрика имеет соответствующую вариацию продукта.
class ConcreteFactory2 < AbstractFactory
  def create_product_a
    ConcreteProductA2.new
  end

  def create_product_b
    ConcreteProductB2.new
  end
end