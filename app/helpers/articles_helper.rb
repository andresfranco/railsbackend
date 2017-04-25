module ArticlesHelper
  def article_title(article)
  if article && article.title.present?
      "Titulo: "+article.title
  else
     "Titulo por defecto"
  end
 end
end
