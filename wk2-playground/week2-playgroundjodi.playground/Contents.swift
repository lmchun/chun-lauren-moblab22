import Foundation
//import UIKit

let path = URL(string: "https://wwwwwwwww.jodi.org/")
let jodiStr = try String(contentsOf: path!, encoding: .utf8)
print("jodiStr.count", jodiStr.count)

//  module.exports = () => fs.readFileSync(path.join(__dirname, 'cows.txt'), 'utf8')
//    .replace(/\n$/, '').split('\n\n\n');

// Use NSString to split string by multi-character string
// one cow per array entry
//
let njodiStr = jodiStr as NSString;
let components = njodiStr.components(separatedBy: "\n\n\n")
print("components.count", components.count)

// Display a bomb
print(components[1])
