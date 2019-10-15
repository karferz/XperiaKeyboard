.class public abstract Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener$EmptyImp;
.super Ljava/lang/Object;
.source "OnVirtualKeyboardActionListener.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EmptyImp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 104
    return-void
.end method

.method public onLongPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 100
    return-void
.end method

.method public onMoveTo(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 112
    return-void
.end method

.method public onPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 88
    return-void
.end method

.method public onRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 92
    return-void
.end method

.method public onRepeat(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 96
    return-void
.end method

.method public onTrace(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 108
    return-void
.end method
