import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emoji: [Emoji] = [
        Emoji(symbol: "😀", name: "Grining Face", description: "A typical smiley face", usage: "happiness"),
        Emoji(symbol: "😂", name: "Tears of joy", description: "A face to denote someone is laughing", usage: "laughter"),
        Emoji(symbol: "😍", name: "Heart eyes", description: "A smiley face with hearts for eyes.", usage: "in love"),
        Emoji(symbol: "🥵", name: "Hot face", description: "A face that is burning", usage: "spicy food"),
        Emoji(symbol: "🥶", name: "Cold face", description: "A face that is getting cold", usage: "cold weather"),
        Emoji(symbol: "🤯", name: "Exploding head", description: "A face whose head just exploded.", usage: "amazed by something"),
        Emoji(symbol: "🤓", name: "Nerdy face", description: "A face conveying intelligence", usage: "study time"),
        Emoji(symbol: "🤢", name: "Nauseated face", description: "A face that is about to vomit.", usage: "Disgusting"),
        Emoji(symbol: "😰", name: "Worried face", description: "A face that denotes worrisome", usage: "worried"),
        Emoji(symbol: "😎", name: "Cool face", description: "A face por something cool", usage: "cool"),
        Emoji(symbol: "😇", name: "Angel face", description: "A face with a halo", usage: "angel face"),
        Emoji(symbol: "😕", name: "Confused face", description: "A confused, puzzled face. ", usage: "unsure what to think; displeasure"),
        Emoji(symbol: "🤔", name: "Thinking face", description: "A thinking face with an idea in mind.", usage: "light and ilumination"),
        Emoji(symbol: "😱", name: "Screaming face", description: "A face that screams", usage: "when you see a ghost"),
        Emoji(symbol: "🤑", name: "Money face", description: "A face that denotes a lot of money", usage: "when you are feeling lucky"),
        Emoji(symbol: "🤒", name: "Sick face", description: "A face when you are sick", usage: "sickness")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell" , for: indexPath)
        let emojis = emoji[indexPath.row]
        cell.textLabel?.text = "\(emojis.symbol) - \(emojis.name)"
        cell.detailTextLabel?.text = emoji.description
        cell.showsReorderControl = true
        return cell
            }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(emoji[indexPath.row].symbol)")
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let emojiToMove = emoji.remove(at:sourceIndexPath.row)
        emoji.insert(emojiToMove, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            emoji.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.reloadData()
        }
    }

}

