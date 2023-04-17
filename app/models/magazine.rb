class Magazine
  attr_accessor :name, :category
  @@magazines = []

  def initialize(name:, category:)
    @name = name
    @category = category
    @@magazines << self
  end

  def self.all
    @@magazines
  end

  def contributors
    articles.map(&:author).uniq
  end

  def articles
    Article.all.select { |article| article.magazine == self }
  end

  
  def self.find_by_name(name)
    all.find { |magazine| magazine.name == name }
  end

  def article_titles
    articles.map(&:title)
  end

  def contributing_authors
    articles.map(&:author).uniq
  end
end