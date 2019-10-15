.class public final enum Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;
.super Ljava/lang/Enum;
.source "KeyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

.field public static final enum AUXILIARY:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

.field public static final enum BASIC:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

.field public static final enum FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

.field public static final enum SPACE:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 384
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->BASIC:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    const-string v1, "AUXILIARY"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->AUXILIARY:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    const-string v1, "FUNCTION"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    const-string v1, "SPACE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->SPACE:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 383
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->BASIC:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->AUXILIARY:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->SPACE:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

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
    .line 383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    return-object v0
.end method
