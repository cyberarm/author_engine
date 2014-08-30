require "hashie"
require "chingu"
require "author_engine/all"
include AuthorEngine::CommonMethods

class Hash
  include Hashie::Extensions::MethodAccess
end