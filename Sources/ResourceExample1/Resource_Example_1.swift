import Foundation

public enum SupportedLanguage {
    case english
    case greek
}

public struct Transliterator {
    let language: SupportedLanguage
    
    func transliterate(source: String) -> String {
        switch language {
        case .english:
            return source
        case .greek:
            return transliterateGreek(source)
        }
    }
    
    private func transliterateGreek(_ source: String) -> String {
        let dataURL = Bundle.main.url(forResource: "greek", withExtension: "json")!
        let data = try! Data(contentsOf: dataURL)
        let dictionary = try! JSONDecoder().decode([String:String].self, from: data)
        
        return source.map({ dictionary[String($0)]! }).joined()
    }
}
