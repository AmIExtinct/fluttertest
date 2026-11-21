Commit Rules:
1. Committing With A Message "v*" + version number leads to the build workflow being run which creates a release of that version number.
2. Committing code changes automatically builds regardless of messages. Release only happens during "v*" (if the commit message contains it).