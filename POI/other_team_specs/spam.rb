class CommentList
  attr_accessor :comments
  def initialize
    @comments = []
  end

  def add_comments(comment)
    @comments << comment
  end

  def has_spam(string1, string2)
    if string1.scan(string2).count == 2
      "#{string1}8====D SPAM-VIAGRA-ALERT 8====D"
    end
  end
end