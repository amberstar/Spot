/************************************************

        WARNING: MACHINE GENERATED FILE

 ************************************************/
import Foundation
import State

public struct TestMigrationV1: Model, Migratable {
    public var name: String

    public init(name: String) {

    self.name = name

    }
}

extension TestMigrationV1 : Decodable {

    static func create(name: String) -> TestMigrationV1  {
        return TestMigrationV1(name: name)
    }

    public init?(var decoder: Decoder) {

         decoder = TestMigrationV1.performMigrationIfNeeded(decoder)
        
        let instance: TestMigrationV1? = TestMigrationV1.create
        <^> decoder.decode("name")

        if let i = instance {
            i.didFinishDecodingWithDecoder(decoder)
            self = i
        } else { return nil }
    }
}

extension TestMigrationV1 : Encodable {

    public func encode(encoder: Encoder) {
        encoder.encode(name, "name")

        TestMigrationV1.encodeVersionIfNeeded(encoder)
        
        self.willFinishEncodingWithEncoder(encoder)
    }
}

extension TestMigrationV1 {
    /**
    These are provided from the data model designer
    and can be used to determine if the model is
    a different version.
    */
    public static var modelVersionHash: String {
        return "<d1d15735 a17df101 096ae6a3 bee0c964 4fe97b7d c778e922 08dba2b7 fbdf2aba>"
    }

    public static var modelVersionHashModifier: String? {
        return "1.0"
    }
}
