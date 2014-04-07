#import <Foundation/Foundation.h>

@interface Calculadora : NSObject

@property (strong, nonatomic) NSMutableString *display;
@property BOOL ultimaTeclaFueOperador;
@property double operando;
@property NSString *operador;


-(NSString *)obtenerDisplay;
-(void) introducirDigito:(NSString *)digito;
-(void) introducirOperador:(NSString *)operador;
-(void) introducirIgual;
-(void) introducirBorrar;

@end
