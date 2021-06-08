class RackToBasics
  class Handlers
    class Home
      include RackToBasics::TemplateHelper

      def call(env)
        render_template 'home'
      end
    end
  end
end
