module PostsHelper

  def summarize(text)
    summary = text.split(/^(.*?[.?!])\s+[A-Z0-9]/, 2).reject { |s| s.empty? }[0]
  end
end
