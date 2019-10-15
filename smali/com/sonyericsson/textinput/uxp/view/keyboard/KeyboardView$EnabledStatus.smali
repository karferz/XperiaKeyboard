.class public final enum Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
.super Ljava/lang/Enum;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnabledStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

.field public static final enum DISABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

.field public static final enum DISABLED_DIMMED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

.field public static final enum ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2152
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 2158
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 2165
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    const-string v1, "DISABLED_DIMMED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED_DIMMED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 2148
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED_DIMMED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

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
    .line 2148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2148
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    .locals 1

    .prologue
    .line 2148
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    return-object v0
.end method
