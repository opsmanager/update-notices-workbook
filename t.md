# Listing release notes (6805b92 => HEAD)

* * *

Use rnparse help [COMMAND] to get help 



* * *

Map options to a class. Simply create a class with the appropriate
annotations and have options automatically map to functions and
parameters.

```
class App < Thor
  package_name "App"
  map "-L" => :list

  desc "install APP_NAME", "install one of the available apps"
  method_options :force => :boolean, :alias => :string
  def install(name)
    user_alias = options[:alias]
    if options.force?
      # do something
    end
    # other code
  end

  desc "list [SEARCH]", "list all of the available apps, limited by SEARCH"
  def list(search="")
    # list everything
  end
end
```





* * *

My Title
========

A release note relating to this feature/story, it could be one of many.

This one is tagged, as 'note'





* * *

this is, and has no tag 



* * *

this is, and has support and faq tags 

