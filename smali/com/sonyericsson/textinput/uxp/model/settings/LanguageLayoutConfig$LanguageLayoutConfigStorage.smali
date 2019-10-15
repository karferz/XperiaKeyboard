.class abstract Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayoutConfigStorage;
.super Ljava/lang/Object;
.source "LanguageLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LanguageLayoutConfigStorage"
.end annotation


# static fields
.field private static final sLanguageLayoutConfigStorage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 975
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayoutConfigStorage;->sLanguageLayoutConfigStorage:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLayoutConfig(Ljava/util/Locale;Ljava/util/HashMap;)V
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
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
    .line 979
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;>;>;"
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayoutConfigStorage;->sLanguageLayoutConfigStorage:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    return-void
.end method

.method public static getLayoutConfig(Ljava/util/Locale;)Ljava/util/HashMap;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
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
    .line 984
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayoutConfigStorage;->sLanguageLayoutConfigStorage:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method
