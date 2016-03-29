/************************************************

        WARNING: MACHINE GENERATED FILE

 ************************************************/
import Foundation
import State

public enum TestRegEnum  : Model {

    case Cold 
    case Hot

}

extension TestRegEnum: Decodable {

   public static func decode(decoder: Decoder) -> TestRegEnum? {
      return self.init(decoder: decoder)
   }

    public init?(decoder d: Decoder) {
        var decoder = d
        decoder = TestRegEnum.performMigrationIfNeeded(decoder)

        guard let type: String = decoder.decode("TestRegEnum") else { return nil }
        switch type {
                case "Cold":
                   self = TestRegEnum.Cold
                case "Hot":
                   self = TestRegEnum.Hot

                default:
                    return nil
        }

    }
}

extension TestRegEnum: Encodable {

    public func encode(encoder: Encoder) {

        switch self {
            case .Cold:
                encoder.encode("Cold", "TestRegEnum")
            case .Hot:
                encoder.encode("Hot", "TestRegEnum")

        }

        TestRegEnum.encodeVersionIfNeeded(encoder)
        self.willFinishEncodingWithEncoder(encoder)
    }
}

extension TestRegEnum {

    /// These are provided from the data model designer
    /// and can be used to determine if the model is
    /// a different version.
    public static func modelVersionHash() -> String {
        return "<a3ed22fb 5deb7f55 1bee0f09 d897dfba 9f6b506f da233147 ba5d0c7b 67981e5c>"
    }

    public static func modelVersionHashModifier() -> String? {
        return nil
    }
}

extension NSUserDefaults {

   //****************************************************************************//
   // MARK: NSUserDefault Getters
   //****************************************************************************//

   public func getTestRegEnum(key: String) -> TestRegEnum? {
      guard let dictionary = dictionaryForKey(key) else { return nil }
      return TestRegEnum.decode(dictionary)
   }

   public func getTestRegEnum(key: String) -> [TestRegEnum]? {
      guard let array = arrayForKey(key) else { return nil }
      return sequence(array.map(TestRegEnum.decode))
   }

   public func getTestRegEnum(key: String) -> [String : TestRegEnum]? {
      guard let dictionary = dictionaryForKey(key) else { return nil }
      return sequence(dictionary.map { TestRegEnum.decode($0) })
   }

   public func getTestRegEnum(key: String, defaultValue: TestRegEnum) -> TestRegEnum {
      return getTestRegEnum(key) ?? defaultValue
   }

   public func getTestRegEnum(key: String, defaultValue: [TestRegEnum]) -> [TestRegEnum] {
      return getDecodable(key) ?? defaultValue
   }

   public func getTestRegEnum(key: String,  defaultValue: [String : TestRegEnum]
   ) -> [String : TestRegEnum] {
      return getTestRegEnum(key) ?? defaultValue
   }

   //****************************************************************************//
   // MARK: NSUserDefault Setters
   //****************************************************************************//

   public func setTestRegEnum(value: TestRegEnum, forKey key: String) {
      setObject(value.encode(), forKey: key)
   }

   public func setTestRegEnum(value: [TestRegEnum], forKey key: String) {
      setObject(value.map { $0.encode() }, forKey: key)
   }

   public func setTestRegEnum(value: [String : TestRegEnum], forKey key: String) {
      setObject(value.map { $0.encode() }, forKey: key)
   }
}

extension KVStore {

   public func getTestRegEnum(key: String) -> TestRegEnum? {
      return getValue(key)
   }

   public func getTestRegEnum(key: String, defaultValue: TestRegEnum) -> TestRegEnum {
      return getTestRegEnum(key) ?? defaultValue
   }

   public func getTestRegEnums(key: String) -> [TestRegEnum]? {
      return getValue(key)
   }

   public func getTestRegEnums(key: String, defaultValue: [TestRegEnum]) -> [TestRegEnum] {
      return getTestRegEnums(key) ?? defaultValue
   }

   public func getTestRegEnumDictionary(key: String) -> [String : TestRegEnum]? {
      return getValue(key)
   }

   public func getTestRegEnumDictionary(key: String, defaultValue: [String : TestRegEnum]) -> [String : TestRegEnum] {
      return getTestRegEnumDictionary(key) ?? defaultValue
   }
}

