.class public Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView;
.super Landroid/view/View;
.source "WindowFocusTrackerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView;->mListener:Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;

    .line 27
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView;->mListener:Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView;->mListener:Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;->onWindowFocusChanged(Z)V

    .line 35
    :cond_0
    return-void
.end method
