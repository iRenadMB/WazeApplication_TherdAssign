
import Foundation

func getBotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    if tempMessage.contains("Hello") {
        return "Hey Renad!"
        
    } else if tempMessage.contains("Goodbay 💐") {
        return "Talk to you later!"
    } else if tempMessage.contains("How are you?") {
        return "I'm fine, how about you?"
    } else {
        return "That's cool."
    }
}
