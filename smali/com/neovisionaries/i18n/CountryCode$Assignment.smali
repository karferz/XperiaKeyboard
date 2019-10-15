.class public final enum Lcom/neovisionaries/i18n/CountryCode$Assignment;
.super Ljava/lang/Enum;
.source "CountryCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/i18n/CountryCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Assignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/neovisionaries/i18n/CountryCode$Assignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum EXCEPTIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum INDETERMINATELY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum NOT_USED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum OFFICIALLY_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum TRANSITIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum USER_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2182
    new-instance v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v1, "OFFICIALLY_ASSIGNED"

    invoke-direct {v0, v1, v3}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2190
    new-instance v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v1, "USER_ASSIGNED"

    invoke-direct {v0, v1, v4}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->USER_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2198
    new-instance v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v1, "EXCEPTIONALLY_RESERVED"

    invoke-direct {v0, v1, v5}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2206
    new-instance v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v1, "TRANSITIONALLY_RESERVED"

    invoke-direct {v0, v1, v6}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2214
    new-instance v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v1, "INDETERMINATELY_RESERVED"

    invoke-direct {v0, v1, v7}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->INDETERMINATELY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2223
    new-instance v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v1, "NOT_USED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->NOT_USED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2174
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/neovisionaries/i18n/CountryCode$Assignment;

    sget-object v1, Lcom/neovisionaries/i18n/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neovisionaries/i18n/CountryCode$Assignment;->USER_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/neovisionaries/i18n/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/neovisionaries/i18n/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    aput-object v1, v0, v6

    sget-object v1, Lcom/neovisionaries/i18n/CountryCode$Assignment;->INDETERMINATELY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/neovisionaries/i18n/CountryCode$Assignment;->NOT_USED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->$VALUES:[Lcom/neovisionaries/i18n/CountryCode$Assignment;

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
    .line 2174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/i18n/CountryCode$Assignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2174
    const-class v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    return-object v0
.end method

.method public static values()[Lcom/neovisionaries/i18n/CountryCode$Assignment;
    .locals 1

    .prologue
    .line 2174
    sget-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->$VALUES:[Lcom/neovisionaries/i18n/CountryCode$Assignment;

    invoke-virtual {v0}, [Lcom/neovisionaries/i18n/CountryCode$Assignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/i18n/CountryCode$Assignment;

    return-object v0
.end method
