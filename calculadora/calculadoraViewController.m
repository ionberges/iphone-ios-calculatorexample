#import "calculadoraViewController.h"
#import "Calculadora.h"

@interface calculadoraViewController ()

@property (strong) Calculadora *calculadora;

@end

@implementation calculadoraViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.calculadora = [[Calculadora alloc] init ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pulsarIgual:(UIButton *)sender {
     [self.calculadora introducirIgual];
     [self.display setText:[self.calculadora obtenerDisplay]];
    
}

- (IBAction)pulsarDigito:(UIButton *)sender {
    

    [self.calculadora introducirDigito:sender.currentTitle];
    [self.display setText:[self.calculadora obtenerDisplay]];
}

- (IBAction)pulsarBorrar:(UIButton *)sender {
    [self.calculadora introducirBorrar];
    [self.display setText:[self.calculadora obtenerDisplay]];
}

- (IBAction)pulsarOperador:(UIButton *)sender {
   
    [self.calculadora introducirOperador:sender.currentTitle];
}
@end
