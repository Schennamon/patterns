class ConcreteProductB2 < AbstractProductB
  # @return [String]
  def useful_function_b
    'The result of the product B2'
  end

  # Продукт B2 может корректно работать только с Продуктом A2. Тем не менее, он
  # принимает любой экземпляр Абстрактного Продукта А в качестве аргумента.
  #
  # @param [AbstractProductA] collaborator
  def another_useful_function_b(collaborator)
    result = collaborator.useful_function_a
    "The result of the B2 collaborating with the #{result}"
  end
end