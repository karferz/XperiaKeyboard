.class final Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer$EmptyToggleAnimation;
.super Ljava/lang/Object;
.source "KeyboardModeAnimationContainer.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyToggleAnimation"
.end annotation


# instance fields
.field private final mEmptyAnimationContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer$EmptyToggleAnimation;->mEmptyAnimationContainer:Landroid/view/View;

    .line 112
    return-void
.end method


# virtual methods
.method public getAnimationContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer$EmptyToggleAnimation;->mEmptyAnimationContainer:Landroid/view/View;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public startAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "startPosition"    # Landroid/graphics/PointF;
    .param p2, "endPosition"    # Landroid/graphics/PointF;
    .param p3, "endBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    return-void
.end method
