A simple iOS app for put.io interaction.

The app registers as the handler for `magnet` links on iOS - clicking one will set it as the "current URL" in the app, and allow you to add it as a transfer to Put.io.

You'll need a Put.io API key for this. [Register](https://put.io/v2/oauth2/register) an app and define `kPutIOAPIKey`. My definition looks something like this, in `Constants.swift`:

```swift
import Foundation
let kPutIOAPIKey = "LOLWUT"
```

This was built in an hour, and I *may* come back to it with some more design-y touches. Or I might not. It works, and it'll save me lots of time. (thumbsup)

---

icon courtesy http://thenounproject.com/term/pirate/10113/
