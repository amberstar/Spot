/************************************************

        WARNING: MACHINE GENERATED FILE

 ************************************************/
import Foundation
import State

public struct TestTypes : Model {
    public var myDate: NSDate
    public var myFloat: Float
    public var myBinary: NSData
    public var myDouble: Double
    public var myString: String
    public var myBoolean: Bool
    public var myDecimal: NSDecimalNumber
    public var myInt: Int

}

extension TestTypes : Decodable {

   public static func decode(decoder: Decoder) -> TestTypes? {
      return self.init(decoder: decoder)
   }

    public init?(decoder d: Decoder) {
        var decoder = d
        decoder = TestTypes.performMigrationIfNeeded(decoder)

         guard
            let myDate: NSDate = decoder.decode("myDate"),
            let myFloat: Float = decoder.decode("myFloat"),
            let myBinary: NSData = decoder.decode("myBinary"),
            let myDouble: Double = decoder.decode("myDouble"),
            let myString: String = decoder.decode("myString"),
            let myBoolean: Bool = decoder.decode("myBoolean"),
            let myDecimal: NSDecimalNumber = decoder.decode("myDecimal"),
            let myInt: Int = decoder.decode("myInt")
         else { return  nil }

        self.myDate = myDate
        self.myFloat = myFloat
        self.myBinary = myBinary
        self.myDouble = myDouble
        self.myString = myString
        self.myBoolean = myBoolean
        self.myDecimal = myDecimal
        self.myInt = myInt
        didFinishDecodingWithDecoder(decoder)
    }
}

extension TestTypes : Encodable {

    public func encode(encoder: Encoder) {
        encoder.encode(myDate, "myDate")
        encoder.encode(myFloat, "myFloat")
        encoder.encode(myBinary, "myBinary")
        encoder.encode(myDouble, "myDouble")
        encoder.encode(myString, "myString")
        encoder.encode(myBoolean, "myBoolean")
        encoder.encode(myDecimal, "myDecimal")
        encoder.encode(myInt, "myInt")

        TestTypes.encodeVersionIfNeeded(encoder)

        self.willFinishEncodingWithEncoder(encoder)
    }
}

extension TestTypes {

    /// These are provided from the data model designer
    /// and can be used to determine if the model is
    /// a different version.
    public static func modelVersionHash() -> String {
        return "<a9fa31de ad1cc5f1 d85c3e3e ff64b9b2 3a3c9221 f8f44ba9 75e33daa b277f852>"
    }

    public static func modelVersionHashModifier() -> String? {
        return nil
    }
}

extension NSUserDefaults {

   //****************************************************************************//
   // MARK: NSUserDefault Getters
   //****************************************************************************//

   public func getTestTypes(key: String) -> TestTypes? {
      guard let dictionary = dictionaryForKey(key) else { return nil }
      return TestTypes.decode(dictionary)
   }

   public func getTestTypes(key: String) -> [TestTypes]? {
      guard let array = arrayForKey(key) else { return nil }
      return sequence(array.map(TestTypes.decode))
   }

   public func getTestTypes(key: String) -> [String : TestTypes]? {
      guard let dictionary = dictionaryForKey(key) else { return nil }
      return sequence(dictionary.map { TestTypes.decode($0) })
   }

   public func getTestTypes(key: String, defaultValue: TestTypes) -> TestTypes {
      return getTestTypes(key) ?? defaultValue
   }

   public func getTestTypes(key: String, defaultValue: [TestTypes]) -> [TestTypes] {
      return getDecodable(key) ?? defaultValue
   }

   public func getTestTypes(key: String,  defaultValue: [String : TestTypes]
   ) -> [String : TestTypes] {
      return getTestTypes(key) ?? defaultValue
   }

   //****************************************************************************//
   // MARK: NSUserDefault Setters
   //****************************************************************************//

   public func setTestTypes(value: TestTypes, forKey key: String) {
      setObject(value.encode(), forKey: key)
   }

   public func setTestTypes(value: [TestTypes], forKey key: String) {
      setObject(value.map { $0.encode() }, forKey: key)
   }

   public func setTestTypes(value: [String : TestTypes], forKey key: String) {
      setObject(value.map { $0.encode() }, forKey: key)
   }
}

extension KVStore {

   public func getTestTypes(key: String) -> TestTypes? {
      return getValue(key)
   }

   public func getTestTypes(key: String, defaultValue: TestTypes) -> TestTypes {
      return getTestTypes(key) ?? defaultValue
   }

   public func getTestTypess(key: String) -> [TestTypes]? {
      return getValue(key)
   }

   public func getTestTypess(key: String, defaultValue: [TestTypes]) -> [TestTypes] {
      return getTestTypess(key) ?? defaultValue
   }

   public func getTestTypesDictionary(key: String) -> [String : TestTypes]? {
      return getValue(key)
   }

   public func getTestTypesDictionary(key: String, defaultValue: [String : TestTypes]) -> [String : TestTypes] {
      return getTestTypesDictionary(key) ?? defaultValue
   }
}

