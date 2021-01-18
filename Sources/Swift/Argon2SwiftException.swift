// Copyright 2020 Tejas Mehta <tmthecoder@gmail.com>
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


import Foundation

/// An exception to handle any `Argon2` related hashing and/or verification errors
struct Argon2SwiftException: Error {
    
    /// The error message
    let message: String
    /// The error code
    let errorCode: Argon2SwiftErrorCode

    /**
     Creates a throwable error object with the given code and message
     
     - Parameters:
        - message: The detailed error message
        - errorCode: The shorthand error code
     
     - Returns: An `Argon2SwiftException` object with the given error code and message
     */
    init(_ message: String, errorCode: Argon2SwiftErrorCode) {
        self.errorCode = errorCode
        self.message = message
    }

    /**
     A getter for the error's localized description
     
     - Returns: A `String` with the error code and message
     */
    public var localizedDescription: String {
        return "[\(errorCode)] \(message)"
    }
}
