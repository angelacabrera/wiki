require "faker"

10.times do
  article = Article.new(
    title: Faker::Lorem.word,
    content: Faker::Lorem.paragraph_by_chars,
  )
  article.save
end
