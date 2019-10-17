import Foundation

import UIKit
import MobilePlayer

class PositionExampleViewController: ExampleViewController {

  override init() {
    super.init()
    title = "Position"
    codeImageView.image = UIImage(named: "PlainExampleCode")
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func showButtonDidGetTapped() {
    let config = MobilePlayerConfig(dictionary: ["position": 15])
    let playerVC = MobilePlayerViewController(contentURL: videoURL, config: config)
    playerVC.title = "Vanilla Player - \(videoTitle)"
    playerVC.activityItems = [videoURL]
    present(playerVC, animated: true, completion: nil)
  }
}
