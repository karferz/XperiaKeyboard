.class public final enum Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;
.super Ljava/lang/Enum;
.source "KeyboardSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

.field public static final enum LEFT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

.field public static final enum RIGHT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 625
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .line 631
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->RIGHT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .line 620
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->RIGHT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

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
    .line 620
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 620
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    return-object v0
.end method
