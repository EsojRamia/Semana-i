//
//  Cuarto_ControladorViewController.swift
//  Turismo
//
//  Created by ITESM CAMPUS TAMPICO on 26/09/16.
//  Copyright © 2016 ITESM CAMPUS TAMPICO. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class Cuarto_ControladorViewController: UIViewController {

    @IBOutlet var Mapa: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        var location = CLLocationCoordinate2DMake(
            22.2163108,
            -97.8596762)
        
        var ann = MKPointAnnotation()
        ann.coordinate = (location)
        ann.title = "Catedral de Tampico"
        Mapa.addAnnotation(ann)
        
        var span = MKCoordinateSpanMake(0.02, 0.02)
        
        var region = MKCoordinateRegionMake(location, span)
        
        Mapa.setRegion(region, animated: true)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
