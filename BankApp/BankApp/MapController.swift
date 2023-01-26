//
//  MapController.swift
//  BankApp
//
//  Created by Александра on 17.01.23.
//


import UIKit


typealias LabelInfo = (String, UIColor)

class MapController: UIViewController, GMSMapViewDelegate {
    
    @IBOutlet weak var cityCollection: UICollectionView!
    @IBOutlet weak var filialsCollections: UICollectionView!
    
    @IBOutlet weak var mapView: GMSMapView!
    var markers = [GMSMarker]()
    private var types: [LabelInfo] = [("ATMs", .white), ("Fillials", .white), ("All", .blue)]
    private var cities = [LabelInfo]()
    
    private var atmsMarkers = [GMSMarker]()
    private var fillialsMarkers = [GMSMarker]()
    
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
        
        registerCell()
        
        
        
    }
    
    func drawMarker(to location: CLLocationCoordinate2D) {
        
        let marker = GMSMarker(position: location)
        marker.map  = mapView
        markers.append(marker)
    }
    
    private func registerCell() {
        let cityNib = UINib(nibName: CityCollectionViewCell.id, bundle: nil)
        let filialNib = UINib(nibName: FilialsCollectionViewCell.id, bundle: nil)
        cityCollection.register(cityNib, forCellWithReuseIdentifier: CityCollectionViewCell.id)
        filialsCollections.register(filialNib, forCellWithReuseIdentifier: FilialsCollectionViewCell.id)
    }
    
    private func getInfo() {
        BelarusBankProvider().bankAdress { cities in
            var citiesText = [String]()
            cities.forEach { city in
                citiesText.append(city.name)
            }
            
            citiesText = Array(Set(citiesText))
            citiesText.sort()
            citiesText.forEach { city in
                self.cities.append((city, .white))
            }
            
            self.citiesCollectionView.reloadData()
        } failure: { description in
            print(description)
        }
        
        BelarusBankProvider().getFillials { fillials in
            self.setMarker(fillials)
        } failure: { description in
            print(description)
        }
        
        BelarusBankProvider().getATMs { atms in
            self.setMarkers(atms)
        } failure: { description in
            print(description)
        }
    }
    
    
}

extension ViewController: GMSMapViewDelegate {
    
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        
        return true
>>>>>>> Stashed changes
    }
    */

}

//private extension MapController {
//  func cities(for indexPath: IndexPath) -> GemCell {
//
//  }
//}


