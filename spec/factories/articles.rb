FactoryBot.define do
  factory :article do
    title { "Article title" }
    text { "Article text" }

    factory :article_with_comments do              # создаём фабрику для создания статьи с несколькими комментариями
      after :create do |article, evaluator|        # после создания article
        create_list :comment, 3, article: article  # создаём список из 3-х комментариев
      end
    end
  end
end
