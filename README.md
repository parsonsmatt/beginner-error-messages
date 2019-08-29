# beginner-error-messages

Haskell can be hard to learn.
Sometimes, the error messages can be difficult to read and understand.
In some cases, this can be caused by type class polymorphism.
GHC infers a polymorphic signature, and then spits an error out saying that it can't find a type class instance for (blah blah blah).

This package provides a module `ErrorMessages` that, when imported, will provide clearer error messages when possible.

If you have a common error and want to see an error message for it, please submit an issue or a PR!
