//
//  ViewController.swift
//  UIKIT Swift
//
//  Created by Usuário Convidado on 09/04/2018.
//  Copyright © 2018 Agesandro Scarpioni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var meuSegmento: UISegmentedControl!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var lblKm: UILabel!
    @IBOutlet weak var lblRota: UILabel!
    @IBOutlet weak var meuStepper: UIStepper!
    
    
    @IBAction func salvar(_ sender: Any) {
        var tipo:String
        var msg:String
        
        if(meuSegmento.selectedSegmentIndex >= 0){
            tipo = meuSegmento.titleForSegment(
                at: meuSegmento.selectedSegmentIndex)!
            
            msg = "O Veiculo \(tipo) do ano \(lblAno.text!) foi salvo com sucesso!"
        }else{
            tipo = ""
            
            msg = "Antes de clicar em salvar selecione um tipo de veiculo"
            
        }
        
        
        let alerta = UIAlertController(
            title: "Atencao",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
       
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil ))
        
        present(alerta, animated: true, completion:nil)
    }
    
    
    @IBAction func informarRota(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Forma para receber a rota",
            message: "Faca sua escolha",
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertActionStyle.default,
            handler: { (banana) in
                self.lblRota.text = banana.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "E-Mail",
            style: UIAlertActionStyle.default,
            handler: { (banana) in
                self.lblRota.text = banana.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertActionStyle.cancel,
            handler: nil ))
        
        present(alerta, animated: true, completion:nil)
    }
    
    
    
    @IBAction func trocarValorSwitch(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
         lblKm.text = "\(Int(sender.value))"
    }
    
    
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblAno.text = "\(Int(meuStepper.value))"
    }
    
    @IBAction func indexValueChanged(_ sender: Any) {
        switch (meuSegmento.selectedSegmentIndex) {
        case 0:
            print("Você selecionou o 1º botão")
            break
        case 1:
            print("Você selecionou o 2º botão")
            break
        case 2:
            print("Você selecionou \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)")
            break
        default:
            break
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAno.text = "1980"
        lblKm.text = "7500"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

