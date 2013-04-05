require "json"

STDOUT.sync = true

module Hyperfeed::Web
  class Feeds < Sinatra::Base

    get("/") do
      url = params.fetch("url", nil)
      redirect("/") and return if url.nil?

      STDOUT.puts("Fetching #{url}")
      response = Hyperfeed::Client.at(url).get

      content_type 'application/json; charset=utf-8'
      response.hyperfeed.to_json
    end

  end
end
