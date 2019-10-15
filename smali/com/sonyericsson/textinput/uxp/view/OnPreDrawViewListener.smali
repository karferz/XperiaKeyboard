.class public Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;
.super Ljava/lang/Object;
.source "OnPreDrawViewListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mView:Landroid/view/View;

    .line 44
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mRunnable:Ljava/lang/Runnable;

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 46
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 54
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mView:Landroid/view/View;

    .line 55
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mRunnable:Ljava/lang/Runnable;

    .line 57
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->detach()V

    .line 65
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
