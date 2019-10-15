.class final Lcom/sonyericsson/textinput/uxp/view/grid/WatchfulAnimationListener;
.super Ljava/lang/Object;
.source "WatchfulAnimationListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private mAnimationCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/WatchfulAnimationListener;->mAnimationCount:I

    return-void
.end method


# virtual methods
.method isAnimating()Z
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/WatchfulAnimationListener;->mAnimationCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 44
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/WatchfulAnimationListener;->mAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/WatchfulAnimationListener;->mAnimationCount:I

    .line 45
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 39
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/WatchfulAnimationListener;->mAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/WatchfulAnimationListener;->mAnimationCount:I

    .line 40
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 50
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 34
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/WatchfulAnimationListener;->mAnimationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/WatchfulAnimationListener;->mAnimationCount:I

    .line 35
    return-void
.end method
