.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;
.super Ljava/lang/Object;
.source "InputModeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputModeChange"
.end annotation


# instance fields
.field private mChangeInputMode:Z

.field private mHandledEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->mChangeInputMode:Z

    .line 123
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->mHandledEvent:Z

    .line 124
    return-void
.end method


# virtual methods
.method public isChangeInputMode()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->mChangeInputMode:Z

    return v0
.end method

.method public isHandledEvent()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->mHandledEvent:Z

    return v0
.end method

.method public setChangeInputMode(Z)V
    .locals 0
    .param p1, "changeInputMode"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->mChangeInputMode:Z

    .line 132
    return-void
.end method

.method public setHandledEvent(Z)V
    .locals 0
    .param p1, "handledEvent"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->mHandledEvent:Z

    .line 140
    return-void
.end method
