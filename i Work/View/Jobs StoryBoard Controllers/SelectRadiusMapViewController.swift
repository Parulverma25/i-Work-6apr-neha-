//
//  SelectRadiusMapViewController.swift
//  i Work
//
//  Created by promatics on 4/5/21.
//

import UIKit
import GoogleMaps
import CoreLocation

class SelectRadiusMapViewController: UIViewController {

    //MARK:- IBOutlets
    
    @IBOutlet var mapView: GMSMapView!
    
    //MARK:- Variables
    
    var markerImage = UIImage()
    var markerView = UIImageView()
    var locationManager = CLLocationManager()
    var clocation = CLLocation()
    
    //MARK:- Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        mapView.mapType = .hybrid
        // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        }
        locationManager.startUpdatingLocation()
        
        //Dummy Data Setup
        
        self.markerImage = UIImage(named: "mapMarker")!.withRenderingMode(.alwaysTemplate)
        self.markerView = UIImageView(image: markerImage)
        markerView.frame.size = CGSize(width: 100, height: 100)
        markerView.tintColor = UIColor.blue
        
        let location = CLLocation(latitude: 50.582680, longitude: 5.261830)
        let marker = GMSMarker(position: location.coordinate)
        marker.iconView = markerView
        marker.map = mapView
    }
    
    //MARK:- Custom Functions
    
    //MARK:- OBJC Methods
    
    //MARK:- IBActions
   
}

//MARK:- Location Manager Delegates

extension SelectRadiusMapViewController:CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        
        self.markerImage = UIImage(named: "mapMarker")!.withRenderingMode(.alwaysTemplate)
        self.markerView = UIImageView(image: markerImage)
        markerView.frame.size = CGSize(width: 100, height: 100)
        markerView.tintColor = UIColor.white
        
        mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        let marker = GMSMarker(position: location.coordinate)
        marker.iconView = markerView
        marker.map = mapView
        self.clocation = CLLocation(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        locationManager.stopUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedWhenInUse else {
            return
        }
        locationManager.startUpdatingLocation()
        
    }
    
}


//MARK:- Map View Delegates

extension SelectRadiusMapViewController:GMSMapViewDelegate{
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        print("user tapped marker")

           return false
    }
}
