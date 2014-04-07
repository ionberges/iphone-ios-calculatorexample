#import "Calculadora.h"

@implementation Calculadora
- (id)init
{
    self = [super init];
    if (self) {
        _display = [[NSMutableString alloc] initWithCapacity:20];
    }
    return self;
}

-(NSString *)obtenerDisplay{
    if([self.display isEqualToString:@""] ){
        return @"0";
    }
    else{ 
        return [NSString stringWithFormat:@"%@", self.display];
    }
    
}
-(void) introducirDigito:(NSString *)digito {
    NSLog(@"%@",digito);
 
    if(self.ultimaTeclaFueOperador){
      [self.display setString:@""];
      [self setUltimaTeclaFueOperador:NO];
    }
    [self.display appendString:digito];
}
-(void) introducirOperador:(NSString *)operador{
    
    [self setOperando: [self.display doubleValue]];
     double operador3= [self.display doubleValue];
  
    operador3= [self.display doubleValue];
   
    [self setOperador:operador];

    [self setUltimaTeclaFueOperador:YES];
    
    
}
-(void) introducirIgual{
    double operador2= [self.display doubleValue];
    double resultado=0;
    if([self.operador isEqualToString:@"+"]){
        resultado = self.operando + operador2;
    
    }
    else if([self.operador isEqualToString:@"-"]){
        resultado = self.operando - operador2;
        
    }
    else if([self.operador isEqualToString:@"*"]){
        resultado = self.operando * operador2;
        
    }
    else if([self.operador isEqualToString:@"/"]){
        resultado = self.operando / operador2;
        
    }
    [self setOperando:resultado];
    [self setDisplay:[NSMutableString stringWithFormat:@"%g", resultado]];

    
}
-(void) introducirBorrar{
    [self.display setString:@""];
}
@end
