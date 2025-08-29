object tom {
    var energia = 50

    method consumo(metros) {
      return metros/2
    }


    method correr(metros){
        energia = energia - (self.consumo(metros))
    }
    
    method comerRaton(unRaton){
        energia += 12 + unRaton.peso() 
    }

    method maxSpeed() {
        return 5 + (energia/10)
    }

    method puedeCazar(metros){
        return energia >=  (self.consumo(metros))
    }

    method puedeComerRaton(unRaton, metros) {
        if (self.puedeCazar(metros)){
            self.correr(metros)
            self.comerRaton(unRaton)
        }
    }
}

object jerry {
    var edad = 2
    method cumplioAños(){
        edad += 1
    }
    method peso() {
        return edad * 20
    }
}

object nibbles {
    method peso() = 35
    var edad = 1
    method edad() = edad

    method cumplioAños(){
        edad += 1
    }
}

object rigoberto {
    method peso() {
        return edad * 30
    }
    var edad = 3
    method edad() = edad

    method cumplioAños(){
        edad += 1
    }
}

// Inventar otro ratón