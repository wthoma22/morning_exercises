class TextScanner

  def initialize(file_name)
    @file_name = file_name
  end

    def word_count
      text_file = File.open("alice.txt", "r")
      text_file.split("").map do |txt|
        txt.split(',')
      end

      def most_popular_words

      end

      def longest_word

      end
    end

end

t = TextScanner.new("alice.txt")
t.word_count
