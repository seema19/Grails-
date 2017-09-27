package jbiling

class Product {

   static hasmany=[store:Store]
    String barCode
    String description
    
    static constraints = {
      barCode unique: true
      description unique:true

}
}

