.class final enum Lcom/neovisionaries/i18n/LocaleCode$5;
.super Lcom/neovisionaries/i18n/LocaleCode;
.source "LocaleCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/i18n/LocaleCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/neovisionaries/i18n/LanguageCode;Lcom/neovisionaries/i18n/CountryCode;)V
    .locals 6
    .param p3, "x0"    # Lcom/neovisionaries/i18n/LanguageCode;
    .param p4, "x1"    # Lcom/neovisionaries/i18n/CountryCode;

    .prologue
    .line 488
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/neovisionaries/i18n/LocaleCode;-><init>(Ljava/lang/String;ILcom/neovisionaries/i18n/LanguageCode;Lcom/neovisionaries/i18n/CountryCode;Lcom/neovisionaries/i18n/LocaleCode$1;)V

    return-void
.end method


# virtual methods
.method public toLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 493
    sget-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    return-object v0
.end method
