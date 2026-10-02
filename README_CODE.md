# Source structure

This repository contains the documented/reconstructed core for the Flutter + Firebase social app discussed in the project history.

Core flow:

`Auth -> Profile -> Firestore Feed -> Like/Comment -> Storage -> Post management`

Expected Flutter files: `lib/main.dart`, `lib/pages/auth_page.dart`, `lib/pages/feed_page.dart`, `lib/pages/profile_page.dart`, `lib/services/auth_service.dart`, `lib/services/firestore_service.dart`, and `lib/services/storage_service.dart`.

Firebase services used: Authentication, Cloud Firestore, and Cloud Storage.
