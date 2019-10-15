.class Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
.super Ljava/lang/Object;
.source "KeyboardModeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardSubAnimation"
.end annotation


# instance fields
.field private mEndBitmap:Landroid/graphics/Bitmap;

.field private mEndImageView:Landroid/widget/ImageView;

.field private mEndView:Landroid/widget/FrameLayout;

.field private final mStartBitmap:Landroid/graphics/Bitmap;

.field private mStartImageView:Landroid/widget/ImageView;

.field private mSubContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "startBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartBitmap:Landroid/graphics/Bitmap;

    .line 391
    return-void
.end method

.method private createFrameLayoutWithListener(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;)Landroid/widget/FrameLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationLifeCycleListener"    # Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;

    .prologue
    .line 456
    if-eqz p2, :cond_0

    .line 457
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;)V

    .line 466
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public getEndBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStartBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStartImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSubContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mSubContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentContainer"    # Landroid/widget/FrameLayout;
    .param p3, "animationLifeCycleListener"    # Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;

    .prologue
    .line 430
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/ScalingImageView;

    invoke-direct {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/ScalingImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartImageView:Landroid/widget/ImageView;

    .line 431
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 433
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/ScalingImageView;

    invoke-direct {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/ScalingImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndImageView:Landroid/widget/ImageView;

    .line 434
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndView:Landroid/widget/FrameLayout;

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 437
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->createFrameLayoutWithListener(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mSubContainer:Landroid/widget/FrameLayout;

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mSubContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mSubContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mSubContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartBitmap:Landroid/graphics/Bitmap;

    .line 441
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 440
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mSubContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 443
    return-void
.end method

.method public recycleDrawables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mStartImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    return-void
.end method

.method public setEndBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "endBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 412
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndBitmap:Landroid/graphics/Bitmap;

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->mEndImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 414
    return-void
.end method
