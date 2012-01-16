require 'open-uri'

# NFLer::Page gets the body of an HTML/XML URI

module Nfler

  module Page
    class << self

      # Gets the body of an HTML/XML URI
      #
      # @param [String] URI to get
      # @return [String, nil] body of the gotten page or nil if something wrong
      def get(uri)
        file = OpenURI.open_uri(uri) rescue nil
        file.read if file
      end

    end
  end

end
