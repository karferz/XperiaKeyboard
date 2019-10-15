.class public Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
.super Ljava/lang/Object;
.source "LanguageLayoutConfig.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;,
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;,
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;,
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayoutConfigStorage;,
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;,
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;,
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$Factory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LANGUAGE_PROPERTY_NOT_FOUND:I = -0x1

.field public static final LAYOUT_ID_AZERTY:Ljava/lang/String; = "azerty"

.field public static final LAYOUT_ID_QWERTY:Ljava/lang/String; = "qwerty"

.field public static final LAYOUT_ID_QWERTZ:Ljava/lang/String; = "qwertz"

.field public static final LAYOUT_ID_VIRTUAL_12KEY:Ljava/lang/String; = "virtual-12key"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SPA_QWERTY_LAYOUT:Ljava/lang/String; = "qwerty-es-eu-gl"

.field private static final TAG_COUNTRY_LANGUAGE:Ljava/lang/String; = "DefaultLayout"

.field private static final TAG_COUNTRY_LANGUAGE_CONFIG:Ljava/lang/String; = "DefaultLayoutConfig"

.field private static final TAG_DATABASE:Ljava/lang/String; = "Database"

.field private static final TAG_DATABASE_CONFIG:Ljava/lang/String; = "DatabaseConfig"

.field private static final TAG_LANGUAGE_CANDIDATE:Ljava/lang/String; = "LangCand"

.field private static final TAG_LANGUAGE_CANDIDATE_CONFIG:Ljava/lang/String; = "LangCandConfig"

.field static final mEmailUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final mSwapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

