//
//  LocationVC.swift
//  Village Wok
//
//  Created by Grace Tang on 3/3/17.
//  Copyright © 2017 tangfamily. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class LocationVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var map: MKMapView!
    
    var locationManager = CLLocationManager()
    
    @IBOutlet weak var openHoursLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        map.delegate = self
        map.userTrackingMode = MKUserTrackingMode.follow
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        // set village wok map
        let latitude: CLLocationDegrees = 32.585043              //32.5850
        let longitude: CLLocationDegrees = -85.4904          // -85.4904
        let latDelta: CLLocationDegrees = 0.05
        let lonDelta: CLLocationDegrees = 0.05
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegion(center: coordinates, span: span)
        
        map.setRegion(region, animated: true)
        
        // add annotation
        let annotation = MKPointAnnotation()
        annotation.title = "1100 S College St"
        annotation.coordinate = coordinates
        
        map.addAnnotation(annotation)
        
        
        // getting weekday here
        
        let date = Date()
        let calendar = Calendar.current
        
        let weekday = calendar.component(.weekday, from: date)
        
        // print("\(weekday)") // this only print number
        
        if weekday == 1 {
            
            openHoursLabel.text = "Sunday Hours: 11:00AM - 9:30PM"
            
        } else if weekday == 2 {
            
            openHoursLabel.text = "Monday Hours: 10:30AM - 9:30PM"
            
        } else if weekday == 3 {
            
            openHoursLabel.text = "Tuesday Hours: 10:30AM - 9:30PM"
            
        } else if weekday == 4 {
            
            openHoursLabel.text = "Wednesday Hours: 10:30AM - 9:30PM"
            
        } else if weekday == 5 {
            
            openHoursLabel.text = "Thursday Hours: 10:30AM - 9:30PM"
            
        } else if weekday == 6 {
            
            openHoursLabel.text = "Friday Hours: 10:30AM - 9:30PM"
            
        } else {
            
            openHoursLabel.text = "Saturday Hours: OFF"
            
        }
        
        
        
    }
    
    // custom village wok image
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        guard !(annotation is MKUserLocation) else {
            return nil
        }
        
        let annotationIdentifier = "Identifier"
        var annotationView: MKAnnotationView?
        if let dequeuedAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationIdentifier) {
            annotationView = dequeuedAnnotationView
            annotationView?.annotation = annotation
        }
        else {
            // set right callout button
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
            
            //annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            
            let rightBtn = UIButton()
            rightBtn.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
            rightBtn.setImage(UIImage(named: "Disclosure Indicator"), for: .normal)
            annotationView?.rightCalloutAccessoryView = rightBtn
            
            // set left callout image button
            let leftBtn = UIButton()
            leftBtn.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
            leftBtn.setImage(UIImage(named: "location-map-flat"), for: .normal)
            annotationView?.leftCalloutAccessoryView = leftBtn
            
            
        }
        
        if let annotationView = annotationView {
            
            annotationView.canShowCallout = true
            annotationView.image = UIImage(named: "Location Pin 33")
        }
        return annotationView
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        locationAuthStatus()
        
    }
    
    func locationAuthStatus() {
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            
            map.showsUserLocation = true
            
        } else {
            
            locationManager.requestWhenInUseAuthorization()
            
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status == .authorizedWhenInUse {
            
            map.showsUserLocation = true
            
        }
        
    }
    
    // change map type here
    
    @IBAction func changeMapType(_ sender: Any) {
        
        if map.mapType == MKMapType.standard {
            
            map.mapType = MKMapType.satellite
            
        } else {
            
            map.mapType = MKMapType.standard
            
        }
        
    }
    
    // zoom in
    @IBAction func zoomIn(_ sender: Any) {
        
        /*
         // usr's location zoom in
         let userLocation = map.userLocation
         
         let region = MKCoordinateRegionMakeWithDistance(
         userLocation.location!.coordinate, 3000, 3000)
         
         map.setRegion(region, animated: true)
         */
        
        // village wok location zoom in
        let latitude: CLLocationDegrees = 32.585043
        let longitude: CLLocationDegrees = -85.4904
        let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region = MKCoordinateRegionMakeWithDistance(coordinates, 2000, 2000)
        map.setRegion(region, animated: true)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation: CLLocation = locations[0]
        let latitude = userLocation.coordinate.latitude
        let longitude = userLocation.coordinate.longitude
        
        let location1 = CLLocation(latitude: 32.585043, longitude: -85.4904 ) // village wok location
        
        let location2 = CLLocation(latitude: latitude, longitude: longitude) // user's current location
        
        let distanceInMeters : CLLocationDistance = location1.distance(from: location2) // distance in meters
        
        let distanceInMiles = distanceInMeters/1609.344  // distance in miles
        
        let roundUp = String(format:"%.1f", distanceInMiles) // round up
        
        distanceLabel.text = "\(roundUp) mi"
        
        //  print(roundUp)
        
        //   print("distance = \(distanceInMeters) meters")
        //   print("distance = \(distanceInMiles) Miles")
        
    }
    
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        
        let placemark = MKPlacemark(coordinate: view.annotation!.coordinate, addressDictionary: nil)
        // The map item is the restaurant location
        // let mapItem = MKMapItem(placemark: placemark)
        let destination = MKMapItem(placemark: placemark)
        destination.name = "Village Wok"
        
        let regionDistance: CLLocationDistance = 1000
        
        let latitude: CLLocationDegrees = 32.585043
        let longitude: CLLocationDegrees = -85.4904
        let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let launchOptions = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey:  NSValue(mkCoordinateSpan: regionSpan.span), MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving] as [String : Any]
        
        destination.openInMaps(launchOptions: launchOptions)
        
        
        /*
         
         func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
         let placemark = MKPlacemark(coordinate: view.annotation!.coordinate, addressDictionary: nil)
         // The map item is the restaurant location
         let mapItem = MKMapItem(placemark: placemark)
         
         let launchOptions = [MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeTransit]
         mapItem.openInMaps(launchOptions: launchOptions)
         }
         
         */
        
    }
    
    
    /*
     // set custom annotation user location
     func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
     
     var annotationView: MKAnnotationView?
     
     if annotation.isKind(of: MKUserLocation.self) {
     
     annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "User")
     
     annotationView?.image = UIImage(named: "Location Pin 43")
     
     //   annotationView!.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
     annotationView!.canShowCallout = true
     
     }
     
     return annotationView
     
     }
     */
 


}
