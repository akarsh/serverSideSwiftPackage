import Foundation

class FileReader {
//    static function read which takes a filename and will return contents of the file if it exists
    static func read(fileName: String) -> String? {
//        Gets a singleton FileManager object
        let fileManager = FileManager.default
//        creates a URL pointing to the current directory
        let currentDirectoryURL = URL(fileURLWithPath: fileManager.currentDirectoryPath)
//        appending the filename that is passed to this function to the current directory
        let fileURL = currentDirectoryURL.appendingPathComponent(fileName)
//        tries to read the contents of the file if it exists and return it
        return try? String(contentsOf: fileURL, encoding: .utf8)
    }
}
