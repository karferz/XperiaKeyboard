.class public abstract Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;
.super Ljava/lang/Object;
.source "DictionaryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DICTIONARIES_FOLDER:Ljava/lang/String; = "/xperia_keyboard_dictionaries"

.field public static final FALLBACK_PRELOADED_DICTIONARIES_FOLDER:Ljava/lang/String; = "/system/usr/xperia_keyboard_dictionaries"

.field private static final LANGUAGE_PACK_JSON:Ljava/lang/String; = "languagePacks.json"

.field private static final NUMBER_OF_DICTIONARIES:I = 0x43

.field public static final OLD_DICTIONARY:Ljava/lang/String; = "/dlm.xt9"

.field private static final PERSIST_FOLDER:Ljava/lang/String; = "/data/persist"

.field private static final PRELOADED_DICTIONARIES_FOLDER:Ljava/lang/String; = "/data/persist/xperia_keyboard_dictionaries"

.field private static final SYSTEM_FOLDER:Ljava/lang/String; = "/system/usr"

.field private static final TAG:Ljava/lang/String; = "TI_DictionaryUtils"

.field private static final UNPACKED_POSTFIX_FILE_NAME:Ljava/lang/String; = "_unpacked.txt"

.field private static final ZIP_EXTENSION:Ljava/lang/String; = ".zip"

