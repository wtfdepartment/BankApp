//
//  MapController.swift
//  BankApp
//
//  Created by Александра on 17.01.23.
//

import UIKit
import GoogleMaps
import CoreLocation

class MapController: UIViewController, GMSMapViewDelegate {

    @IBOutlet weak var mapView: GMSMapView!
    var markers = [GMSMarker]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BelarusBankProvider().bankAdress { atm in
            print(atm)
            atm.forEach { item in
                self.drawMarker(to: CLLocationCoordinate2D(
                    latitude: Double(item.lat!)!,
                    longitude: Double(item.lon!)!)
                )
            }
        }
        
        let locationManger = CLLocationManager()
        locationManger.requestAlwaysAuthorization()
        
        mapView.delegate = self
//        self.view.backgroundColor = .red

    }
    
    func drawMarker(to location: CLLocationCoordinate2D) {
        
        let marker = GMSMarker(position: location)
        marker.map  = mapView
        markers.append(marker)
    }


}

extension ViewController: GMSMapViewDelegate {

    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        
        return true
    }
}