.field private mDefaultLayouts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLanguageCandidatesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageLayoutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUseCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f0e0010

    const v6, 0x7f0e000f

    const v5, 0x7f0e000e

    const v4, 0x7f0e0001

    const/high16 v3, 0x7f0e0000

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mEmailUriMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mSwapMap:Ljava/util/Map;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->REQUIRED:[Ljava/lang/Class;

    .line 69
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mMap:Ljava/util/Map;

    const-string v1, "ara"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mMap:Ljava/util/Map;

    const-string v1, "fas"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mMap:Ljava/util/Map;

    const-string v1, "ell"

    const v2, 0x7f0e0009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mMap:Ljava/util/Map;

    const-string v1, "spa"

    const v2, 0x7f0e000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mMap:Ljava/util/Map;

    const-string v1, "hin"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mMap:Ljava/util/Map;

    const-string v1, "pan"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mEmailUriMap:Ljava/util/Map;

    const-string v1, "ara"

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mEmailUriMap:Ljava/util/Map;

    const-string v1, "fas"

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mEmailUriMap:Ljava/util/Map;

    const-string v1, "ell"

    const v2, 0x7f0e0008

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mEmailUriMap:Ljava/util/Map;

    const-string v1, "spa"

    const v2, 0x7f0e000b

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mEmailUriMap:Ljava/util/Map;

    const-string v1, "hin"

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mEmailUriMap:Ljava/util/Map;

    const-string v1, "pan"

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mSwapMap:Ljava/util/Map;

    const-string v1, "ell"

    const v2, 0x7f0e000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mSwapMap:Ljava/util/Map;

    const-string v1, "fra"

    const v2, 0x7f0e000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mSwapMap:Ljava/util/Map;

    const-string v1, "hin"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mSwapMap:Ljava/util/Map;

    const-string v1, "pan"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mSwapMap:Ljava/util/Map;

    const-string v1, "hye"

    const v2, 0x7f0e0011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mUseCache:Z

    return-void
.end method

.method static synthetic access$2000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLayoutOrder(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private createDebugLanguageLayoutList(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "languageLayout":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v2, "languageLayoutList":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 508
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 509
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    const-string v3, "language:"

    .line 510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 511
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", layout:"

    .line 512
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 513
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "<null>"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    .line 514
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$400(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 516
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private createLanguageLayoutNullPointerException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/NullPointerException;
    .locals 5
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layoutId"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 496
    .local v0, "languageLayout":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "languageIso3:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "layoutId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " languageLayout"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v1, ":<null>"

    .line 502
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 496
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 501
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", languageLayoutList:{"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 502
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->createDebugLanguageLayoutList(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private doesLanguageSupport12Key(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    const/4 v2, 0x0

    .line 331
    .local v2, "supports12Key":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 332
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .line 334
    .local v1, "languageLayout":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$500(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    const/4 v2, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "languageLayout":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_1
    return v2
.end method

.method private getLanguagesWithout12KeySupport(Ljava/util/HashMap;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;",
            ">;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "languageLayoutMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 318
    .local v2, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 317
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    .local v0, "currentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 320
    .local v1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->doesLanguageSupport12Key(Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    .end local v0    # "currentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;>;"
    .end local v1    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    :cond_1
    return-object v2
.end method

.method private getLayoutOrder(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layoutId"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$000(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v0

    return v0
.end method

.method private getPunctuations(Ljava/lang/String;Ljava/util/Map;I)[Ljava/lang/String;
    .locals 3
    .param p1, "isoLanguage"    # Ljava/lang/String;
    .param p3, "defaultPunctuations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 740
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 741
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .end local p3    # "defaultPunctuations":I
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private inflateDefaultLayouts(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 119
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->inflateDefaultLayouts(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method private inflateDefaultLayouts(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v6, 0x2

    .line 159
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 163
    .local v0, "attrs":Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .line 164
    .local v4, "type":I
    :goto_0
    if-eq v4, v6, :cond_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 167
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    goto :goto_0

    .line 170
    :cond_0
    if-eq v4, v6, :cond_1

    .line 171
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": no start tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .end local v4    # "type":I
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 186
    throw v2

    .line 175
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "type":I
    :cond_1
    :try_start_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "name":Ljava/lang/String;
    const-string v5, "DefaultLayoutConfig"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->inflateDefaultLayoutsConfig(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)V

    .line 193
    return-void

    .line 180
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": wrong tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "type":I
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 189
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 191
    throw v2
.end method

.method private inflateDefaultLayoutsConfig(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 130
    .local v1, "depth":I
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .line 132
    .local v4, "type":I
    :goto_0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_4

    :cond_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 135
    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 136
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .line 137
    goto :goto_0

    .line 140
    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "name":Ljava/lang/String;
    const-string v5, "DefaultLayout"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;

    const/4 v5, 0x0

    invoke-direct {v0, p1, p3, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    .local v0, "countryLanguage":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mDefaultLayouts:Ljava/util/HashMap;

    .line 145
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 146
    .local v2, "language":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;>;"
    if-nez v2, :cond_2

    .line 147
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "language":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 148
    .restart local v2    # "language":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;>;"
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mDefaultLayouts:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .line 155
    goto :goto_0

    .line 152
    .end local v0    # "countryLanguage":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;
    .end local v2    # "language":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;>;"
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": wrong tag found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private inflateLanguageCandidates(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 763
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 765
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->inflateLanguageCandidates(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 769
    return-void

    .line 767
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method private inflateLanguageCandidates(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v6, 0x2

    .line 772
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 776
    .local v0, "attrs":Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .line 777
    .local v4, "type":I
    :goto_0
    if-eq v4, v6, :cond_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 780
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    goto :goto_0

    .line 783
    :cond_0
    if-eq v4, v6, :cond_1

    .line 784
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": no start tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 796
    .end local v4    # "type":I
    :catch_0
    move-exception v1

    .line 797
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 798
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 799
    throw v2

    .line 788
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "type":I
    :cond_1
    :try_start_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 790
    .local v3, "name":Ljava/lang/String;
    const-string v5, "LangCandConfig"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 791
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->inflateLanguageCandidates(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)V

    .line 806
    return-void

    .line 793
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": wrong tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 800
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "type":I
    :catch_1
    move-exception v1

    .line 801
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 802
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 803
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 804
    throw v2
.end method

.method private inflateLanguageCandidates(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 813
    .local v0, "depth":I
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .line 815
    .local v3, "type":I
    :goto_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 818
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 819
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .line 820
    goto :goto_0

    .line 823
    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "name":Ljava/lang/String;
    const-string v4, "LangCand"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 826
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;

    invoke-direct {v1, p1, p3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 828
    .local v1, "languageCandidates":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageCandidatesMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;->access$1900(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .line 833
    goto :goto_0

    .line 830
    .end local v1    # "languageCandidates":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": wrong tag found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 834
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private inflateLanguageLayout()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v0, "languageLayoutMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 201
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->inflateLanguageLayout(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 205
    return-object v0

    .line 203
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
.end method

.method private inflateLanguageLayout(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "languageLayoutMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;>;"
    const/4 v6, 0x2

    .line 211
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 215
    .local v0, "attrs":Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 216
    .local v4, "type":I
    :goto_0
    if-eq v4, v6, :cond_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 222
    :cond_0
    if-eq v4, v6, :cond_1

    .line 223
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": No start tag found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    .end local v4    # "type":I
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    throw v2

    .line 227
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "type":I
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "name":Ljava/lang/String;
    const-string v5, "DatabaseConfig"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->inflateLanguageLayoutConfig(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/util/HashMap;)V

    .line 246
    return-void

    .line 232
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Start tag is not <Database>!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "type":I
    :catch_1
    move-exception v1

    .line 241
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 242
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 243
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 244
    throw v2
.end method

.method private inflateLanguageLayoutConfig(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    .local p3, "languageLayoutMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 254
    .local v1, "depth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 256
    .local v4, "type":I
    :goto_0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_6

    :cond_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    .line 259
    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 260
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 261
    goto :goto_0

    .line 264
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "name":Ljava/lang/String;
    const-string v5, "Database"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 267
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    const/4 v5, 0x0

    invoke-direct {v0, p0, p2, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Landroid/util/AttributeSet;I)V

    .line 269
    .local v0, "db":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$300(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;->isExcludedLanguage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$300(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 271
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$300(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 272
    .local v2, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    if-nez v2, :cond_3

    .line 273
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 274
    .restart local v2    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$300(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_3
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$400(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v2    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 283
    goto :goto_0

    .line 279
    .end local v0    # "db":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Unknown tag under <Database>!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 285
    .end local v3    # "name":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->validateLanguageLayouts(Ljava/util/HashMap;)V

    .line 286
    return-void
.end method

.method private validateLanguageLayouts(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "languageLayoutMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupporting12Key(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguagesWithout12KeySupport(Ljava/util/HashMap;)Ljava/util/Set;

    move-result-object v1

    .line 300
    .local v1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 310
    .end local v1    # "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 555
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 560
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 561
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    if-ne p2, v0, :cond_0

    .line 562
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    goto :goto_0
.end method

.method public findLanguageIso3ForLayoutId(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "layoutId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 857
    .local p1, "languageIso3s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 858
    .local v1, "languageIso3":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 859
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/sonyericsson/ned/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 860
    move-object v1, v0

    .line 864
    .end local v0    # "language":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public findLayoutIdForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "countryIso2"    # Ljava/lang/String;
    .param p3, "inputMethod"    # Ljava/lang/String;

    .prologue
    .line 870
    const/4 v2, 0x0

    .line 871
    .local v2, "newLayoutId":Ljava/lang/String;
    const-string v3, "singletap"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "multitap"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 872
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "layoutIds":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 874
    .local v0, "layoutId":Ljava/lang/String;
    const-string v5, "virtual-12key"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 875
    move-object v2, v0

    .line 883
    .end local v0    # "layoutId":Ljava/lang/String;
    .end local v1    # "layoutIds":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 873
    .restart local v0    # "layoutId":Ljava/lang/String;
    .restart local v1    # "layoutIds":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 880
    .end local v0    # "layoutId":Ljava/lang/String;
    .end local v1    # "layoutIds":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getDefaultLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getCustomCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 607
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1300(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v1

    .line 611
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getDefaultLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "countryIso2"    # Ljava/lang/String;
    .param p3, "inputMethod"    # Ljava/lang/String;

    .prologue
    .line 649
    const/4 v4, 0x0

    .line 650
    .local v4, "layout":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mDefaultLayouts:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 651
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mDefaultLayouts:Ljava/util/HashMap;

    .line 652
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    const v6, 0x7f050055

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->inflateDefaultLayouts(Landroid/content/Context;I)V

    .line 654
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mDefaultLayouts:Ljava/util/HashMap;

    const/4 v6, 0x0

    const/4 v7, 0x3

    .line 655
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 657
    .local v1, "countryList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;>;"
    if-eqz v1, :cond_2

    const-string v5, "full"

    .line 658
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "numpad"

    .line 659
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 660
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;

    .line 662
    .local v0, "countryLanguage":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;
    if-eqz v0, :cond_2

    .line 663
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->access$1700(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;)Ljava/lang/String;

    move-result-object v4

    .line 666
    .end local v0    # "countryLanguage":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;
    :cond_2
    if-nez v4, :cond_7

    .line 667
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    .line 668
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 669
    .local v3, "languageConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    if-eqz v3, :cond_5

    .line 670
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 671
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "layout":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 673
    .restart local v4    # "layout":Ljava/lang/String;
    const-string v5, "multitap"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "singletap"

    .line 674
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 675
    :cond_3
    :goto_0
    const-string v5, "virtual-12key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 676
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "layout":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "layout":Ljava/lang/String;
    goto :goto_0

    .line 678
    :cond_4
    const-string v5, "full"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 679
    :goto_1
    const-string v5, "virtual-12key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 680
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "layout":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "layout":Ljava/lang/String;
    goto :goto_1

    .line 684
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    const-string v5, "multitap"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "singletap"

    .line 685
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 686
    :cond_6
    const-string v4, "virtual-12key"

    .line 692
    .end local v3    # "languageConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    :cond_7
    :goto_2
    return-object v4

    .line 687
    .restart local v3    # "languageConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    :cond_8
    const-string v5, "full"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 688
    const-string v4, "qwerty"

    goto :goto_2
.end method

.method public getDirection(Ljava/lang/String;)I
    .locals 4
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 838
    const/4 v1, 0x0

    .line 839
    .local v1, "retVal":I
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "languageProperties":[Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "rtl-lang"

    .line 841
    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 843
    const/4 v1, 0x1

    .line 845
    :cond_0
    return v1
.end method

.method public getKeyboardLayoutName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "layoutId"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    .local v0, "isoCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$800(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .end local v0    # "isoCode":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyboardLayoutXmlId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layoutId"    # Ljava/lang/String;
    .param p3, "inputMethod"    # Ljava/lang/String;

    .prologue
    .line 345
    :try_start_0
    const-string v3, "virtual-12key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$600(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    .line 369
    :goto_0
    return v3

    .line 348
    :cond_0
    const-string v3, "qwerty-es-eu-gl"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 350
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$600(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    goto :goto_0

    .line 353
    :cond_1
    const/4 v2, 0x0

    .line 354
    .local v2, "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    .local v1, "languageIsoCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 356
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .line 360
    .end local v1    # "languageIsoCode":Ljava/lang/String;
    .restart local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_3
    if-nez v2, :cond_4

    .line 365
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->getContextLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    .line 366
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {p0, p1, v3, p3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getDefaultLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 367
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .line 369
    .restart local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_4
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$600(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 370
    .end local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->createLanguageLayoutNullPointerException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v3

    throw v3
.end method

.method public getKeyboardSymbolsShiftedXmlId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layoutId"    # Ljava/lang/String;

    .prologue
    .line 462
    :try_start_0
    const-string v3, "virtual-12key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1000(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    .line 487
    :goto_0
    return v3

    .line 465
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;->getKeyboardLayoutVariant()Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->T_MOBILE:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 468
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1000(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    goto :goto_0

    .line 471
    :cond_1
    const-string v3, "qwerty-es-eu-gl"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 473
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1000(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    goto :goto_0

    .line 476
    :cond_2
    const/4 v2, 0x0

    .line 477
    .local v2, "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 478
    .local v1, "languageIsoCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 479
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .line 483
    .end local v1    # "languageIsoCode":Ljava/lang/String;
    .restart local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_4
    if-nez v2, :cond_5

    .line 484
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get shifted symbols layoutId id for languageIso3:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->createLanguageLayoutNullPointerException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v3

    throw v3

    .line 487
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_5
    :try_start_1
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1000(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto/16 :goto_0
.end method

.method public getKeyboardSymbolsXmlId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layoutId"    # Ljava/lang/String;

    .prologue
    .line 427
    :try_start_0
    const-string v3, "virtual-12key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$900(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    .line 453
    :goto_0
    return v3

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;->getKeyboardLayoutVariant()Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->T_MOBILE:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$900(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    goto :goto_0

    .line 437
    :cond_1
    const-string v3, "qwerty-es-eu-gl"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 439
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$900(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    goto :goto_0

    .line 442
    :cond_2
    const/4 v2, 0x0

    .line 443
    .local v2, "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 444
    .local v1, "languageIsoCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 445
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .line 449
    .end local v1    # "languageIsoCode":Ljava/lang/String;
    .restart local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_4
    if-nez v2, :cond_5

    .line 450
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get symbols layoutId id for languageIso3:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->createLanguageLayoutNullPointerException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v3

    throw v3

    .line 453
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_5
    :try_start_1
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$900(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto/16 :goto_0
.end method

.method public getLanguageCandidatesId(Ljava/lang/String;)I
    .locals 3
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 749
    .local v0, "languageCandidatesXml":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageCandidatesMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 750
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageCandidatesMap:Ljava/util/HashMap;

    .line 751
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    const v2, 0x7f0500bb

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->inflateLanguageCandidates(Landroid/content/Context;I)V

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageCandidatesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageCandidatesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;

    .line 756
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;->access$1800(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;)I

    move-result v0

    .line 759
    :cond_1
    return v0
.end method

.method public getLanguageIso3s()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 578
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 585
    .local v0, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    const-string v2, "pan"

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 588
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 589
    .local v1, "retVal":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 590
    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->getContextLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Ljava/util/Locale;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 592
    return-object v1
.end method

.method public getLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 634
    const/4 v2, 0x0

    .line 635
    .local v2, "properties":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 636
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .line 638
    .local v1, "languageLayout":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1600(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)[Ljava/lang/String;

    move-result-object v2

    .line 639
    if-eqz v2, :cond_0

    .line 644
    .end local v1    # "languageLayout":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_1
    return-object v2
.end method

.method public getLanguagePunctuations(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "inputVariation"    # I

    .prologue
    .line 720
    sparse-switch p2, :sswitch_data_0

    .line 727
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mMap:Ljava/util/Map;

    const v1, 0x7f0e0006

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getPunctuations(Ljava/lang/String;Ljava/util/Map;I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 724
    :sswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mEmailUriMap:Ljava/util/Map;

    const v1, 0x7f0e0005

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getPunctuations(Ljava/lang/String;Ljava/util/Map;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 720
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getLanguageSwapPunctuations(Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 733
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mSwapMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 734
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toCodePointStringArray([Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    return-object v1

    .line 734
    :cond_0
    const v1, 0x7f0e0007

    goto :goto_0
.end method

.method public getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 522
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    .line 523
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 524
    .local v0, "languageLayouts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 525
    .local v1, "layoutIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 526
    .local v2, "layoutIds":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 527
    .local v3, "result":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 528
    new-instance v4, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;

    invoke-direct {v4, p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 530
    :cond_0
    return-object v3
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 567
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 597
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 598
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v1

    .line 601
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSecondaryWritingLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 617
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1400(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v1

    .line 620
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTemplateLayoutXmlId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layoutId"    # Ljava/lang/String;

    .prologue
    .line 378
    :try_start_0
    const-string v3, "virtual-12key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$700(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    .line 398
    :goto_0
    return v3

    .line 381
    :cond_0
    const-string v3, "qwerty-es-eu-gl"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 383
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$700(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I

    move-result v3

    goto :goto_0

    .line 386
    :cond_1
    const/4 v2, 0x0

    .line 387
    .local v2, "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 388
    .local v1, "languageIsoCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 389
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .line 393
    .end local v1    # "languageIsoCode":Ljava/lang/String;
    .restart local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_3
    if-nez v2, :cond_4

    .line 394
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get template layoutId id for languageIso3:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->createLanguageLayoutNullPointerException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v3

    throw v3

    .line 398
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "returnValue":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
    :cond_4
    :try_start_1
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$700(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto/16 :goto_0
.end method

.method public getThirdWritingLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 625
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 626
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;"
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->access$1500(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;

    move-result-object v1

    .line 629
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValidWritingLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 536
    move-object v0, p1

    .line 538
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 540
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_1
    return-object v0
.end method

.method public hasForcedSecondaryPrints(Ljava/lang/String;)Z
    .locals 3
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "languageProperties":[Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "force-secondary-prints"

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 546
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->getContextLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 547
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayoutConfigStorage;->getLayoutConfig(Ljava/util/Locale;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    .line 548
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mUseCache:Z

    if-nez v1, :cond_1

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->inflateLanguageLayout()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    .line 550
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayoutConfigStorage;->addLayoutConfig(Ljava/util/Locale;Ljava/util/HashMap;)V

    .line 552
    :cond_1
    return-void
.end method

.method public isCaseLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 697
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "script":Ljava/lang/String;
    const-string v1, "latin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cyrillic"

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "greek"

    .line 700
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "armenian"

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedLanguageIso3(Ljava/lang/String;)Z
    .locals 1
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mLanguageLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupportedLayoutId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "layoutId"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getKeyboardLayoutName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTraceAllowedForLanguage(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "currentCase"    # I

    .prologue
    const/4 v0, 0x1

    .line 706
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->isCaseLanguage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hin"

    .line 707
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pan"

    .line 708
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tam"

    .line 709
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public languageHasSuperSetLayout(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iso3Language"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 894
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 918
    :cond_0
    :goto_0
    return v2

    .line 899
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "availableLayouts":[Ljava/lang/String;
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 907
    .local v1, "layout":Ljava/lang/String;
    const-string v5, "qwerty"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 906
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 909
    :cond_3
    const-string v5, "qwertz"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 911
    const-string v5, "azerty"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 913
    const-string v5, "virtual-12key"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 916
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setUseCache(Z)V
    .locals 0
    .param p1, "useCache"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->mUseCache:Z

    .line 109
    return-void
.end method
