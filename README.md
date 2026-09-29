# Demo: nativni Android vs. Flutter pod „Show layout bounds"

Dve aplikacije sa istim ekranom: `native_android` (Kotlin, View sistem) i `flutter_app` (Flutter).

## Pokretanje

- Nativna: otvori `native_android` u Android Studiju i pokreni, ili `cd native_android && ./gradlew installDebug` sa priključenim uređajem.
- Flutter: `cd flutter_app && flutter run`.

Za build iz terminala na novoj mašini napravi `native_android/local.properties` sa `sdk.dir=<putanja do Android SDK-a>` ili postavi `ANDROID_HOME`. Android Studio to radi sam pri otvaranju projekta.

## Show layout bounds

1. Settings → About phone → sedam puta tapni „Build number".
2. Settings → System → Developer options → sekcija Drawing → „Show layout bounds".

Isto preko adb-a: `adb shell setprop debug.layout true && adb shell service call activity 1599295570`

## Šta se vidi

Snimci obe aplikacije sa uključenim okvirima su u `screenshots/`.

U nativnoj aplikaciji svaki element ima svoj okvir jer je ekran stablo Android View-ova, a u Flutter aplikaciji postoji samo jedan okvir preko celog ekrana jer Flutter sam iscrtava ceo UI u jedan `FlutterView`.
