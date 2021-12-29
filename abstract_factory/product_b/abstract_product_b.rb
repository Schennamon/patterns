# Базовый интерфейс другого продукта. Все продукты могут взаимодействовать друг
# с другом, но правильное взаимодействие возможно только между продуктами одной
# и той же конкретной вариации.
#
# @abstract
class AbstractProductB
  # Продукт B способен работать самостоятельно...
  #
  # @abstract
  def useful_function_b
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # ...а также взаимодействовать с Продуктами A той же вариации.
  #
  # Абстрактная Фабрика гарантирует, что все продукты, которые она создает,
  # имеют одинаковую вариацию и, следовательно, совместимы.
  #
  # @abstract
  #
  # @param [AbstractProductA] collaborator
  def another_useful_function_b(_collaborator)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end