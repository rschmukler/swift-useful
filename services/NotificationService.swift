import Foundation
import AppKit

class NotificationService {
  class var notificationCenter: NSUserNotificationCenter {
    return NSUserNotificationCenter.defaultUserNotificationCenter()
  }
  
  class func simpleNotification(title: String, description: String) {
    var notification = NSUserNotification()
    notification.title = title
    notification.informativeText = description
    
    notificationCenter.deliverNotification(notification)
  }
  
  class func simpleNotification(title: String, description: String, withImage image: NSImage) {
    var notification = NSUserNotification()
    notification.title = title
    notification.informativeText = description
    notification.contentImage = image
    notificationCenter.deliverNotification(notification)
  }
}
