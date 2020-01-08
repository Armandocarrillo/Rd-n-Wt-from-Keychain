//
//  InterfaceController.swift
//  Rd-n-WtFromKeychain WatchKit Extension
//
//  Created by Armando Carrillo on 08/01/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        testKeychain()//lee, no encuentra y esccribe una cadena
        testKeychain()//lee la cadena que escribimos
        
    }
    func testKeychain() {
    let keychain = KeychainWrapper.standard//llama del archivo keychainWrapper el metodo standard
    if let contents = keychain.string(forKey: "shared_keychain") {//busca una cadena
    print("Reading from keychain") //si la encuentra, imprime leido de llavero
          print(contents)//imprime el conenido
       } else {
        print("Writing to keychain")//si no enontro una cadena, la escribe e imprime escribiendo en keychain
        keychain.set("This is the saved keychain.", forKey: "shared_keychain")//escribe con metodo set en el lugar "shared_kechain"
        } }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
