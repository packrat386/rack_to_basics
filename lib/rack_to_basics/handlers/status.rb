class RackToBasics
  class Handlers
    class Status
      def call(env)
        [200, {'Content-Type' => 'application/json'}, ['{"app":"rtb", "status":"OK"}']]
      end
    end
  end
end
