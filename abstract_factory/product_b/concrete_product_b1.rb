# Конкретные Продукты создаются соответствующими Конкретными Фабриками.
class ConcreteProductB1 < AbstractProductB
  # @return [String]
  def useful_function_b
    'The result of the product B1'
  end

  # Продукт B1 может корректно работать только с Продуктом A1. Тем не менее, он
  # принимает любой экземпляр Абстрактного Продукта А в качестве аргумента.
  #
  # @param [AbstractProductA] collaborator
  #
  # @return [String]
  def another_useful_function_b(collaborator)
    result = collaborator.useful_function_a
    "The result of the B1 collaborating with the #{result}"
  end
end