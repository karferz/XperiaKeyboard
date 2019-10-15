.class public Lcom/touchtype_fluency/util/ExclusionPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_EXCLUSION_PATTERN:Ljava/lang/String; = "(\\+\\d{1,2}([ -]?\\(\\d\\))?[ -]?|\\(\\d{3,5}\\)[ -]?)?(?<=^|\\D)((((\\d{3,4}[ -]?){2,3}\\d{3,4})|((\\d{4,}[ -]?){2}\\d{4,})|(\\d{6,}[ -]?\\d{4,})|(\\d{5,}[ -]?\\d{5,})|(\\d{4,}[ -]?\\d{6,})))"

.field public static final NUMBER_AND_PASSWORD_EXCLUSION_PATTERN:Ljava/lang/String; = "(\\+\\d{1,2}([ -]?\\(\\d\\))?[ -]?|\\(\\d{3,5}\\)[ -]?)?(?<=^|\\D)((((\\d{3,4}[ -]?){2,3}\\d{3,4})|((\\d{4,}[ -]?){2}\\d{4,})|(\\d{6,}[ -]?\\d{4,})|(\\d{5,}[ -]?\\d{5,})|(\\d{4,}[ -]?\\d{6,})))|[\u00a1\u00bf]?[^.!\u00a1?\u00bf\u061f]*\\b(wagwoord|fjal\u00ebkalimi|fjal\u00ebkalim|fjal\u00ebkalimit|fjal\u00ebkalimin|\u0643\u0644\u0645\u0629 \u0627\u0644\u0645\u0631\u0648\u0631|\u0563\u0561\u0572\u057f\u0576\u0561\u0562\u0561\u057c\u0568|\u09aa\u09be\u099b\u09f1\u09f0\u09cd\u09a1|\u09aa\u09be\u099b\u09f1\u09f0\u09cd\u09a1\u099f\u09cb|\u015fifr\u0259|\u015fifr\u0259m|\u015fifr\u0259n|\u015fifr\u0259si|\u015fifr\u0259miz|pasahitza|pasahitz|pasahitzak|pasahitzek|pasahitzaren|pasahitzen|pasahitzeko|pasahitzetako|\u043f\u0430\u0440\u043e\u043b\u044c|\u09aa\u09be\u09b8\u0993\u09df\u09be\u09b0\u09cd\u09a1|\u092a\u093e\u0938\u0935\u0930\u094d\u0921|lozinka|lozinke|lozinki|lozinku|lozinkom|lozinkama|ger tremen|c\'her tremen|ker tremen|\u043f\u0430\u0440\u043e\u043b\u0430\u0442\u0430|\u043f\u0430\u0440\u043e\u043b\u0430|\u1005\u1000\u102c\u1038\u101d\u103e\u1000\u103a\u1019\u103e\u102c|\u101c\u103b\u103e\u102d\u102f\u1037\u101d\u103e\u1000\u103a\u1014\u1036\u1015\u102b\u1010\u103a|contrasenya|contrasenyes|csn|cs|heslo|hesla|heslu|hesle|heslem|adgangskoden|adgangskode|wachtwoord|wachtwoorden|ww|password|pw|pwd|parool|par\\.|\u0631\u0645\u0632 \u0639\u0628\u0648\u0631|salasana|salasanani|salasanasi|salasanansa|salasanamme|salasananne|s-sana|mot de passe|mots de passe|mdp|contrasinal|\u10de\u10d0\u10e0\u10dd\u10da\u10d8|passwort|passworts|passw\u00f6rter|passw\u00f6rtern|passw\\.|\u0aaa\u0abe\u0ab8\u0ab5\u0ab0\u0acd\u0aa1|\u0aaa\u0abe\u0ab8\\.|\u0aaa\u0abe\\.\u0ab5\\.|kalmar-shiga|\u05e1\u05d9\u05e1\u05de\u05d4|jelsz\u00f3|jelszavam|jelszavaa|jelszava|jelszavunk|jelszavuk|jelszavatok|jelszavad|jsz\\.|j\\.|jelsz\\.|lykilor\u00f0i\u00f0|lykilor\u00f0|okwuntughe|kwuntughe|kata sandi|ktsd|ks|pasfhocal|phasfhocal|bpasfhocal|bpasfhocalsan|bpasfhocalna|phasfhocalsa|phasfhocalsan|pasfhocalsa|pasfhocalsan|pasfhocailse|pasfhocailsean|phasfhocailse|phasfhocailsean|bpasfhocailsean|bpasfhocailne|pass|sandi|sndi|\u0caa\u0cbe\u0cb8\u0ccd\u200c\u0cb5\u0cb0\u0ccd\u0ca1\u0ccd|\u0caa\u0cbe\u0cb8\u0ccd\u200c\u0cb5\u0cb0\u0ccd\u0ca1\u0cbf\u0c97\u0cc6|\u0caa\u0cbe\u0cb8\u0ccd\u200c\u0cb5\u0cb0\u0ccd\u0ca1\u0ccd\u200c\u0c97\u0cc6|\u092a\u0935\u0921|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0456\u043c|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0456\u04a3|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0456|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0456\u043c\u0456\u0437|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440\u0456|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0456|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0456\u04a3|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0433\u0435|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0431\u0435\u043d|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440\u0434\u0456\u04a3|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440\u0433\u0435|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440\u043c\u0435\u043d|\u1796\u17b6\u1780\u17d2\u1799\u179f\u1798\u17d2\u1784\u17b6\u178f\u17cb|\u0caa\u0cbe\u0cb8\u0ccd\u0cb5\u0cb0\u0ccd\u0ca1\u0ccd|\u0441\u044b\u0440\u0441\u04e9\u0437|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u043c|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u04a3|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u0431\u04af\u0437|\u0441\u044b\u0440\u0441\u04e9\u0437\u0434\u04e9\u0440\u04af|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u04a3\u04af\u0437|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u04a3\u04e9\u0440|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u04a3\u04af\u0437\u0434\u04e9\u0440|\u0ea5\u0eb0\u0eab\u0eb1\u0e94\u0e9c\u0ec8\u0eb2\u0e99|parole|slapta\u017eodis|slapt\\.|\u043b\u043e\u0437\u0438\u043d\u043a\u0430\u0442\u0430|\u043b\u043e\u0437\u0438\u043d\u043a\u0430|\u043b\u043e\u0437\u0438\u043d\u043a\u0438|\u043b\u043e\u0437\u0438\u043d\u043a\u0438\u0442\u0435|kata laluan|\u0d2a\u0d3e\u0d38\u0d4d\u200c\u0d35\u0d47\u0d21\u0d4d|\u09aa\u09be\u09b8\u09f1\u09be\u09b0\u09cd\u09a6|\u043d\u0443\u0443\u0446 \u04af\u0433|\u043d\u044d\u0432\u0442\u0440\u044d\u0445 \u043a\u043e\u0434|\u043d\u044d\u0432\u0442\u0440\u044d\u0445 \u04af\u0433|\u043d\u0443\u0443\u0446 \u043a\u043e\u0434|\u043d\u0446|\u043d\u0446 \u04af\u0433|\u043a\u043e\u0434|\u043d\u0443\u0443\u0446|\u0938\u093e\u0902\u0915\u0947\u0924\u093f\u0915 \u0936\u092c\u094d\u0926|\u0917\u0941\u092a\u094d\u0924 \u0936\u092c\u094d\u0926|passordet|passo\\.|\u0b2a\u0b3e\u0b38\u0b71\u0b3e\u0b30\u0b4d\u0b21\u0b1f\u0b3f|has\u0142o|has\u0142em|senha|palavra-passe|palavras-passe|\u0a2a\u0a3e\u0a38\u0a35\u0a30\u0a21|parola|\u043f\u0430\u0440\u043e\u043b\u044f|\u043f\u0430\u0440\u043e\u043b\u044e|\u043f\u0430\u0440\u043e\u043b\u0435\u043c|\u043f\u0430\u0440\u043e\u043b\u0435|\u043f\u0430\u0440\u043e\u043b\u0438|\u043f\u0430\u0440\u043e\u043b\u0435\u0439|\u043f\u0430\u0440\u043e\u043b\u044f\u043c|\u043f\u0430\u0440\u043e\u043b\u044f\u043c\u0438|\u043f\u0430\u0440\u043e\u043b\u044f\u0445|\u0915\u0942\u091f\u0936\u092c\u094d\u0926|\u0917\u0941\u091d\u094b \u0932\u092b\u094d\u091c\u093c|\u0917\u0941\\.\u0932\\.|\u0db8\u0dd4\u0dbb\u0db4\u0daf\u0dba|\u0db8\u0dd4\u0dbb \u0db4\u0daf\u0dba|\u0db8\u0dd4\\.\u0db4\\.|geslo|contrase\u00f1a|contrase\u00f1as|contra|clave|kecap aks\u00e9s|kcp aks\u00e9s|nywila|l\u00f6senord|pasword|sikretong salita|\u0b95\u0b9f\u0bb5\u0bc1\u0b9a\u0bcd\u0b9a\u0bca\u0bb2\u0bcd|\u0441\u0435\u0440\u0441\u04af\u0437|\u0441\u0435\u0440\u0441\u04af\u0437\u0435\u043c|\u0441\u0435\u0440\u0441\u04af\u0437\u0435\u0433\u0435\u0437|\u0441\u0435\u0440\u0441\u04af\u0437\u0435|\u0441\u0435\u0440\u0441\u04af\u0437\u0435\u0431\u0435\u0437|\u0441\u0435\u0440\u0441\u04af\u0437\u043b\u04d9\u0440|\u0441\u0435\u0440\u0441\u04af\u0437\u043d\u0435|\u0c2a\u0c3e\u0c38\u0c4d\u0c35\u0c30\u0c4d\u0c21\u0c4d|\u0e1e\u0e32\u0e2a\u0e40\u0e27\u0e34\u0e23\u0e4c\u0e14|parolam|parolan\u0131z|parolas\u0131|parolam\u0131z|parolalar\u0131|parol|parolym|paroly\u0148yz|paroly|parolymyz|\u043f\u0430\u0440\u043e\u043b\u0456|\u043f\u0430\u0440\u043e\u043b\u0456\u0432|\u067e\u0627\u0633 \u0648\u0631\u0688|\u067e\u0627\u0633\u0648\u0631\u0688|parolim|parolingiz|paroli|parolimiz|parolning|parolni|parolga|parolda|paroldan|prl|m\u1eadt kh\u1ea9u|mk|cyfrinair|nghyfrinair|gyfrinair|chyfrinair|cyfrin|iphaswedi|\u1ecd\u0300r\u1ecd\u0300 a\u1e63\u00edn\u00e0|phasiwedi)\\b[^.!\u00a1?\u00bf\u061f]*([.!\u00a1?\u00bf\u061f]|$)|[^.?!;\u037e]*\\b(\u03ba\u03c9\u03b4\u03b9\u03ba\u03cc\u03c2 \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03cc\u03c2 \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03ae\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03bf\u03af \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03bf\u03cd \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03ce\u03bd \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03cc \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03bf\u03cd\u03c2 \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\\. \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\\. \u03c0\u03c1\u03cc\u03c3\u03b2\\.|\u03ba\u03c9\u03b4\\. \u03c0\u03c1\\.)\\b[^.?!;\u037e]*([.?!;\u037e]|$)|[^.!\u00a1?\u00bf]*\\b(\uc554\ud638|\ube44\ubc00\ubc88\ud638|\ud328\uc2a4\uc6cc\ub4dc|\ube44\ubc88)([^.!\u00a1?\u00bf]*[.!\u00a1?\u00bf]|$)|[^.?!\uff0e\uff61\uff01\uff1f]*(\u5bc6\u7801|\u5bc6\u78bc)[^.?!\uff0e\uff61\uff01\uff1f]*([.?!\uff0e\uff61\uff01\uff1f]|$)|[^\uff0e\u3002\uff01\uff1f]*\u30d1\u30b9\u30ef\u30fc\u30c9[^\uff0e\u3002\uff01\uff1f]*([\uff0e\u3002\uff01\uff1f]|$)|[^.?! ]*\u0e23\u0e2b\u0e31\u0e2a\u0e1c\u0e48\u0e32\u0e19[^.?! ]*([.?! ]|$)"

