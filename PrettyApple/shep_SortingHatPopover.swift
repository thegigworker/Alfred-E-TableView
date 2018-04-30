//
//  UI POPOVER PRESENTATION CONTROLLER
//


import UIKit
import MapKit

var whichSort = "dollars"

//case "jobType" :   // CATEGORY !
//case "foodType" :   // CATEGORY 2
//case "dollars" : // SINGLE SECTION 1
//case "distance" : // SINGLE SECTION 2
//case "title" : // SINGLE SECTION 3


class shepSortingHatPopover: UIViewController, UIPopoverPresentationControllerDelegate {
    
    //@IBOutlet weak var xyz: UIButton!
    
    //let myDataModel = shepDataModel()
    
    @IBOutlet weak var btnDrivingDistance: UIButton!
    @IBOutlet weak var checkmark1: UIImageView!
    @IBOutlet weak var btnTitle: UIButton!
    @IBOutlet weak var checkmark2: UIImageView!
    @IBOutlet weak var btnDollars: UIButton!
    @IBOutlet weak var checkmark3: UIImageView!
    @IBOutlet weak var btnCat1_jobType: UIButton!
    @IBOutlet weak var checkmark4: UIImageView!
    @IBOutlet weak var btnCat2_jfoodType: UIButton!
    @IBOutlet weak var checkmark5: UIImageView!
    
    @IBAction func selected_DrivingDistance(_ sender: UIButton) {
        clearCheckMarks()
        whichSort = "distance"
        checkmark1.isHidden = false
        print ("whichSort tapped: \(whichSort)")
    }
    
    @IBAction func selected_Title(_ sender: UIButton) {
        clearCheckMarks()
        whichSort = "title"
        checkmark2.isHidden = false
        print ("whichSort tapped: \(whichSort)")
    }
    
    @IBAction func selected_Dollars(_ sender: UIButton) {
        clearCheckMarks()
        whichSort = "dollars"
        checkmark3.isHidden = false
        print ("whichSort tapped: \(whichSort)")
    }
    
    @IBAction func selected_Cat1_jobType(_ sender: UIButton) {
        clearCheckMarks()
        whichSort = "jobType"
        checkmark4.isHidden = false
        print ("whichSort tapped: \(whichSort)")
    }
    
    @IBAction func selected_Cat2_foodType(_ sender: UIButton) {
        clearCheckMarks()
        whichSort = "foodType"
        checkmark5.isHidden = false
        print ("whichSort tapped: \(whichSort)")
    }
    
    func clearCheckMarks() {
        checkmark1.isHidden = true
        checkmark2.isHidden = true
        checkmark3.isHidden = true
        checkmark4.isHidden = true
        checkmark5.isHidden = true
    }
    
    
    
    //@IBOutlet weak var SearchDistanceSlider: UISlider!
    //@IBOutlet weak var SearchRadiusText: UILabel!
    // @IBOutlet weak var myMapView: MKMapView!
    
    //    @IBAction func SearchDistanceSliderMoved(_ sender: UISlider) {
    //        let value = SearchDistanceSlider.value
    //        SearchRadiusText.text = String(format: "%.01f", value) + " mi."
    //        myDataModel.currentSearchDistance = miles2meters(miles: Double(value))
    //
    //        if searchDistanceCircle != nil {shepMapViewController().myMapView?.remove(searchDistanceCircle)}
    //        searchDistanceCircle = MKCircle(center: myUserLocation.coordinate, radius:CLLocationDistance(myDataModel.currentSearchDistance))
    //        //print ("In popover myDataModel.currentSearchDistance = \(meters2miles(meters: myDataModel.currentSearchDistance))")
    //        shepMapViewController().myMapView?.add(searchDistanceCircle)
    //    }
    
    //    @IBAction func touchDOWNInSearchDistanceSlider(_ sender: UISlider) {
    //        print ("Touch DOWN in popover slider.")
    //    }
    
    //    @IBAction func touchUPInSearchDistanceSlider(_ sender: UISlider) {
    //        print ("Touch UP in popover slider.")
    //        if searchDistanceCircle != nil {shepMapViewController().myMapView?.remove(searchDistanceCircle)}
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearCheckMarks()
        checkmark1.isHidden = false
        // Do any additional setup after loading the view, typically from a nib.
        //        SearchDistanceSlider.value = Float(meters2miles(meters: myDataModel.currentSearchDistance))
        //        let value = SearchDistanceSlider.value
        //        print ("UIPopover SearchDistanceSlider.value: \(value)")
        //        SearchRadiusText.text = String(format: "%.01f", value) + " mi."
        
        print ("UIPopover viewDidLoad")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //    Set the preferred content size on the view controller being presented not the popoverPresentationController
    //
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { // func for popover
    //    if segue.identifier == "popoverViewSegue" {
    //            let vc = segue.destinationViewController
    //            vc.preferredContentSize = CGSize(width: 200, height: 300)
    //            let controller = vc.popoverPresentationController
    //            controller?.delegate = self
    //            //you could set the following in your storyboard
    //            controller?.sourceView = self.view
    //            controller?.sourceRect = CGRect(x:CGRectGetMidX(self.view.bounds), y: CGRectGetMidY(self.view.bounds),width: 315,height: 230)
    //            controller?.permittedArrowDirections = UIPopoverArrowDirection(rawValue: 0)
    //        }
    //    }
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        let controller = segue.destination
    //        if let nv = controller.popoverPresentationController{
    //            nv.delegate = self
    //        }
    //    }
    //
    //    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool {
    //        return true
    //    }
    ////
    //    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
    //        print ("Dismissed")
    //    }
    ////
    //    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
    //        return .none
    //    }
}


