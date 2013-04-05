module Hyperfeed::Web
  class Index < Sinatra::Base

    get "/" do
      erb :index
    end

  end
end
