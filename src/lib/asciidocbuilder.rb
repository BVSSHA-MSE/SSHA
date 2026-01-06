
module AsciiDocBuilder
  module Domain
    autoload :Author, 'domain/author'
    autoload :Attributes, 'domain/attributes'
    autoload :Document, 'domain/document'

    autoload :Rules, 'domain/rules'

    autoload :Node, 'domain/node'
    autoload :Book, 'domain/book'
    autoload :ParagraphBlock, 'domain/paragraph-block'
    autoload :Section, 'domain/section'
    autoload :Part, 'domain/part'
    autoload :Chapter, 'domain/chapter'
  end
end