

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)arrastarTela:(UIBarButtonItem *)sender;

@property (weak, nonatomic) IBOutlet UIView *containerPrincipal;
@property (weak, nonatomic) IBOutlet UIView *containerMenu;

@property(nonatomic, assign)BOOL isSelected;

@end

