//
//  main.swift
//  Assignment4
//
//  Created by Abhishek Bagdare on 2/19/23.
//

import Foundation
//import CryptoSwift

var globalProductCount=10;
var productCategories = [String: [Product]]()

let now = Date()

if(login()){
    prepareData()
    //print("Available Categories : ")
   // displayCategories()
    navigateCategoriesMenu()
    }


func login()->Bool{
   
    print("Enter Email ID!")
    let emailID = readLine()?.trimmed()

    print("Enter Password!")
    let password = readLine()?.trimmed()

    if(emailID=="admin@northeastern.edu" && password=="admin"){
       // if(emailID=="a" && password=="a"){
        print("Logged in Successfully!")
        return true;
    }
   
        print("Login failed.. Enter valid credentials")
    return false;
    
}


func createAdmin(){
   // let encryptedPassword = encryptPassword("admin")
    let newAdmin = User(userId: 1, firstName: "John", lastName: "Doe", userName: "admin", encryptedPassword: "encryptedPassword")
}

func encryptPassword(plaintext: String) -> String {
//    let iv=16;
//    let data = self.dataUsingEncoding(NSUTF8StringEncoding)
//            let enc = try AES(key: key, iv: iv, blockMode:.CBC).encrypt(data!.arrayOfBytes(), padding: PKCS7())
//            let encData = NSData(bytes: enc, length: Int(enc.count))
//            let base64String: String = encData.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0));
//            let result = String(base64String)
//            return result
    return "a"
}

func decryptPassword(encryptedPassword:String)->String{
//    let iv=16;
//    let data = NSData(base64EncodedString: self, options: NSDataBase64DecodingOptions(rawValue: 0))
//          let dec = try AES(key: key, iv: iv, blockMode:.CBC).decrypt(data!.arrayOfBytes(), padding: PKCS7())
//          let decData = NSData(bytes: dec, length: Int(dec.count))
//          let result = NSString(data: decData, encoding: NSUTF8StringEncoding)
//          return String(result!)
    return "a"
}

class User {
    var userId: Int
    var firstName: String
    var lastName: String?
    var userName: String
    var encryptedPassword: String

    init(userId: Int, firstName: String, lastName: String?, userName: String, encryptedPassword: String) {
        self.userId = userId
        self.firstName = firstName
        self.lastName = lastName
        self.userName = userName
        self.encryptedPassword = encryptedPassword
    }

    // Getters
    func getUserId() -> Int {
        return self.userId
    }

    func getFirstName() -> String {
        return self.firstName
    }

    func getLastName() -> String? {
        return self.lastName
    }

    func getUserName() -> String {
        return self.userName
    }

    func getEncryptedPassword() -> String {
        return self.encryptedPassword
    }

    // Setters
    func setUserId(userId: Int) {
        self.userId = userId
    }

    func setFirstName(firstName: String) {
        self.firstName = firstName
    }

    func setLastName(lastName: String?) {
        self.lastName = lastName
    }

    func setUserName(userName: String) {
        self.userName = userName
    }

    func setEncryptedPassword(encryptedPassword: String) {
        self.encryptedPassword = encryptedPassword
    }
}

class Product {
    var productId: Int
    var productName: String
    var productPrice: Double
    var Qty: Int
    var expiry:Date

    init(productId: Int, productName: String, productPrice: Double, Qty: Int,expiry:Date) {
        self.productId = productId
        self.productName = productName
        self.productPrice = productPrice
        self.Qty = Qty
        self.expiry=expiry
    }

    // Getters
    func getProductId() -> Int {
        return self.productId
    }

    func getProductName() -> String {
        return self.productName
    }

    func getProductPrice() -> Double {
        return self.productPrice
    }

    func getQty() -> Int {
        return self.Qty
    }
    func getExpiry() -> Date {
        return self.expiry
    }
    
    

    // Setters
    func setProductId(productId: Int) {
        self.productId = productId
    }

    func setProductName(productName: String) {
        self.productName = productName
    }

    func setProductPrice(productPrice: Double) {
        self.productPrice = productPrice
    }

