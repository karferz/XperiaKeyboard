.class public final enum Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;
.super Ljava/lang/Enum;
.source "InputModeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

.field public static final enum DRAGGING_FROM_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

.field public static final enum HOLDING_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

.field public static final enum HOLDING_TOGGLE_INSERTED_CHARACTER:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

.field public static final enum NONE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->NONE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    const-string v1, "HOLDING_TOGGLE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    const-string v1, "HOLDING_TOGGLE_INSERTED_CHARACTER"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE_INSERTED_CHARACTER:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    const-string v1, "DRAGGING_FROM_TOGGLE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->DRAGGING_FROM_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->NONE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE_INSERTED_CHARACTER:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->DRAGGING_FROM_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

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
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    return-object v0
.end method
