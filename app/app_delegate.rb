class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    return true if RUBYMOTION_ENV=='test'
@window=UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
@window.makeKeyAndVisible
@name=NameController.alloc.initWithNibName(nil, bundle: nil)
@nav=UINavigationController.alloc.initWithRootViewController(@name)
@window.rootViewController=@nav
    true
  end
end