    func setQty(Qty: Int) {
        self.Qty = Qty
    }
    
    func setExpiry(expiry: Date) {
        self.expiry = expiry
    }
}


func prepareData(){
    
    var Dairy=[Product]()
    var Vegetables=[Product]()
    var Fruits=[Product]()
    var Meat=[Product]()

    let milk = Product(productId: 1, productName: "Milk", productPrice: 0, Qty: 0,expiry:now)
    let yogurt = Product(productId: 2, productName: "yogurt", productPrice: 0, Qty: 0,expiry:now)
    let cheese = Product(productId: 3, productName: "cheese", productPrice: 0, Qty: 0,expiry:now)
    Dairy.append(milk)
    Dairy.append(yogurt)
    Dairy.append(cheese)


    let potato = Product(productId: 4, productName: "potato", productPrice: 3.99,  Qty: 1,expiry:now)
    let tomato = Product(productId: 5, productName: "tomato", productPrice: 2.99, Qty: 1,expiry:now)
    let onion = Product(productId: 6, productName: "onion", productPrice: 9.99,   Qty: 1,expiry:now)
    Vegetables.append(potato)
    Vegetables.append(tomato)
    Vegetables.append(onion)

    let apple = Product(productId: 7, productName: "apple", productPrice: 3.99,  Qty: 1,expiry:now)
    let banana = Product(productId: 8, productName: "banana", productPrice: 1.99,  Qty: 1,expiry:now)
    let orange = Product(productId: 9, productName: "orange", productPrice: 9.99, Qty: 1,expiry:now)
    Fruits.append(apple)
    Fruits.append(banana)
    Fruits.append(orange)

    let chicken = Product(productId: 10, productName: "chicken", productPrice: 3.99,  Qty: 1,expiry:now)
    let eggs = Product(productId: 11, productName: "eggs", productPrice: 1.99, Qty: 1,expiry:now)
    let beef = Product(productId: 12, productName: "beef", productPrice: 9.99,  Qty: 1,expiry:now)
    Meat.append(chicken)
    Meat.append(eggs)
    Meat.append(beef)
    productCategories = ["Dairy": Dairy, "Vegetables": Vegetables,"Fruits":Fruits]

}

//for ele in Meat{
//    print(ele.getProductName())
//}

//Dictionary






//
func navigateCategoriesMenu(){
    print("------MAIN MENU------")
    print("1.Add a Category")
    print("2.Update Category")
    print("3.Delete Category")
    print("4.Select Category")
    print("Select Menu option Number")
    let categoryMenu = readLine()?.trimmed()
    switch categoryMenu {
    case "1":
        print("Enter Category name to add new Category")
        let categorySelect = readLine()?.trimmed()
        addCategory(category:categorySelect)

    case "2":
        print("Enter Category name to update Category")
        let categorySelect = readLine()?.trimmed()
        print("Enter updated Category name")
        let categorySelectUpdated = readLine()?.trimmed()
        updateCategory(category:categorySelect,categoryUpdated:categorySelectUpdated)

    case "3":
        print("Enter Category name to delete Category")
        let categorySelect = readLine()?.trimmed()
        deleteCategory(category:categorySelect)
    case "4":
        displayCategories()
        print("Enter Category name to select Category")
        let categorySelect = readLine()?.trimmed()
        selectCategory(category:categorySelect)

    default:
        print("Invalid option selected")
        navigateCategoriesMenu()
    }
}
//Categories' methods
func addCategory(category:String?){
    productCategories[category!]=[]
    print("Updated Categories : ")
    displayCategories()
    
    navigateCategoriesMenu()
}

func deleteCategory(category:String?){
    if((productCategories[category!]!.isEmpty)){
        productCategories.removeValue(forKey: category!)
        print("Categories : ")
        displayCategories()
        navigateCategoriesMenu()
        
    }else{
        print("Category has products, cant delete")
        navigateCategoriesMenu()
    }
   
}

