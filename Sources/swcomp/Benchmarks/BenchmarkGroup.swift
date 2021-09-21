// Copyright (c) 2021 Timofey Solomko
// Licensed under MIT License
//
// See LICENSE for license information

import Foundation
import SWCompression
import SwiftCLI

class BenchmarkGroup: CommandGroup {

    let name = "benchmark"
    let shortDescription = "Run the specified benchmark using external files"

    let children: [Routable] = [UnGzip(), UnXz(), UnBz2(), InfoTar(), InfoZip(), Info7z(), CompDeflate(), CompBz2(), CreateTar()]

}

class CompBz2: BenchmarkCommand {

    let name = "comp-bz2"
    let shortDescription = "BZip2 compression"

    let inputs = CollectedParameter()

    let benchmarkName = "BZip2 Compression"
    let benchmarkFunction: (Data) throws -> Any = BZip2.compress

}

class CompDeflate: BenchmarkCommand {

    let name = "comp-deflate"
    let shortDescription = "Deflate compression"

    let inputs = CollectedParameter()

    let benchmarkName = "Deflate Compression"
    let benchmarkFunction: (Data) throws -> Any = Deflate.compress

}

class Info7z: BenchmarkCommand {

    let name = "info-7z"
    let shortDescription = "7-Zip info function"

    let inputs = CollectedParameter()

    let benchmarkName = "7-Zip info function"
    let benchmarkFunction: (Data) throws -> Any = SevenZipContainer.info

}

class InfoTar: BenchmarkCommand {

    let name = "info-tar"
    let shortDescription = "TAR info function"

    let inputs = CollectedParameter()

    let benchmarkName = "TAR info function"
    let benchmarkFunction: (Data) throws -> Any = TarContainer.info

}

class InfoZip: BenchmarkCommand {

    let name = "info-zip"
    let shortDescription = "ZIP info function"

    let inputs = CollectedParameter()

    let benchmarkName = "ZIP info function"
    let benchmarkFunction: (Data) throws -> Any = ZipContainer.info

}

class UnBz2: BenchmarkCommand {

    let name = "un-bz2"
    let shortDescription = "BZip2 unarchiving"

    let inputs = CollectedParameter()

    let benchmarkName = "BZip2 Unarchive"
    let benchmarkFunction: (Data) throws -> Any = BZip2.decompress

}

class UnGzip: BenchmarkCommand {

    let name = "un-gzip"
    let shortDescription = "GZip unarchiving"

    let inputs = CollectedParameter()

    let benchmarkName = "GZip Unarchive"
    let benchmarkFunction: (Data) throws -> Any = GzipArchive.unarchive

}

class UnXz: BenchmarkCommand {

    let name = "un-xz"
    let shortDescription = "XZ unarchiving"

    let inputs = CollectedParameter()

    let benchmarkName = "XZ Unarchive"
    let benchmarkFunction: (Data) throws -> Any = XZArchive.unarchive

}
