/************************************************

            MACHINE GENERATED FILE

 ************************************************/

import Spot

public struct TestTypes {
    var myBinary: NSData
    var myBoolean: Bool
    var myDate: NSDate
    var myDecimal: NSDecimalNumber
    var myDouble: Double
    var myFloat: Float
    var myInt: Int
    var myString: String

public init(myBinary: NSData, myBoolean: Bool, myDate: NSDate, myDecimal: NSDecimalNumber, myDouble: Double, myFloat: Float, myInt: Int, myString: String) {

    self.myBinary = myBinary
    self.myBoolean = myBoolean
    self.myDate = myDate
    self.myDecimal = myDecimal
    self.myDouble = myDouble
    self.myFloat = myFloat
    self.myInt = myInt
    self.myString = myString

    }
}

extension TestTypes : Decodable {

    static func create(myBinary: NSData)(myBoolean: Bool)(myDate: NSDate)(myDecimal: NSDecimalNumber)(myDouble: Double)(myFloat: Float)(myInt: Int)(myString: String) -> TestTypes  {
        return TestTypes(myBinary: myBinary, myBoolean: myBoolean, myDate: myDate, myDecimal: myDecimal, myDouble: myDouble, myFloat: myFloat, myInt: myInt, myString: myString)
    }

    public init?(var decoder: Decoder) {

        if TestTypes.shouldMigrateIfNeeded {
            if let dataVersion: AnyObject = decoder.decode(TestTypes.versionKey) {
                if TestTypes.needsMigration(dataVersion) {
                   let migratedData = TestTypes.migrateDataForDecoding(decoder.extractData(), dataVersion: dataVersion)
                    decoder = Decoder(data: migratedData)
                }
            }
        }

        let instance: TestTypes? = TestTypes.create
        <^> decoder.decode("myBinary")
        <*> decoder.decode("myBoolean")
        <*> decoder.decode("myDate")
        <*> decoder.decode("myDecimal")
        <*> decoder.decode("myDouble")
        <*> decoder.decode("myFloat")
        <*> decoder.decode("myInt")
        <*> decoder.decode("myString")

        if let i = instance {
            i.didFinishDecodingWithDecoder(decoder)
            self = i
        } else { return nil }
    }
}

extension TestTypes : Encodable {

    public func encode(encoder: Encoder) {
        encoder.encode(self.myBinary, forKey: "myBinary")
        encoder.encode(self.myBoolean, forKey: "myBoolean")
        encoder.encode(self.myDate, forKey: "myDate")
        encoder.encode(self.myDecimal, forKey: "myDecimal")
        encoder.encode(self.myDouble, forKey: "myDouble")
        encoder.encode(self.myFloat, forKey: "myFloat")
        encoder.encode(self.myInt, forKey: "myInt")
        encoder.encode(self.myString, forKey: "myString")

        if TestTypes.shouldEncodeVersion {
                encoder.encode(TestTypes.version, forKey:TestTypes.versionKey)
        }
        self.willFinishEncodingWithEncoder(encoder)
    }
}

extension TestTypes {
    /**
    These are provided from the data model designer
    and can be used to determine if the model is
    a different version.
    */
    static var modelVersionHash: String {
        return "<a9fa31de ad1cc5f1 d85c3e3e ff64b9b2 3a3c9221 f8f44ba9 75e33daa b277f852>"
    }

    static var modelVersionHashModifier: String? {
        return nil
    }
}

