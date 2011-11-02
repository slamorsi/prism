#hrecipe
#fn. required. text. the name of the recipe.
#ingredient. required. 1 or more. text with optional valid (x)HTML markup.
#value and type. optional. [experimental]
#yield. optional. text.
#instructions. optional. text with optional valid (x)HTML markup.
#duration. optional. 1 or more. text.
#photo. optional. 1 or more. using any element containing a URL, such as IMG. [experimental]
#summary. optional. text. [experimental]
#author. optional. 1 or more. [experimental]
#published. optional. [experimental]
#nutrition. optional. 1 or more. [experimental]
#value and type. optional. [experimental]
#tag. optional. 1 or more. [experimental]
module Prism
  module Microformat
    class HRecipe < POSH
      FRIENDLY_NAME = "hRecipe"
      WIKI_URL = "http://microformats.org/wiki/hrecipe"
      XMDP = 'http://microformats.org/profile/hrecipe'
      
      name :hrecipe

      has_one :fn, :yield, :summary, :instructions, :published
      has_many :ingredient, :duration,  :author, :nutrition, :tag

      has_many :photo do
        extract :url
      end
      
    end
  end
end