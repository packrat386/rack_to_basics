class RackToBasics
  class Handlers
    class Home
      def call(env)
        [200, {'Content-Type' => 'text/html'}, ['Hello World!']]
      end
    end
  end
end
