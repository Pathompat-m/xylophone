import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // Declare an AVAudioPlayer variable to play sound
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // This method is called after the view controller's view is loaded into memory
    }

    // IBAction function triggered by button press
    @IBAction func keyPressed(_ sender: UIButton) {
        // Play sound associated with the button title
        playSound(soundName: sender.currentTitle!)
        
        // Reduce the button's transparency to provide feedback
        sender.alpha = 0.5
        
        // Restore the button's transparency after a short delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
        
    }
    
    // Function to play sound
    func playSound(soundName: String) {
        // Get the URL of the sound file
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        
        // Initialize AVAudioPlayer with the sound file URL
        player = try! AVAudioPlayer(contentsOf: url!)
        
        // Start playing the sound
        player.play()
                
    }
    
}

