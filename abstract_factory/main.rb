require_relative 'factory/abstract_factory'
require_relative 'factory/concrete_factory1'
require_relative 'factory/concrete_factory2'

require_relative 'product_a/abstract_product_a'
require_relative 'product_a/concrete_product_a1'
require_relative 'product_a/concrete_product_a2'

require_relative 'product_b/abstract_product_b'
require_relative 'product_b/concrete_product_b1'
require_relative 'product_b/concrete_product_b2'

# Клиентский код работает с фабриками и продуктами только через абстрактные
# типы: Абстрактная Фабрика и Абстрактный Продукт. Это позволяет передавать
# любой подкласс фабрики или продукта клиентскому коду, не нарушая его.
#
# @param [AbstractFactory] factory
def client_code(factory)
  product_a = factory.create_product_a
  product_b = factory.create_product_b

  puts product_b.useful_function_b.to_s
  puts product_b.another_useful_function_b(product_a).to_s
end

# Клиентский код может работать с любым конкретным классом фабрики.
puts 'Client: Testing client code with the first factory type:'
client_code(ConcreteFactory1.new)

puts "\n"

puts 'Client: Testing the same client code with the second factory type:'
client_code(ConcreteFactory2.new)
