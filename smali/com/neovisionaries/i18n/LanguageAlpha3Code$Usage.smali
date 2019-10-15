.class public final enum Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;
.super Ljava/lang/Enum;
.source "LanguageAlpha3Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/i18n/LanguageAlpha3Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

.field public static final enum BIBLIOGRAPHY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

.field public static final enum COMMON:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

.field public static final enum TERMINOLOGY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6003
    new-instance v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    const-string v1, "TERMINOLOGY"

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->TERMINOLOGY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    .line 6008
    new-instance v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    const-string v1, "BIBLIOGRAPHY"

    invoke-direct {v0, v1, v3}, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->BIBLIOGRAPHY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    .line 6014
    new-instance v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v4}, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->COMMON:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    .line 5998
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    sget-object v1, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->TERMINOLOGY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->BIBLIOGRAPHY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->COMMON:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->$VALUES:[Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5998
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5998
    const-class v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    return-object v0
.end method

.method public static values()[Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;
    .locals 1

    .prologue
    .line 5998
    sget-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->$VALUES:[Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    invoke-virtual {v0}, [Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    return-object v0
.end method
