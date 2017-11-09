module Gems
  class Client
    def search(query, options={})
      response = get('/api/v1/search.json', options.merge(query: query))
      JSON.parse(response)
    end
  end
end
