//
//  ViewController.swift
//  SentenceAnalytics
//
//  Created by Nubio Knupp on 14/08/16.
//  Copyright © 2016 Nubio Knupp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var fraseTextField : UITextField!;
    @IBOutlet var totalCaracLabel : UILabel!;
    @IBOutlet var totalVogalLabel : UILabel!;
    @IBOutlet var totalConsoanteLabel : UILabel!;
   
    @IBAction func Count(){
        let frase = String(fraseTextField.text!).uppercaseString;
        let qtdVogais = frase.characters.map({"AEIOUÁÍÚÀÂÊÔÃÕ".characters.contains($0) ? 1 : 0});
        let vogais = qtdVogais.reduce(0, combine: {$0 + $1;});
        let qtdConsoantes = frase.characters.map({"BCDFGHJKLMNPQRSTVWXYZÇ".characters.contains($0) ? 1 : 0});
        let consoantes = qtdConsoantes.reduce(0, combine: {$0 + $1;});
        let countCarac = frase.characters.count;
        
        totalCaracLabel.text = "Total de caracteres:  " + String(countCarac);
        totalVogalLabel.text = "Total de vogais:  " + String(vogais);
        totalConsoanteLabel.text = "Total de consoantes: " + String(consoantes);
    }

}

