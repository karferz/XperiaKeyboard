.class public Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;
.super Landroid/widget/FrameLayout;
.source "KeyboardModeAnimationContainer.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer$EmptyToggleAnimation;
    }
.end annotation


# instance fields
.field private mFromFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field private mIsAnimationPrepared:Z

.field private mKeyboardModeAnimation:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;

.field private mKeyboardVisualization:Landroid/view/View;

.field private mToFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private getCopyOfKeyboardBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mKeyboardVisualization:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "animationBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFromFloatingKeyboardMode()Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mFromFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    return-object v0
.end method

.method public getToFloatingKeyboardMode()Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mToFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    return-object v0
.end method

.method public initialize(Landroid/view/View;)V
    .locals 2
    .param p1, "keyboardVisualization"    # Landroid/view/View;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mKeyboardVisualization:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer$EmptyToggleAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer$EmptyToggleAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mKeyboardModeAnimation:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;

    .line 81
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mIsAnimationPrepared:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->removeAllViews()V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mKeyboardModeAnimation:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;->initialize()V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mKeyboardModeAnimation:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;->getAnimationContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->addView(Landroid/view/View;)V

    .line 104
    :cond_0
    return-void
.end method

.method public isAnimationPrepared()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mIsAnimationPrepared:Z

    return v0
.end method

.method public prepareAnimation(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V
    .locals 3
    .param p1, "fromFloatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .param p2, "toFloatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->getCopyOfKeyboardBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, "startBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mKeyboardVisualization:Landroid/view/View;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mKeyboardModeAnimation:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mFromFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 92
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mToFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mIsAnimationPrepared:Z

    .line 95
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "startPosition"    # Landroid/graphics/PointF;
    .param p2, "endPosition"    # Landroid/graphics/PointF;

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mIsAnimationPrepared:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mKeyboardModeAnimation:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->getCopyOfKeyboardBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, "endBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mKeyboardModeAnimation:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;

    invoke-interface {v1, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;->startAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Bitmap;)V

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;->mIsAnimationPrepared:Z

    .line 67
    .end local v0    # "endBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
