//
//  ViewController3.swift
//  Sukkari
//
//  Created by apple on 26/03/2021.
//  Copyright © 2021 a. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class ViewController3: UIViewController, CLLocationManagerDelegate {
    @IBOutlet var mapView:MKMapView!
    let manager=CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        manager.desiredAccuracy=kCLLocationAccuracyBest
        manager.delegate=self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location=locations.first{
            manager.stopUpdatingLocation()
            render(location)
        }
    }
    
    func render(_ location: CLLocation){
        let span=MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let coordinate=CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region=MKCoordinateRegion(center: coordinate, span:span)
        mapView.setRegion(region, animated: true)
        
        let pin=MKPointAnnotation()
        pin.coordinate=coordinate
        mapView.addAnnotation(pin)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
