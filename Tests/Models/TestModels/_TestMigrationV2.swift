/************************************************

        WARNING: MACHINE GENERATED FILE

 ************************************************/
import Foundation
import State

public struct TestMigrationV2 : Model {
    public var age: Int?
    public var name: String

}

extension TestMigrationV2 : Decodable {

   public static func decode(decoder: Decoder) -> TestMigrationV2? {
      return self.init(decoder: decoder)
   }

    public init?(decoder d: Decoder) {
        var decoder = d
        decoder = TestMigrationV2.performMigrationIfNeeded(decoder)

         guard
            let name: String = decoder.decode("name")
         else { return  nil }

        let age: Int? = decoder.decode("age")

        self.age = age
        self.name = name
        didFinishDecodingWithDecoder(decoder)
    }
}

extension TestMigrationV2 : Encodable {

    public func encode(encoder: Encoder) {
        encoder.encode(age, "age")
        encoder.encode(name, "name")

        TestMigrationV2.encodeVersionIfNeeded(encoder)

        self.willFinishEncodingWithEncoder(encoder)
    }
}

extension TestMigrationV2 {

    /// These are provided from the data model designer
    /// and can be used to determine if the model is
    /// a different version.
    public static func modelVersionHash() -> String {
        return "<a72776b0 ed41d0ad 357dc213 d628b690 61fa4fa3 a91c4c0e 941122a8 c581023e>"
    }

    public static func modelVersionHashModifier() -> String? {
        return "2.0"
    }
}

extension NSUserDefaults {

   //****************************************************************************//
   // MARK: NSUserDefault Getters
   //****************************************************************************//

   public func getTestMigrationV2(key: String) -> TestMigrationV2? {
      guard let dictionary = dictionaryForKey(key) else { return nil }
      return TestMigrationV2.decode(dictionary)
   }

   public func getTestMigrationV2(key: String) -> [TestMigrationV2]? {
      guard let array = arrayForKey(key) else { return nil }
      return sequence(array.map(TestMigrationV2.decode))
   }

   public func getTestMigrationV2(key: String) -> [String : TestMigrationV2]? {
      guard let dictionary = dictionaryForKey(key) else { return nil }
      return sequence(dictionary.map { TestMigrationV2.decode($0) })
   }

   public func getTestMigrationV2(key: String, defaultValue: TestMigrationV2) -> TestMigrationV2 {
      return getTestMigrationV2(key) ?? defaultValue
   }

   public func getTestMigrationV2(key: String, defaultValue: [TestMigrationV2]) -> [TestMigrationV2] {
      return getDecodable(key) ?? defaultValue
   }

   public func getTestMigrationV2(key: String,  defaultValue: [String : TestMigrationV2]
   ) -> [String : TestMigrationV2] {
      return getTestMigrationV2(key) ?? defaultValue
   }

   //****************************************************************************//
   // MARK: NSUserDefault Setters
   //****************************************************************************//

   public func setTestMigrationV2(value: TestMigrationV2, forKey key: String) {
      setObject(value.encode(), forKey: key)
   }

   public func setTestMigrationV2(value: [TestMigrationV2], forKey key: String) {
      setObject(value.map { $0.encode() }, forKey: key)
   }

   public func setTestMigrationV2(value: [String : TestMigrationV2], forKey key: String) {
      setObject(value.map { $0.encode() }, forKey: key)
   }
}

extension KVStore {

   public func getTestMigrationV2(key: String) -> TestMigrationV2? {
      return getValue(key)
   }

   public func getTestMigrationV2(key: String, defaultValue: TestMigrationV2) -> TestMigrationV2 {
      return getTestMigrationV2(key) ?? defaultValue
   }

   public func getTestMigrationV2s(key: String) -> [TestMigrationV2]? {
      return getValue(key)
   }

   public func getTestMigrationV2s(key: String, defaultValue: [TestMigrationV2]) -> [TestMigrationV2] {
      return getTestMigrationV2s(key) ?? defaultValue
   }

   public func getTestMigrationV2Dictionary(key: String) -> [String : TestMigrationV2]? {
      return getValue(key)
   }

   public func getTestMigrationV2Dictionary(key: String, defaultValue: [String : TestMigrationV2]) -> [String : TestMigrationV2] {
      return getTestMigrationV2Dictionary(key) ?? defaultValue
   }
}