.field public static final PASSWORD_EXCLUSION_PATTERN:Ljava/lang/String; = "[\u00a1\u00bf]?[^.!\u00a1?\u00bf\u061f]*\\b(wagwoord|fjal\u00ebkalimi|fjal\u00ebkalim|fjal\u00ebkalimit|fjal\u00ebkalimin|\u0643\u0644\u0645\u0629 \u0627\u0644\u0645\u0631\u0648\u0631|\u0563\u0561\u0572\u057f\u0576\u0561\u0562\u0561\u057c\u0568|\u09aa\u09be\u099b\u09f1\u09f0\u09cd\u09a1|\u09aa\u09be\u099b\u09f1\u09f0\u09cd\u09a1\u099f\u09cb|\u015fifr\u0259|\u015fifr\u0259m|\u015fifr\u0259n|\u015fifr\u0259si|\u015fifr\u0259miz|pasahitza|pasahitz|pasahitzak|pasahitzek|pasahitzaren|pasahitzen|pasahitzeko|pasahitzetako|\u043f\u0430\u0440\u043e\u043b\u044c|\u09aa\u09be\u09b8\u0993\u09df\u09be\u09b0\u09cd\u09a1|\u092a\u093e\u0938\u0935\u0930\u094d\u0921|lozinka|lozinke|lozinki|lozinku|lozinkom|lozinkama|ger tremen|c\'her tremen|ker tremen|\u043f\u0430\u0440\u043e\u043b\u0430\u0442\u0430|\u043f\u0430\u0440\u043e\u043b\u0430|\u1005\u1000\u102c\u1038\u101d\u103e\u1000\u103a\u1019\u103e\u102c|\u101c\u103b\u103e\u102d\u102f\u1037\u101d\u103e\u1000\u103a\u1014\u1036\u1015\u102b\u1010\u103a|contrasenya|contrasenyes|csn|cs|heslo|hesla|heslu|hesle|heslem|adgangskoden|adgangskode|wachtwoord|wachtwoorden|ww|password|pw|pwd|parool|par\\.|\u0631\u0645\u0632 \u0639\u0628\u0648\u0631|salasana|salasanani|salasanasi|salasanansa|salasanamme|salasananne|s-sana|mot de passe|mots de passe|mdp|contrasinal|\u10de\u10d0\u10e0\u10dd\u10da\u10d8|passwort|passworts|passw\u00f6rter|passw\u00f6rtern|passw\\.|\u0aaa\u0abe\u0ab8\u0ab5\u0ab0\u0acd\u0aa1|\u0aaa\u0abe\u0ab8\\.|\u0aaa\u0abe\\.\u0ab5\\.|kalmar-shiga|\u05e1\u05d9\u05e1\u05de\u05d4|jelsz\u00f3|jelszavam|jelszavaa|jelszava|jelszavunk|jelszavuk|jelszavatok|jelszavad|jsz\\.|j\\.|jelsz\\.|lykilor\u00f0i\u00f0|lykilor\u00f0|okwuntughe|kwuntughe|kata sandi|ktsd|ks|pasfhocal|phasfhocal|bpasfhocal|bpasfhocalsan|bpasfhocalna|phasfhocalsa|phasfhocalsan|pasfhocalsa|pasfhocalsan|pasfhocailse|pasfhocailsean|phasfhocailse|phasfhocailsean|bpasfhocailsean|bpasfhocailne|pass|sandi|sndi|\u0caa\u0cbe\u0cb8\u0ccd\u200c\u0cb5\u0cb0\u0ccd\u0ca1\u0ccd|\u0caa\u0cbe\u0cb8\u0ccd\u200c\u0cb5\u0cb0\u0ccd\u0ca1\u0cbf\u0c97\u0cc6|\u0caa\u0cbe\u0cb8\u0ccd\u200c\u0cb5\u0cb0\u0ccd\u0ca1\u0ccd\u200c\u0c97\u0cc6|\u092a\u0935\u0921|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0456\u043c|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0456\u04a3|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0456|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0456\u043c\u0456\u0437|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440\u0456|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0456|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0456\u04a3|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0433\u0435|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0431\u0435\u043d|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440\u0434\u0456\u04a3|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440\u0433\u0435|\u049b\u04b1\u043f\u0438\u044f \u0441\u04e9\u0437\u0434\u0435\u0440\u043c\u0435\u043d|\u1796\u17b6\u1780\u17d2\u1799\u179f\u1798\u17d2\u1784\u17b6\u178f\u17cb|\u0caa\u0cbe\u0cb8\u0ccd\u0cb5\u0cb0\u0ccd\u0ca1\u0ccd|\u0441\u044b\u0440\u0441\u04e9\u0437|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u043c|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u04a3|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u0431\u04af\u0437|\u0441\u044b\u0440\u0441\u04e9\u0437\u0434\u04e9\u0440\u04af|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u04a3\u04af\u0437|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u04a3\u04e9\u0440|\u0441\u044b\u0440\u0441\u04e9\u0437\u04af\u04a3\u04af\u0437\u0434\u04e9\u0440|\u0ea5\u0eb0\u0eab\u0eb1\u0e94\u0e9c\u0ec8\u0eb2\u0e99|parole|slapta\u017eodis|slapt\\.|\u043b\u043e\u0437\u0438\u043d\u043a\u0430\u0442\u0430|\u043b\u043e\u0437\u0438\u043d\u043a\u0430|\u043b\u043e\u0437\u0438\u043d\u043a\u0438|\u043b\u043e\u0437\u0438\u043d\u043a\u0438\u0442\u0435|kata laluan|\u0d2a\u0d3e\u0d38\u0d4d\u200c\u0d35\u0d47\u0d21\u0d4d|\u09aa\u09be\u09b8\u09f1\u09be\u09b0\u09cd\u09a6|\u043d\u0443\u0443\u0446 \u04af\u0433|\u043d\u044d\u0432\u0442\u0440\u044d\u0445 \u043a\u043e\u0434|\u043d\u044d\u0432\u0442\u0440\u044d\u0445 \u04af\u0433|\u043d\u0443\u0443\u0446 \u043a\u043e\u0434|\u043d\u0446|\u043d\u0446 \u04af\u0433|\u043a\u043e\u0434|\u043d\u0443\u0443\u0446|\u0938\u093e\u0902\u0915\u0947\u0924\u093f\u0915 \u0936\u092c\u094d\u0926|\u0917\u0941\u092a\u094d\u0924 \u0936\u092c\u094d\u0926|passordet|passo\\.|\u0b2a\u0b3e\u0b38\u0b71\u0b3e\u0b30\u0b4d\u0b21\u0b1f\u0b3f|has\u0142o|has\u0142em|senha|palavra-passe|palavras-passe|\u0a2a\u0a3e\u0a38\u0a35\u0a30\u0a21|parola|\u043f\u0430\u0440\u043e\u043b\u044f|\u043f\u0430\u0440\u043e\u043b\u044e|\u043f\u0430\u0440\u043e\u043b\u0435\u043c|\u043f\u0430\u0440\u043e\u043b\u0435|\u043f\u0430\u0440\u043e\u043b\u0438|\u043f\u0430\u0440\u043e\u043b\u0435\u0439|\u043f\u0430\u0440\u043e\u043b\u044f\u043c|\u043f\u0430\u0440\u043e\u043b\u044f\u043c\u0438|\u043f\u0430\u0440\u043e\u043b\u044f\u0445|\u0915\u0942\u091f\u0936\u092c\u094d\u0926|\u0917\u0941\u091d\u094b \u0932\u092b\u094d\u091c\u093c|\u0917\u0941\\.\u0932\\.|\u0db8\u0dd4\u0dbb\u0db4\u0daf\u0dba|\u0db8\u0dd4\u0dbb \u0db4\u0daf\u0dba|\u0db8\u0dd4\\.\u0db4\\.|geslo|contrase\u00f1a|contrase\u00f1as|contra|clave|kecap aks\u00e9s|kcp aks\u00e9s|nywila|l\u00f6senord|pasword|sikretong salita|\u0b95\u0b9f\u0bb5\u0bc1\u0b9a\u0bcd\u0b9a\u0bca\u0bb2\u0bcd|\u0441\u0435\u0440\u0441\u04af\u0437|\u0441\u0435\u0440\u0441\u04af\u0437\u0435\u043c|\u0441\u0435\u0440\u0441\u04af\u0437\u0435\u0433\u0435\u0437|\u0441\u0435\u0440\u0441\u04af\u0437\u0435|\u0441\u0435\u0440\u0441\u04af\u0437\u0435\u0431\u0435\u0437|\u0441\u0435\u0440\u0441\u04af\u0437\u043b\u04d9\u0440|\u0441\u0435\u0440\u0441\u04af\u0437\u043d\u0435|\u0c2a\u0c3e\u0c38\u0c4d\u0c35\u0c30\u0c4d\u0c21\u0c4d|\u0e1e\u0e32\u0e2a\u0e40\u0e27\u0e34\u0e23\u0e4c\u0e14|parolam|parolan\u0131z|parolas\u0131|parolam\u0131z|parolalar\u0131|parol|parolym|paroly\u0148yz|paroly|parolymyz|\u043f\u0430\u0440\u043e\u043b\u0456|\u043f\u0430\u0440\u043e\u043b\u0456\u0432|\u067e\u0627\u0633 \u0648\u0631\u0688|\u067e\u0627\u0633\u0648\u0631\u0688|parolim|parolingiz|paroli|parolimiz|parolning|parolni|parolga|parolda|paroldan|prl|m\u1eadt kh\u1ea9u|mk|cyfrinair|nghyfrinair|gyfrinair|chyfrinair|cyfrin|iphaswedi|\u1ecd\u0300r\u1ecd\u0300 a\u1e63\u00edn\u00e0|phasiwedi)\\b[^.!\u00a1?\u00bf\u061f]*([.!\u00a1?\u00bf\u061f]|$)|[^.?!;\u037e]*\\b(\u03ba\u03c9\u03b4\u03b9\u03ba\u03cc\u03c2 \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03cc\u03c2 \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03ae\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03bf\u03af \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03bf\u03cd \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03ce\u03bd \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03cc \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\u03b9\u03ba\u03bf\u03cd\u03c2 \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\\. \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4\\. \u03c0\u03c1\u03cc\u03c3\u03b2\\.|\u03ba\u03c9\u03b4\\. \u03c0\u03c1\\.)\\b[^.?!;\u037e]*([.?!;\u037e]|$)|[^.!\u00a1?\u00bf]*\\b(\uc554\ud638|\ube44\ubc00\ubc88\ud638|\ud328\uc2a4\uc6cc\ub4dc|\ube44\ubc88)([^.!\u00a1?\u00bf]*[.!\u00a1?\u00bf]|$)|[^.?!\uff0e\uff61\uff01\uff1f]*(\u5bc6\u7801|\u5bc6\u78bc)[^.?!\uff0e\uff61\uff01\uff1f]*([.?!\uff0e\uff61\uff01\uff1f]|$)|[^\uff0e\u3002\uff01\uff1f]*\u30d1\u30b9\u30ef\u30fc\u30c9[^\uff0e\u3002\uff01\uff1f]*([\uff0e\u3002\uff01\uff1f]|$)|[^.?! ]*\u0e23\u0e2b\u0e31\u0e2a\u0e1c\u0e48\u0e32\u0e19[^.?! ]*([.?! ]|$)"


# instance fields
.field private final a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "regexFlags"    # I

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/ExclusionPattern;->a:Ljava/util/regex/Pattern;

    .line 352
    return-void
.end method

.method public static createDefault()Lcom/touchtype_fluency/util/ExclusionPattern;
    .locals 3

    .prologue
    .line 342
    new-instance v0, Lcom/touchtype_fluency/util/ExclusionPattern;

    const-string v1, "(\\+\\d{1,2}([ -]?\\(\\d\\))?[ -]?|\\(\\d{3,5}\\)[ -]?)?(?<=^|\\D)((((\\d{3,4}[ -]?){2,3}\\d{3,4})|((\\d{4,}[ -]?){2}\\d{4,})|(\\d{6,}[ -]?\\d{4,})|(\\d{5,}[ -]?\\d{5,})|(\\d{4,}[ -]?\\d{6,})))"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/ExclusionPattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/touchtype_fluency/util/ExclusionPattern;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
