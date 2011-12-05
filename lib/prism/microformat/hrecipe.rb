module Prism
  module Microformat
    class HRecipe < POSH
      FRIENDLY_NAME = "hRecipe"
      WIKI_URL = "http://microformats.org/wiki/hrecipe"
      XMDP = 'http://microformats.org/profile/hrecipe'
      
      name :hrecipe

      search do |doc|
        hrecipe = doc.css("#{name}")
        hrecipe
      end
      has_one :fn, :yield, :summary, :instructions, :published
      has_many :ingredient, :duration,  :author, :nutrition, :tag

      has_many :photo do
        extract :url
      end
      
    end
  end
end