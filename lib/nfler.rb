LIB_ROOT = File.expand_path('../../lib/nfler', __FILE__)
$LOAD_PATH << LIB_ROOT

require 'nfler/version'
require 'nfler/page'
require 'nfler/teams'
require 'nfler/team'
require 'nfler/game'
require 'nfler/importers'

# Nfler is a Ruby parsing library to get NFL data, teams, scores and more...
module Nfler
end
