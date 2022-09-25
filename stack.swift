// Creamos nuestra estructura genérica
struct Stack<T> {
  fileprivate var contenidos: [T] = []
  //Método push
  mutating func push(_ element: T) {
    contenidos.append(element)
  }
  //Método pop
  mutating func pop() -> T? {
    return contenidos.popLast()
  }
  //Método que regresa el tope de la pila
  func tope() -> T? {
    return contenidos.last
  }
  //Método para imprimir la pila
  func imprime() {
      print(contenidos)
  }
}
//Inicializamos una Pila
var Pila1 = Stack<Int>()
//Llenamos nuestra pila
for i in 1...13{
Pila1.push(i)
}
//Imprimimos la pila
Pila1.imprime()
//Imprimimos el tope
print("El tope es: ", (Pila1.tope())as Any)
//Probamos el método pop()

print("La pila después de un pop", (Pila1.pop())as Any)
Pila1.imprime()

