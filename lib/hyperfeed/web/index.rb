module Hyperfeed::Web
  class Index < Sinatra::Base
    set :public_folder, "public"

    get "/" do
      erb :index
    end

  end
end
