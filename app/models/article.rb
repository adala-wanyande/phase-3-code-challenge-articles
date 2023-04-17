class Article
    attr_reader :title, :author, :magazine
    @@articles = []

    def initialize(title:, author:, magazine:)
        @title = title
        @author = author
        @magazine = magazine
    end

    def self.all
        @@articles
    end

    def author
        @author
    end
end
