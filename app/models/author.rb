class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select { |article| article.author == self }
  end

  def magazines
    articles.map(&:magazine).uniq
  end

  def add_article(title, magazine)
    Article.new(title: title, author: self, magazine: magazine)
  end

  def topic_areas
    articles.map(&:category).uniq
  end
end
