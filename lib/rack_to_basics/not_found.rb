class RackToBasics
  class NotFound
    def call(env)
      [404, {'Content-Type' => 'text/html'}, ['Page Not Found']]
    end
  end
end
