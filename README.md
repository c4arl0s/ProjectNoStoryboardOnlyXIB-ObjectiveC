# ProjectNoStoryboardOnlyXIB-ObjectiveC
ProjectNoStoryboardOnlyXIB-ObjectiveC

1. Delete the storyBoard and the UIViewController, m an h file.
2. Delete The main Interface, it is where you normally call your storyboard, Delete what it is inside.
3. Add a class FirstViewController subClass of UIViewController, and check the mark for create an xib file.
4. Allocate an UIWindow in memory, then send the message initWithFrame.
5. Allocate FirstViewControllerClass in memory and send the message init, then asign it to a firstViewController pointer
6. Asign firstViewController to a self.window.rootViewController
7. send the message makeKeyAndVisible to the self.window.

# How does AppDelegate.h look like?

## Looks the window pointer in Header file

``` objective-c
//
//  AppDelegate.h
//  Test
//
//  Created by BAZ2019 on 3/29/19.
//  Copyright © 2019 BAZ2019. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
// this property is automatically created when you create the class FirstViewController
@property (strong, nonatomic) UIWindow *window;
@end
```

# How does it look AppDelegate.m ?

## looks the pointer firstViewController

``` objective-c
//
//  AppDelegate.m
//  Test
//
//  Created by BAZ2019 on 3/29/19.
//  Copyright © 2019 BAZ2019. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()
{
    // it declares a pointer named firstViewController.
    FirstViewController *firstViewController;
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // First step: Delete the storyBoard.
    // second step: Delete The main Interface, it is where you normally call your storyboard, Delete what it is inside.
    // Third step: Allocare an UIWindow in memory, then initialize the frame with the complete mainScreen and asign to a self.window.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    // Fourth step: Create an instance of FirstViewControllerClass and asign it to a firstViewController pointer
    firstViewController = [[FirstViewController alloc] init];
    // Fifvth step: Asign firstViewController to a rootViewController
    self.window.rootViewController = firstViewController;
    // Sixth step: send the message makeKeyAndVisible to the self.window.
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
```

# How does FirstViewController.h looks like ?

``` objective-c
//
//  FirstViewController.h
//  Test
//
//  Created by BAZ2019 on 3/29/19.
//  Copyright © 2019 BAZ2019. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
    
@end
```

# How does it look FirstViewController.m ?

``` objective-c
//
//  FirstViewController.m
//  Test
//
//  Created by BAZ2019 on 3/29/19.
//  Copyright © 2019 BAZ2019. All rights reserved.
//
#import "FirstViewController.h"
#import "NextViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIButton *presentNewViewButton;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)presentNewViewButtonTapped:(id)sender {
    NextViewController *nextViewController = [[NextViewController alloc] initWithNibName:@"NextViewController" bundle:nil];
    [self presentViewController:nextViewController animated:YES completion:nil];
}

@end
```

# How does NextViewController.h looks like ?

``` objective-c
//
//  NextViewController.h
//  Test
//
//  Created by BAZ2019 on 3/29/19.
//  Copyright © 2019 BAZ2019. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController

@end
```

# how does NextViewController.m looks like ?


``` objective-c
//
//  NextViewController.m
//  Test
//
//  Created by BAZ2019 on 3/29/19.
//  Copyright © 2019 BAZ2019. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
```


