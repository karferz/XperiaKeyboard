.class public final enum Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;
.super Ljava/lang/Enum;
.source "SkinUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/util/SkinUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Skin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

.field public static final enum CLASSIC:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

.field public static final enum DARK:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

.field public static final enum LIGHT:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

.field public static final enum THEMED:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

.field public static final enum XPERIA_BLUE:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

.field public static final enum XPERIA_GREEN:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

.field public static final enum XPERIA_PINK:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

.field public static final enum XPERIA_PURPLE:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;


# instance fields
.field private final mSkinName:Ljava/lang/String;

.field private final mStringResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    const-string v1, "THEMED"

    const-string v2, "skin-themed"

    const v3, 0x7f07002c

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->THEMED:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    .line 99
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    const-string v1, "CLASSIC"

    const-string v2, "skin-classic"

    const v3, 0x7f070027

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->CLASSIC:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    .line 100
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    const-string v1, "LIGHT"

    const-string v2, "skin-light"

    const v3, 0x7f07002a

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->LIGHT:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    .line 101
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    const-string v1, "DARK"

    const-string v2, "skin-dark"

    const v3, 0x7f070028

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->DARK:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    .line 102
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    const-string v1, "XPERIA_BLUE"

    const-string v2, "skin-xperia-blue"

    const v3, 0x7f07002d

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->XPERIA_BLUE:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    .line 103
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    const-string v1, "XPERIA_GREEN"

    const/4 v2, 0x5

    const-string v3, "skin-xperia-green"

    const v4, 0x7f07002e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->XPERIA_GREEN:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    .line 104
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    const-string v1, "XPERIA_PINK"

    const/4 v2, 0x6

    const-string v3, "skin-xperia-pink"

    const v4, 0x7f07002f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->XPERIA_PINK:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    .line 105
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    const-string v1, "XPERIA_PURPLE"

    const/4 v2, 0x7

    const-string v3, "skin-xperia-purple"

    const v4, 0x7f070030

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->XPERIA_PURPLE:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    .line 97
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->THEMED:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->CLASSIC:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->LIGHT:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->DARK:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->XPERIA_BLUE:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->XPERIA_GREEN:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->XPERIA_PINK:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->XPERIA_PURPLE:Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->$VALUES:[Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "skinName"    # Ljava/lang/String;
    .param p4, "skinDisplayName"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->mSkinName:Ljava/lang/String;

    .line 112
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->mStringResource:I

    .line 113
    return-void
.end method

.method public static getAllSupportedSkinNames()[Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->values()[Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    move-result-object v0

    .line 123
    .local v0, "allSkins":[Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 124
    .local v2, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 125
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->getSkinName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->$VALUES:[Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    return-object v0
.end method


# virtual methods
.method public getSkinName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->mSkinName:Ljava/lang/String;

    return-object v0
.end method

.method public getStringResource()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->mStringResource:I

    return v0
.end method
