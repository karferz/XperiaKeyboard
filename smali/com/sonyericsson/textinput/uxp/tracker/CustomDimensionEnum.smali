.class public final enum Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;
.super Ljava/lang/Enum;
.source "CustomDimensionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

.field public static final enum BUILD_ID:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

.field public static final enum BUILD_MODEL:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

.field public static final enum BUILD_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

.field public static final enum IS_THEME_AFFECTING_KEYBOARD:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

.field public static final enum LOGIN_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

.field public static final enum SAMPLE_RATE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

.field public static final enum THEME_BACKGROUND_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

.field public static final enum THEME_ID:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;


# instance fields
.field private final mId:I

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 15
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    const-string v1, "BUILD_MODEL"

    const/4 v2, 0x0

    const-string v3, "gagtm-deviceBuildModel"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->BUILD_MODEL:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 20
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    const-string v1, "BUILD_ID"

    const-string v2, "gagtm-deviceBuildId"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->BUILD_ID:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 26
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    const-string v1, "SAMPLE_RATE"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->SAMPLE_RATE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 31
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    const-string v1, "BUILD_TYPE"

    const-string v2, "gagtm-deviceBuildType"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->BUILD_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 36
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    const-string v1, "LOGIN_TYPE"

    const-string v2, "gagtm-loginType"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->LOGIN_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 41
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    const-string v1, "THEME_ID"

    const/4 v2, 0x6

    const-string v3, "gagtm-themeId"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->THEME_ID:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 46
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    const-string v1, "IS_THEME_AFFECTING_KEYBOARD"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "gagtm-isThemeAffectingKeyboard"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->IS_THEME_AFFECTING_KEYBOARD:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 51
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    const-string v1, "THEME_BACKGROUND_TYPE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "gagtm-themeBackgroundType"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->THEME_BACKGROUND_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->BUILD_MODEL:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->BUILD_ID:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->SAMPLE_RATE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->BUILD_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->LOGIN_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->THEME_ID:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->IS_THEME_AFFECTING_KEYBOARD:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->THEME_BACKGROUND_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "newId"    # I
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->mId:I

    .line 58
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->mKey:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->mId:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->mKey:Ljava/lang/String;

    return-object v0
.end method
