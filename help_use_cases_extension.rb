class HelpUseCasesExtension < Radiant::Extension
  version "1.0"
  description "Additional use cases for the Help extension"
  url "http://saturnflyer.com"
  
  def activate
    # admin.tabs.add "Help Use Cases", "/admin/help_use_cases", :after => "Layouts", :visibility => [:all]
    if admin.help
      admin.help.role.add 'if_ancestor_or_self', 'if_ancestor_or_self'
    end
  end
  
  def deactivate
  end
  
end