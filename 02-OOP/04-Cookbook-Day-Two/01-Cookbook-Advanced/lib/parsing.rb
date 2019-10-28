require 'nokogiri'
require 'open-uri'
require 'pry-byebug'
require_relative 'recipe'

# Testing the file locally
# file = 'strawberry.html'
# doc = Nokogiri::HTML(File.open(file), nil, 'utf-8')

def parsing(search_criteria)
  url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?aqt=#{search_criteria}.html"
  doc = Nokogiri::HTML(open(url).read)

  recipe_array = []
  doc.search("div.m_contenu_resultat").each do |recipe_node|
    description = recipe_node.at("div.m_texte_resultat").text.strip
    name = recipe_node.at("div.m_titre_resultat").text.strip
    recipe_array << Recipe.new(name, description)
  end
  recipe_array.first(5)
end
