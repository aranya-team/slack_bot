module Lita
  module Handlers
    class Gengfan < Handler
      route(/hello lita/i) do |response|
        response.reply(':grinning: hello')
      end

      Lita.register_handler(self)
    end
  end
end