.field private static final sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x43

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    .line 65
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "ara"

    const-string v2, "ar_SA"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "aze"

    const-string v2, "az_AZ"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "bel"

    const-string v2, "be_BY"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "bos"

    const-string v2, "bs_BA"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "bul"

    const-string v2, "bg_BG"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "cat"

    const-string v2, "ca_ES"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "ces"

    const-string v2, "cs_CZ"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "dan"

    const-string v2, "da_DK"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "deu"

    const-string v2, "de_DE"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "ell"

    const-string v2, "el_GR"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "eng_AU"

    const-string v2, "en_AU"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "eng_CA"

    const-string v2, "en_CA"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "eng_GB"

    const-string v2, "en_GB"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "eng"

    const-string v2, "en_US"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "spa"

    const-string v2, "es_ES"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "spa_US"

    const-string v2, "es_US"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "spa_LA"

    const-string v2, "es_LA"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "est"

    const-string v2, "et_EE"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "eus"

    const-string v2, "eu_ES"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "fas"

    const-string v2, "fa_IR"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "fin"

    const-string v2, "fi_FI"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "fra_CA"

    const-string v2, "fr_CA"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "fra"

    const-string v2, "fr_FR"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "gle"

    const-string v2, "ga_IE"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "glg"

    const-string v2, "gl_ES"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "heb"

    const-string v2, "he_IL"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "hin_lat"

    const-string v2, "hg_IN"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "hin"

    const-string v2, "hi_IN"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "hrv"

    const-string v2, "hr_HR"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "hun"

    const-string v2, "hu_HU"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "hye"

    const-string v2, "hy_AM"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "ind"

    const-string v2, "id_ID"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "isl"

    const-string v2, "is_IS"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "ita"

    const-string v2, "it_IT"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "jav"

    const-string v2, "jv_ID"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "kat"

    const-string v2, "ka_GE"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "kaz"

    const-string v2, "kk_KZ"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "kir"

    const-string v2, "ky_KG"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "lit"

    const-string v2, "lt_LT"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "lav"

    const-string v2, "lv_LV"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "mkd"

    const-string v2, "mk_MK"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "msa"

    const-string v2, "ms_MY"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "nob"

    const-string v2, "nb_NO"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "nld"

    const-string v2, "nl_NL"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "pan"

    const-string v2, "pa_IN"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "pol"

    const-string v2, "pl_PL"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "por_BR"

    const-string v2, "pt_BR"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "por"

    const-string v2, "pt_PT"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "ron"

    const-string v2, "ro_RO"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "rus"

    const-string v2, "ru_RU"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "slk"

    const-string v2, "sk_SK"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "slv"

    const-string v2, "sl_SI"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "sqi"

    const-string v2, "sq_AL"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "srp"

    const-string v2, "sr_RS"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "sun"

    const-string v2, "su_ID"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "swe"

    const-string v2, "sv_SE"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "tam"

    const-string v2, "ta_IN"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "tat"

    const-string v2, "tt_RU"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "tha"

    const-string v2, "th_TH"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "tgk"

    const-string v2, "tg_TJ"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "tgl"

    const-string v2, "tl_PH"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "tuk"

    const-string v2, "tk_TM"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "tur"

    const-string v2, "tr_TR"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "ukr"

    const-string v2, "uk_UA"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "uzb"

    const-string v2, "uz_UZ"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "vie"

    const-string v2, "vi_VN"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    const-string v1, "wel"

    const-string v2, "cy_GB"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDictionaryFolder(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filesDir"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xperia_keyboard_dictionaries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "dictionaries":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static deleteDictionaryPreLoaded(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dictionary"    # Ljava/lang/String;

    .prologue
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "dictionaryPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "dictionaryFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static deleteUnpackedDictionaries(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 479
    const/4 v2, 0x1

    .line 485
    .local v2, "deleteSuccessful":Z
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createCustomization(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    move-result-object v1

    .line 487
    .local v1, "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageLayoutConfig(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v8

    .line 489
    .local v8, "languageLayoutConfig":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageIso3s()[Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "allLanguagesIso3":[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageLayoutConfig(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V

    .line 492
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindCustomization(Lcom/sonyericsson/textinput/uxp/model/settings/Customization;)V

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "filesDir":Ljava/lang/String;
    array-length v13, v0

    move v12, v11

    :goto_0
    if-ge v12, v13, :cond_3

    aget-object v7, v0, v12

    .line 496
    .local v7, "languageIso3":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, "/"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v10, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    .line 497
    invoke-interface {v10, v7}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v9, "unpackedDictionaryDirectory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 499
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 500
    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_1

    .line 501
    array-length v14, v5

    move v10, v11

    :goto_1
    if-ge v10, v14, :cond_1

    aget-object v3, v5, v10

    .line 502
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    .line 503
    .local v4, "fileDeleteSuccessful":Z
    if-nez v4, :cond_0

    .line 501
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 508
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileDeleteSuccessful":Z
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v10

    and-int/2addr v2, v10

    .line 495
    .end local v5    # "files":[Ljava/io/File;
    :cond_2
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    goto :goto_0

    .line 520
    .end local v7    # "languageIso3":Ljava/lang/String;
    .end local v9    # "unpackedDictionaryDirectory":Ljava/io/File;
    :cond_3
    return v2
.end method

.method public static deleteUnusedDictionaries()Z
    .locals 9

    .prologue
    .line 373
    sget-object v5, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v5}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    .line 375
    .local v0, "dictionaries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 376
    .local v2, "isAnyFileDeleted":Z
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 377
    .local v1, "dictionary":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getPreloadedDictionaryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "preloadedDictionaryPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/persist/xperia_keyboard_dictionaries/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_unpacked.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v4, "unpackedDictionaryFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 381
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->deleteDictionaryPreLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 382
    const/4 v2, 0x1

    goto :goto_0

    .line 384
    :cond_0
    const-string v6, "TI_DictionaryUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAILED to delete \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_1
    const-string v6, "TI_DictionaryUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not deleting \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") as it is unpacked."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 392
    .end local v1    # "dictionary":Ljava/lang/String;
    .end local v3    # "preloadedDictionaryPath":Ljava/lang/String;
    .end local v4    # "unpackedDictionaryFile":Ljava/io/File;
    :cond_2
    return v2
.end method

.method private static getFallbackPreloadedDictionaryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dictionary"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/usr/xperia_keyboard_dictionaries/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileErrorInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v6, 0x2f

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "rootName":Ljava/lang/String;
    :try_start_0
    const-string v6, "ANDROID_ID: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    .line 220
    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v6, "USER_ID: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (0=Owner, 10+=Other)\n"

    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v6, "APP_UID: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 224
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;->getAppUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    .line 225
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v6, "Total disk space: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;->getTotalDiskSpace()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mb\n"

    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v6, "Free disk space: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;->getFreeDiskSpace()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mb\n"

    .line 229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v6, "PATH: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 235
    const/4 v6, 0x0

    const/16 v7, 0x2f

    .line 236
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;->getAllFileInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 237
    .local v4, "rootInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;

    .line 238
    .local v2, "fileInfo":Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .end local v2    # "fileInfo":Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    .end local v4    # "rootInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;>;"
    :cond_1
    const-string v6, "++++++++++\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;->getAllFileInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 247
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;

    .line 248
    .restart local v2    # "fileInfo":Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    if-eqz v2, :cond_2

    .line 249
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n----------\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v2    # "fileInfo":Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;>;"
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 259
    const-string v6, ""

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 253
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;>;"
    :cond_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error, we do not have writing access to our files-folder. Folders/files have the following permissions:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nCurrently the only "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "way to fix this issue is to clear application data."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method public static getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 312
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p0}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 323
    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 327
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getPreloadedDictionaryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dictionary"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getPreloadedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreloadedPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/persist/xperia_keyboard_dictionaries"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "persistFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "/data/persist/xperia_keyboard_dictionaries"

    .line 147
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "/system/usr/xperia_keyboard_dictionaries"

    goto :goto_0
.end method

.method private static handleWritingError(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "parentPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getFileErrorInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "message":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const-string v0, "Error writing to file and unable to get file info"

    goto :goto_0
.end method

.method public static hasDictionary(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    if-nez p1, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 347
    :goto_0
    return v1

    .line 346
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "filesDir":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->hasDictionaryFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static hasDictionaryFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filesDir"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 302
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->sDictionaryLanguageMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->hasLanguageAnyDictionary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasDictionaryFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filesDir"    # Ljava/lang/String;
    .param p1, "dictionary"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "dictionaryPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static hasDictionaryZipFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dictionaryPath"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static hasLanguageAnyDictionary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "filesDir"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dictionary"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 189
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->createDictionaryFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->handleWritingError(Landroid/content/Context;)V

    .line 193
    :cond_0
    invoke-static {p1, p2}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->hasDictionaryFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :cond_1
    :goto_0
    return v0

    .line 197
    :cond_2
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getPreloadedDictionaryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->hasDictionaryZipFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getFallbackPreloadedDictionaryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->hasDictionaryZipFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOldDictionaryPresent(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 358
    .local v0, "filesDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 359
    const/4 v3, 0x0

    .line 363
    :goto_0
    return v3

    .line 361
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "filesDirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/dlm.xt9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, "oldDictionary":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    goto :goto_0
.end method

.method public static markDictionaryAsUnpacked(Ljava/lang/String;)V
    .locals 5
    .param p0, "dictionary"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->supportsDeletion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/persist/xperia_keyboard_dictionaries/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_unpacked.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "unpackedFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "unpackedFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local v1    # "unpackedFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "TI_DictionaryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_unpacked.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/data/persist/xperia_keyboard_dictionaries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static nukeLanguageConfig(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 402
    if-nez p0, :cond_0

    .line 403
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->ERROR:Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;

    .line 407
    :goto_0
    return-object v2

    .line 405
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "filesDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "languagePacks.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "languagePackJSONFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->SUCCESS:Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->FAIL:Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;

    goto :goto_0
.end method

.method private static safeReformatLanguagePackJson(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 435
    const-string v8, "https?:\\\\\\/\\\\\\/(?!skslm\\.swiftkey\\.net\\\\\\/|www\\.touchtype-fluency\\.com\\\\\\/|touchtype-fluency\\.com\\\\\\/)"

    .line 440
    .local v8, "swiftKeyUrlPattern":Ljava/lang/String;
    const-string v5, "(?i)https?:\\\\\\/\\\\\\/[^\\/]*\\/"

    .line 441
    .local v5, "oldHttpPattern":Ljava/lang/String;
    const-string v4, "https:\\\\\\/\\\\\\/skslm.swiftkey.net\\\\\\/"

    .line 443
    .local v4, "newHttpsPattern":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "filesDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "languagePacks.json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .local v1, "languagePackJSONFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 447
    .local v7, "safeReformatSuccessful":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 448
    const/4 v7, 0x1

    .line 475
    :goto_0
    return v7

    .line 455
    :cond_0
    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "lpJsonString":Ljava/lang/String;
    const-string v9, "https?:\\\\\\/\\\\\\/(?!skslm\\.swiftkey\\.net\\\\\\/|www\\.touchtype-fluency\\.com\\\\\\/|touchtype-fluency\\.com\\\\\\/)"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 458
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 459
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 460
    const/4 v7, 0x0

    goto :goto_0

    .line 465
    :cond_1
    const-string v9, "(?i)https?:\\\\\\/\\\\\\/[^\\/]*\\/"

    const-string v10, "https:\\\\\\/\\\\\\/skslm.swiftkey.net\\\\\\/"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-static {v1, v2}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    const/4 v7, 0x1

    goto :goto_0

    .line 469
    .end local v2    # "lpJsonString":Ljava/lang/String;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public static secureLanguagePackConfiguration(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->safeReformatLanguagePackJson(Landroid/content/Context;)Z

    move-result v1

    .line 534
    .local v1, "reformatSuccessful":Z
    if-nez v1, :cond_0

    .line 539
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 540
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v2

    .line 542
    .local v2, "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    .line 543
    .local v0, "languagePackManager":Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->clearLPConfiguration()V

    .line 544
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->deleteUnpackedDictionaries(Landroid/content/Context;)Z

    .line 548
    .end local v0    # "languagePackManager":Lcom/touchtype_fluency/util/LanguagePackManager;
    .end local v2    # "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    :goto_0
    return-void

    .line 546
    :cond_0
    const-string v3, "TI_DictionaryUtils"

    const-string v4, "languagePacks.json has not been compromised. No action required."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static supportsDeletion()Z
    .locals 2

    .prologue
    .line 151
    const-string v0, "/data/persist/xperia_keyboard_dictionaries"

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getPreloadedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
