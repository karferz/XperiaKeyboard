.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;
.super Ljava/lang/Object;
.source "InputModeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;,
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;
    }
.end annotation


# instance fields
.field private final mInitialInputMethod:Ljava/lang/String;

.field private mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "initialInputMethod"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mInitialInputMethod:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->NONE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    .line 27
    return-void
.end method


# virtual methods
.method public isAllowSpace()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE_INSERTED_CHARACTER:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageOrCaseToggle(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 98
    sparse-switch p1, :sswitch_data_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 101
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        -0xd -> :sswitch_0
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseEvent(Lcom/sonyericsson/ned/controller/EventObject;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;
    .locals 5
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;
    .param p2, "currentKeyboardMode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 30
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;-><init>()V

    .line 33
    .local v1, "result":Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mInitialInputMethod:Ljava/lang/String;

    const-string v4, "multitap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mInitialInputMethod:Ljava/lang/String;

    const-string v4, "singletap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    :cond_0
    const-string v2, "toggle-keyboard-mode"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->setChangeInputMode(Z)V

    .line 36
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->NONE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    .line 94
    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_1
    :goto_0
    return-object v1

    .line 38
    .restart local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_2
    const-string v2, "pending-symbols-mode"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "input-mode-symbols"

    .line 39
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 40
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    .line 42
    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->setChangeInputMode(Z)V

    goto :goto_0

    .line 43
    :cond_3
    const-string v2, "drag-select-symbols-mode"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE_INSERTED_CHARACTER:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    if-ne v2, v4, :cond_5

    .line 46
    :cond_4
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->DRAGGING_FROM_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    goto :goto_0

    .line 47
    :cond_5
    const-string v2, "toggle-keyboard-mode"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 50
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->NONE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    if-eq v2, v4, :cond_6

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE_INSERTED_CHARACTER:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    if-ne v2, v4, :cond_7

    :cond_6
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->setChangeInputMode(Z)V

    .line 52
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->NONE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    goto :goto_0

    .line 50
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 53
    :cond_8
    instance-of v2, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v2, :cond_a

    move-object v2, p1

    check-cast v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 54
    invoke-virtual {v2}, Lcom/sonyericsson/ned/controller/VirtualKey;->getActionType()I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_a

    .line 56
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    if-ne v2, v4, :cond_9

    .line 58
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->HOLDING_TOGGLE_INSERTED_CHARACTER:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    goto :goto_0

    .line 59
    :cond_9
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->DRAGGING_FROM_TOGGLE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    if-ne v2, v4, :cond_1

    .line 61
    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->setChangeInputMode(Z)V

    .line 62
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->NONE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    goto :goto_0

    .line 64
    :cond_a
    const-string v2, "command-key-released"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/Command;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 68
    .local v0, "releasedCommandKeyCode":I
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$1;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$keyboard$InputModeState$State:[I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 70
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->isPageOrCaseToggle(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 71
    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->setChangeInputMode(Z)V

    .line 73
    :cond_b
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;->NONE:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->mState:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$State;

    goto/16 :goto_0

    .line 82
    :pswitch_1
    const-string v2, "input-mode-symbols"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x4

    if-ne v0, v2, :cond_1

    .line 84
    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->setChangeInputMode(Z)V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
