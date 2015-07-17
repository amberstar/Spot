/************************************************

        WARNING: MACHINE GENERATED FILE

 ************************************************/
import Foundation
import State

public struct TestTransformable : Model {
    public var myTransformable: NSURL
    public let myTransformableImmutable: NSURL
    public let myTransformableImmutableOptional: NSURL?
    public var myTransformableOptional: NSURL?

public init(myTransformable: NSURL, myTransformableImmutable: NSURL, myTransformableImmutableOptional: NSURL?, myTransformableOptional: NSURL?) {

    self.myTransformable = myTransformable
    self.myTransformableImmutable = myTransformableImmutable
    self.myTransformableImmutableOptional = myTransformableImmutableOptional
    self.myTransformableOptional = myTransformableOptional

    }
}

extension TestTransformable : Decodable {

    static func create(myTransformable: NSURL)(myTransformableImmutable: NSURL)(myTransformableImmutableOptional: NSURL?)(myTransformableOptional: NSURL?) -> TestTransformable  {
        return TestTransformable(myTransformable: myTransformable, myTransformableImmutable: myTransformableImmutable, myTransformableImmutableOptional: myTransformableImmutableOptional, myTransformableOptional: myTransformableOptional)
    }

    public init?(var decoder: Decoder) {

    decoder = TestTransformable.performMigrationIfNeeded(decoder)

        let instance: TestTransformable? = TestTransformable.create
        <^> decoder.decode("myTransformable") >>> URLTransform.reverseTransform
        <*> decoder.decode("myTransformableImmutable") >>> URLTransform.reverseTransform
        <*> decoder.decode("myTransformableImmutableOptional") >>> URLTransform.reverseTransform >>> asOptional
        <*> decoder.decode("myTransformableOptional") >>> URLTransform.reverseTransform >>> asOptional

        if let i = instance {
            i.didFinishDecodingWithDecoder(decoder)
            self = i
        } else { return nil }
    }
}

extension TestTransformable : Encodable {

    public func encode(encoder: Encoder) {
        encoder.encode(myTransformable >>> URLTransform.transform, "myTransformable")
        encoder.encode(myTransformableImmutable >>> URLTransform.transform, "myTransformableImmutable")
        encoder.encode(myTransformableImmutableOptional >>> URLTransform.transform, "myTransformableImmutableOptional")
        encoder.encode(myTransformableOptional >>> URLTransform.transform, "myTransformableOptional")

        TestTransformable.encodeVersionIfNeeded(encoder)

        self.willFinishEncodingWithEncoder(encoder)
    }
}

extension TestTransformable {

    /// These are provided from the data model designer
    /// and can be used to determine if the model is
    /// a different version.
    public static func modelVersionHash() -> String {
        return "<ab73b735 b1201428 cbab765c 5357fbe9 b413a176 90618f51 b3efae27 d31a5116>"
    }

    public static func modelVersionHashModifier() -> String? {
        return nil
    }
}