func updateCategory(category:String?,categoryUpdated:String?){
    productCategories[categoryUpdated!]=productCategories[category!]
    productCategories.removeValue(forKey: category!)
    print("Updated Categories : ")
    displayCategories()
    navigateCategoriesMenu()
}

func selectCategory(category:String?){
    
    let selectedCategory = productCategories[category!]
    navigateProductMenu(category: category)
       
}

func displayCategories(){
    for (key) in productCategories {
        print(key.key)
    }
}


//
//PRODUCT MENU

func navigateProductMenu(category:String?){
    
    print("1.Add a Product")
    print("2.Update a Product")
    print("3.Delete Products")
    print("4.Select a Product")
    print("5.Back")
    let categoryProduct = readLine()?.trimmed()
    switch categoryProduct {
    case "1":
        print("Enter Product name to add new Product")
        let productSelect = readLine()?.trimmed()
        addProduct(productName:productSelect,category: category)

    case "2":
        print("Enter Product name to update Product")
        let productSelect = readLine()?.trimmed()
        print("Enter updated Product name")
        let productSelectUpdated = readLine()?.trimmed()
        updateProduct(productName:productSelect,category: category,productUpdated:productSelectUpdated)

    case "3":
        print("Enter Product name to delete Product")
        let productSelect = readLine()?.trimmed()
        deleteProduct(productName:productSelect,category: category)
    case "4":
        displayProductsList(category: category)
        print("Enter Product name to select Product")
        let productSelect = readLine()?.trimmed()
        selectProduct(productName:productSelect,category: category)
    case "5" : navigateCategoriesMenu()
    default:
        print("Invalid option selected")
        navigateProductMenu(category: category)
    }
}

//

func addProduct(productName:String?,category:String?){
    var selectedCategoryProductsArray = productCategories[category!]
    var newProduct = Product(productId: globalProductCount, productName: productName!, productPrice: 0,  Qty: 0,expiry:now)
    globalProductCount+=1
    selectedCategoryProductsArray?.append(newProduct)
    productCategories[category!]=selectedCategoryProductsArray
    print("Product Added")
    displayProductsList(category: category)
    navigateProductMenu(category: category)
}
func updateProduct(productName:String?,category:String?,productUpdated:String?){
    var selectedCategoryProductsArray = productCategories[category!]
    displayProductsList(category: category)
    for product in selectedCategoryProductsArray!{
       
        if  (product.productName == productName){
            product.setProductName(productName: productUpdated!)
            print("Product Updated")
        }
    }
    productCategories[category!]=selectedCategoryProductsArray
    displayProductsList(category: category)
    navigateProductMenu(category: category)
}

func deleteProduct(productName:String?,category:String?){
    var selectedCategoryProductsArray = productCategories[category!]
    for product in selectedCategoryProductsArray!{
       
        if  (product.productName == productName){
            if(product.getProductPrice() != 0 || product.getQty() != 0){
                print("Product has attributes. cant delete")
            }else{
                let index = selectedCategoryProductsArray!.firstIndex{$0 === product}
                selectedCategoryProductsArray!.remove(at: index!)
                print("Product Removed")
//                 let index = firstIndex(of: element)
//                            remove(at: index)
//
//                selectedCategoryProductsArray!.remove(at: product.getProductId()-1)
//                print("Product Removed")
                
            }
          
        }
    }
    productCategories[category!]=selectedCategoryProductsArray
    displayProductsList(category: category)
    navigateProductMenu(category: category)
}

func selectProduct(productName:String?,category:String?){
   displayProduct(productName: productName, category: category)
   NavigateProductDetails(productName:productName,category:category)
    }

func displayProductsList(category:String?){
    print("Product List")
    let selectedCategory = productCategories[category!]
    for product in selectedCategory!{
        print(product.getProductName())
    }
}


