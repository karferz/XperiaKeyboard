.class final enum Lcom/neovisionaries/i18n/LanguageAlpha3Code$117;
.super Lcom/neovisionaries/i18n/LanguageAlpha3Code;
.source "LanguageAlpha3Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/i18n/LanguageAlpha3Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "x0"    # Ljava/lang/String;

    .prologue
    .line 3464
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/neovisionaries/i18n/LanguageAlpha3Code;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/neovisionaries/i18n/LanguageAlpha3Code$1;)V

    return-void
.end method


# virtual methods
.method public getAlpha2()Lcom/neovisionaries/i18n/LanguageCode;
    .locals 1

    .prologue
    .line 3469
    sget-object v0, Lcom/neovisionaries/i18n/LanguageCode;->mi:Lcom/neovisionaries/i18n/LanguageCode;

    return-object v0
.end method

.method public getSynonym()Lcom/neovisionaries/i18n/LanguageAlpha3Code;
    .locals 1

    .prologue
    .line 3483
    sget-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$117;->mri:Lcom/neovisionaries/i18n/LanguageAlpha3Code;

    return-object v0
.end method

.method public getUsage()Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;
    .locals 1

    .prologue
    .line 3476
    sget-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->BIBLIOGRAPHY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    return-object v0
.end method
