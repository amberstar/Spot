/************************************************

            MACHINE GENERATED FILE

 ************************************************/

import Spot

public enum TestEnum: String {

    case Aim = "Aim"
    case Fire = "Fire"
    case Ready = "Ready"

}

extension TestEnum: Decodable {

    static func create(rawValue: String) -> TestEnum?{
        return TestEnum(rawValue: rawValue)
    }

    public init?(var decoder: Decoder) {

        if TestEnum.shouldMigrateIfNeeded {
            if let dataVersion: AnyObject = decoder.decode(TestEnum.versionKey) {
                if TestEnum.needsMigration(dataVersion) {
                   let migratedData = TestEnum.migrateDataForDecoding(decoder.extractData(), dataVersion: dataVersion)
                    decoder = Decoder(data: migratedData)
                }
            }
        }
        if let rawValue: String  = decoder.decode("value"),
            instance = TestEnum(rawValue: rawValue) {
            self = instance
        } else { return nil }
    }
}

extension TestEnum: Encodable {

    public func encode(encoder: Encoder) {
        encoder.encode(self.rawValue, forKey: "value")

        if TestEnum.shouldEncodeVersion {
                encoder.encode(TestEnum.version, forKey:TestEnum.versionKey)
        }
        self.willFinishEncodingWithEncoder(encoder)
    }
}

extension TestEnum {
    /**
    These are provided from the data model designer
    and can be used to determine if the model is
    a different version.
    */
    static var modelVersionHash: String {
        return "<b4993a9f c37c7861 174a6d31 52355952 e30939de e6a219c5 aaea0c6e 2096334c>"
    }

    static var modelVersionHashModifier: String? {
        return nil
    }
}

