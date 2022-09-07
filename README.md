### Generated grpc files

1. Navigate to project path
2. Run:

```bash
protoc -I protos/ protos/rewards.proto --dart_out=grpc:lib/src/generated
```

### To run server

```bash
dart bin/server.dart
```

### To run client

```bash
dart bin/client.dart -t "Title" -m "Message" --thumbnail "thumbnail" -d "dynamic link"

with real data..

dart bin/client.dart -t "This is title" -m "Message is here" --thumbnail "https://dzsxwpmkw-ressh.cloudinary.com/image/upload/v1662415840/poc_rewards/gamepad_1.png" -d "https://jaxonstaging.page.link/enT8"
```


