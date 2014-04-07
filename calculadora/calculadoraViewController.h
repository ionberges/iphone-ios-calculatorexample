#import <UIKit/UIKit.h>

@interface calculadoraViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;

- (IBAction)pulsarIgual:(UIButton *)sender;
- (IBAction)pulsarDigito:(id)sender;
- (IBAction)pulsarBorrar:(UIButton *)sender;
- (IBAction)pulsarOperador:(UIButton *)sender;

@end
