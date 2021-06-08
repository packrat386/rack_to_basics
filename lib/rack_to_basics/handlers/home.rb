class RackToBasics
  class Handlers
    class Home
      BODY = <<-HTML
<html>
  <head>
    <title>Home</title>
  </head>
  <body>
    <p>Hello There!</p>
    <p>Please try our <a href="/greeter">greeter</a></p>
  </body>
</html>
HTML
      def call(env)
        [200, {'Content-Type' => 'text/html'}, [BODY]]
      end
    end
  end
end
