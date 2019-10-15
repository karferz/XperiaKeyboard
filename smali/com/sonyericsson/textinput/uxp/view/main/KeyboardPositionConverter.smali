.class final Lcom/sonyericsson/textinput/uxp/view/main/KeyboardPositionConverter;
.super Ljava/lang/Object;
.source "KeyboardPositionConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static fromViewSliderChildPosition(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;
    .locals 2
    .param p0, "position"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .prologue
    .line 51
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/KeyboardPositionConverter$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$KeyboardSlider$KeyboardPosition:[I

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Encountered unexpected child position."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 53
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    .line 56
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->RIGHT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static toKeyboardSliderKeyboardPosition(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;
    .locals 2
    .param p0, "position"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/KeyboardPositionConverter$1;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$OneHandedKeyboardPosition:[I

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 39
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Encountered unexpected keyboard position."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 32
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .line 35
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->RIGHT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
