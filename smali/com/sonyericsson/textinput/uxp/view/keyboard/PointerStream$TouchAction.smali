.class public final enum Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;
.super Ljava/lang/Enum;
.source "PointerStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

.field public static final enum DOWN:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

.field public static final enum MOVE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

.field public static final enum UP:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 546
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->DOWN:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    .line 551
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->UP:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    .line 556
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->MOVE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    .line 542
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->DOWN:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->UP:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->MOVE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

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
    .line 542
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 542
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    return-object v0
.end method
