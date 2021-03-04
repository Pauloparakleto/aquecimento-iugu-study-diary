class StudyItem
  attr_reader :id, :title, :category

  @@next_id = 1
  @@study_items = []

  def initialize(title:, category:)
    @id = @@next_id
    @title = title
    @category = category

    @@next_id += 1
    @@study_items << self
  end

  def include?(query)
    title.include?(query) || category.include?(query)
  end

  def to_s
    "##{id} - #{title} - #{category}"
  end

  def self.register
    print 'Digite o título do seu item de estudo: '
    title = gets.chomp.downcase
    print 'Digite a categoria do seu item de estudo: '
    category = gets.chomp.downcase
    puts "Item '#{title}' da categoria '#{category}' cadastrado com sucesso!"
    new(title: title, category: category)
  end

  def self.all
    return 'Nenhum item encontrado' if @@study_items.empty?
    @@study_items
  end

  def self.search
    if @@study_items.empty?
      return puts "Adicione items à lista de estudos primeiro."
    end
    print 'Digite uma palavra para procurar: '
    term = gets.chomp
    found_items = StudyItem.all.filter do |item|
      item.include?(term)
    end
    return "Item não encontrado." if found_items.empty?
    found_items
  end

  #def self.print
  #end

  def self.delete
    puts StudyItem.all
    if @@study_items.empty?
      return puts "Adicione items à lista de estudos primeiro."
    end
    print 'Digite o id do Item de estudo que você quer apagar: '
    id = gets.to_i
    study_item = StudyItem.all.detect do |study_item| 
      study_item.id == id
    end
    return puts "Este item não está na lista acima!" if study_item.nil?
    StudyItem.all.delete(study_item)
    puts "Item deletado com sucesso."
  end
end