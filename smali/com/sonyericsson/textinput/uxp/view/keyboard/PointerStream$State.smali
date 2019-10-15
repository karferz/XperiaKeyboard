.class final enum Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;
.super Ljava/lang/Enum;
.source "PointerStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

.field public static final enum LONG_PRESS:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

.field public static final enum MOVE_KEYBOARD:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

.field public static final enum NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

.field public static final enum TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 520
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 525
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 530
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    const-string v1, "LONG_PRESS"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->LONG_PRESS:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 535
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    const-string v1, "MOVE_KEYBOARD"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->MOVE_KEYBOARD:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 515
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->LONG_PRESS:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->MOVE_KEYBOARD:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

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
    .line 515
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 515
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    return-object v0
.end method
