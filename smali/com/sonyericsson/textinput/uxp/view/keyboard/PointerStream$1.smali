.class synthetic Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;
.super Ljava/lang/Object;
.source "PointerStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$State:[I

.field static final synthetic $SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$TouchAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->values()[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$TouchAction:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$TouchAction:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->DOWN:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$TouchAction:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->MOVE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$TouchAction:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->UP:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    .line 301
    :goto_2
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->values()[Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$State:[I

    :try_start_3
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$State:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$State:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$State:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->LONG_PRESS:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$State:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->MOVE_KEYBOARD:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    .line 260
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