//
func displayProduct(productName:String?,category:String?){
    var selectedCategoryProductsArray = productCategories[category!]
    var selectedProduct :Product;
    for product in selectedCategoryProductsArray!{
       
        if  (product.productName == productName){
            selectedProduct=product;
            print("Product ID")
            print(selectedProduct.getProductId())
            print("Product Name")
            print(selectedProduct.getProductName())
            print("Product Price")
            print(selectedProduct.getProductPrice())
            print("Product Qty")
            print(selectedProduct.getQty())
            print("Product Expiry")
            print(selectedProduct.getExpiry())
        }
       
    }
}

func NavigateProductDetails(productName:String?,category:String?){
    print("1.Display Details")
    print("2.Update info")
    print("3.Delete info")
    print("4.Add info")
    print("5.BACK")
    var selectedProduct = Product(productId: 7, productName: "apple", productPrice: 3.99,  Qty: 1,expiry:now)
    var selectedCategoryProductsArray = productCategories[category!]
    for product in selectedCategoryProductsArray!{
        
        if  (product.productName == productName){
            selectedProduct=product;
        }
    }
        let categoryProduct = readLine()?.trimmed()
        switch categoryProduct {
        case "1":
            displayProduct(productName: productName, category: category)
            NavigateProductDetails(productName:productName, category: category)
        case "2":
            print("1. Update Cost")
            print("2. Update Qty")
            print("3. Update Expiry")
            let productSelect = readLine()?.trimmed()
            switch productSelect{
            case "1":
                print("Enter new Cost")
                let newCost = readLine()?.trimmed()
                selectedProduct.setProductPrice(productPrice:Double((newCost as! NSString).integerValue))
                productCategories[category!]=selectedCategoryProductsArray
                NavigateProductDetails(productName:productName, category: category)
            case "2":
                print("Enter new qty")
                let newQty = readLine()?.trimmed()
                selectedProduct.setQty(Qty:10)
                productCategories[category!]=selectedCategoryProductsArray
                NavigateProductDetails(productName:productName, category: category)
            case "3":
                print("Enter new Expiry")
                let newExpiry = readLine()?.trimmed() ??  "value"
                let dateFormatter = DateFormatter()
                
                // Convert String to Date
                
                guard let newDateDate = dateFormatter.date(from: newExpiry) else { return }
                selectedProduct.setExpiry(expiry: newDateDate)
                productCategories[category!]=selectedCategoryProductsArray
                NavigateProductDetails(productName:productName, category: category)
            default : print("Enter Valid item")
                NavigateProductDetails(productName:productName, category: category)
            }
//            print("Enter updated Product name")
//            let productSelectUpdated = readLine()?.trimmed()
//            updateProduct(productName:productSelect,category: category,productUpdated:productSelectUpdated)
            
        case "3":
            print("1. Delete Cost")
            print("2. Delete Qty")
            print("3. Delete Expiry")
            let productSelect = readLine()?.trimmed()
            switch productSelect{
            case "1":
               
                selectedProduct.setProductPrice(productPrice:0)
                productCategories[category!]=selectedCategoryProductsArray
                NavigateProductDetails(productName:productName, category: category)
            case "2":
              
                selectedProduct.setQty(Qty:0)
                productCategories[category!]=selectedCategoryProductsArray
                NavigateProductDetails(productName:productName, category: category)
            case "3":
                print("Enter new Expiry")
                let newExpiry = readLine()?.trimmed() ??  "value"
                let dateFormatter = DateFormatter()
                
                // Convert String to Date
                
                guard let newDateDate = dateFormatter.date(from: newExpiry) else { return }
                selectedProduct.setExpiry(expiry: newDateDate)
                productCategories[category!]=selectedCategoryProductsArray
                NavigateProductDetails(productName:productName, category: category)
            default : print("Enter Valid item")
                NavigateProductDetails(productName:productName, category: category)
            }
        case "4":
           print("Enter product Qty")
            let newQty = readLine()?.trimmed()
            selectedProduct.setQty(Qty: (newQty as! NSString).integerValue)
            productCategories[category!]=selectedCategoryProductsArray
            NavigateProductDetails(productName:productName, category: category)
        case "5" : navigateProductMenu(category: category)
        default:
            print("Invalid option selected")
            navigateProductMenu(category: category)
        }
    }

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
