.class public Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;
.super Ljava/lang/Object;
.source "KeyboardModeAnimation.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;
.implements Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static final DEFAULT_INTERPOLATOR_TENSION:F = 0.6f


# instance fields
.field private mAnimatorContainer:Landroid/widget/FrameLayout;

.field private final mFromFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private final mIsAnySplit:Z

.field private mIsInitialized:Z

.field private final mKeyboardSubAnimations:[Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

.field private final mKeyboardVisualizationContainer:Landroid/view/View;

.field private final mToFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V
    .locals 5
    .param p1, "keyboardVisualizationContainer"    # Landroid/view/View;
    .param p2, "startBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "fromFloatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .param p4, "toFloatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mIsInitialized:Z

    .line 103
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardVisualizationContainer:Landroid/view/View;

    .line 104
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mFromFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 105
    invoke-static {p4}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mToFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 107
    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-eq p3, v3, :cond_0

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p4, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mIsAnySplit:Z

    .line 109
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, p3}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->createBitMapsArray(Landroid/graphics/Bitmap;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)[Landroid/graphics/Bitmap;

    move-result-object v2

    .line 111
    .local v2, "startBitmaps":[Landroid/graphics/Bitmap;
    array-length v3, v2

    new-array v3, v3, [Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardSubAnimations:[Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 113
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    aget-object v3, v2, v0

    invoke-direct {v1, v3}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .local v1, "keyboardSubAnimation":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardSubAnimations:[Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    aput-object v1, v3, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "keyboardSubAnimation":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    .end local v2    # "startBitmaps":[Landroid/graphics/Bitmap;
    :cond_1
    move v3, v4

    .line 107
    goto :goto_0

    .line 118
    .restart local v0    # "i":I
    .restart local v2    # "startBitmaps":[Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method private createAlphaAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 308
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 309
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 310
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 311
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 312
    return-object v0
.end method

.method private createBitMapsArray(Landroid/graphics/Bitmap;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)[Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bitmapFloatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    .line 161
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mIsAnySplit:Z

    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/graphics/Bitmap;

    .line 163
    .local v0, "bitmaps":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 169
    :goto_0
    return-object v0

    .line 165
    .end local v0    # "bitmaps":[Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p2, v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->getSplitWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->getSplitKeyboardBitmaps(Landroid/graphics/Bitmap;I)[Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmaps":[Landroid/graphics/Bitmap;
    :goto_1
    goto :goto_0

    .end local v0    # "bitmaps":[Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->splitBitmap(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private createInterpolator()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mFromFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_0

    .line 289
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->getInterpolatorTension()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->getInterpolatorTension()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private createScaleAndTranslateAnimation(Landroid/graphics/PointF;IILandroid/graphics/PointF;II)Landroid/view/animation/Animation;
    .locals 12
    .param p1, "startPosition"    # Landroid/graphics/PointF;
    .param p2, "startWidth"    # I
    .param p3, "startHeight"    # I
    .param p4, "endPosition"    # Landroid/graphics/PointF;
    .param p5, "endWidth"    # I
    .param p6, "endHeight"    # I

    .prologue
    .line 329
    move/from16 v0, p5

    int-to-float v2, v0

    int-to-float v3, p2

    div-float v4, v2, v3

    .line 330
    .local v4, "widthScale":F
    move/from16 v0, p6

    int-to-float v2, v0

    int-to-float v3, p3

    div-float v6, v2, v3

    .line 332
    .local v6, "heightScale":F
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 333
    .local v11, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 335
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 337
    const-wide/16 v2, 0x190

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 338
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 339
    return-object v11
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardVisualizationContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getInterpolatorTension()F
    .locals 1

    .prologue
    .line 301
    const v0, 0x3f19999a    # 0.6f

    return v0
.end method

.method private getPosition(Landroid/util/DisplayMetrics;Landroid/graphics/PointF;ILcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;Z)Landroid/graphics/PointF;
    .locals 3
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "containerPosition"    # Landroid/graphics/PointF;
    .param p3, "subAnimationWidth"    # I
    .param p4, "subFloatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .param p5, "isLeftmostAnimation"    # Z

    .prologue
    .line 273
    if-eqz p5, :cond_0

    .line 281
    .end local p2    # "containerPosition":Landroid/graphics/PointF;
    :goto_0
    return-object p2

    .line 278
    .restart local p2    # "containerPosition":Landroid/graphics/PointF;
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p4, v1, :cond_1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    int-to-float v2, p3

    add-float v0, v1, v2

    .line 281
    .local v0, "rightSideX":F
    :goto_1
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object p2, v1

    goto :goto_0

    .line 278
    .end local v0    # "rightSideX":F
    :cond_1
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, p3

    int-to-float v0, v1

    goto :goto_1
.end method

.method private static getSplitKeyboardBitmaps(Landroid/graphics/Bitmap;I)[Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "splitKeyboardWidth"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v0, v1, p1

    .line 122
    .local v0, "rightSplitStart":I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->splitBitmap(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getSplitWidth()I
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardVisualizationContainer:Landroid/view/View;

    const v1, 0x7f0f00a6

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getSplitWidth()I

    move-result v0

    return v0
.end method

.method private recycleDrawables()V
    .locals 4

    .prologue
    .line 361
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardSubAnimations:[Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 362
    .local v0, "keyboardSubAnimation":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->recycleDrawables()V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "keyboardSubAnimation":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAnimationContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mAnimatorContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public initialize()V
    .locals 9

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 188
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$1;

    invoke-direct {v5, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mAnimatorContainer:Landroid/widget/FrameLayout;

    .line 196
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mAnimatorContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 197
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->createInterpolator()V

    .line 199
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardSubAnimations:[Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 200
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardSubAnimations:[Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    aget-object v4, v5, v3

    .line 202
    .local v4, "keyboardSubAnimation":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardSubAnimations:[Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    move-object v0, p0

    .line 204
    .local v0, "animationLifeCycleListener":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mAnimatorContainer:Landroid/widget/FrameLayout;

    .line 205
    invoke-virtual {v4, v1, v5, v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->initialize(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;)V

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "animationLifeCycleListener":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 208
    .end local v4    # "keyboardSubAnimation":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 209
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mAnimatorContainer:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mIsInitialized:Z

    .line 213
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mIsInitialized:Z

    return v0
.end method

.method public onPostAnimationEnd()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->recycleDrawables()V

    .line 355
    return-void
.end method

.method public onPreAnimationEnd()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardVisualizationContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mAnimatorContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 348
    return-void
.end method

.method public startAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Bitmap;)V
    .locals 21
    .param p1, "startPosition"    # Landroid/graphics/PointF;
    .param p2, "endPosition"    # Landroid/graphics/PointF;
    .param p3, "endBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mIsInitialized:Z

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 223
    .local v16, "context":Landroid/content/Context;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 225
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mToFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->createBitMapsArray(Landroid/graphics/Bitmap;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)[Landroid/graphics/Bitmap;

    move-result-object v17

    .line 226
    .local v17, "endBitmaps":[Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->createAlphaAnimation()Landroid/view/animation/Animation;

    move-result-object v15

    .line 227
    .local v15, "alphaAnimation":Landroid/view/animation/Animation;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardSubAnimations:[Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardSubAnimations:[Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    aget-object v19, v2, v18

    .line 229
    .local v19, "keyboardSubAnimation":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    aget-object v2, v17, v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->setEndBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    if-nez v18, :cond_0

    const/4 v7, 0x1

    .line 233
    .local v7, "isLeftAnimation":Z
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->getStartBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mFromFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 232
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->getPosition(Landroid/util/DisplayMetrics;Landroid/graphics/PointF;ILcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;Z)Landroid/graphics/PointF;

    move-result-object v9

    .line 235
    .local v9, "subStartPosition":Landroid/graphics/PointF;
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->getStartImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    .line 236
    .local v10, "subStartWidth":I
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->getStartImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v11

    .line 238
    .local v11, "subStartHeight":I
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->getEndBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mToFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    .line 237
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->getPosition(Landroid/util/DisplayMetrics;Landroid/graphics/PointF;ILcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;Z)Landroid/graphics/PointF;

    move-result-object v12

    .line 240
    .local v12, "subEndPosition":Landroid/graphics/PointF;
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->getEndBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 241
    .local v13, "subEndWidth":I
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->getEndBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .local v14, "subEndHeight":I
    move-object/from16 v8, p0

    .line 243
    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->createScaleAndTranslateAnimation(Landroid/graphics/PointF;IILandroid/graphics/PointF;II)Landroid/view/animation/Animation;

    move-result-object v20

    .line 247
    .local v20, "scaleAndTranslateAnimation":Landroid/view/animation/Animation;
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->getSubContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->getStartImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 231
    .end local v7    # "isLeftAnimation":Z
    .end local v9    # "subStartPosition":Landroid/graphics/PointF;
    .end local v10    # "subStartWidth":I
    .end local v11    # "subStartHeight":I
    .end local v12    # "subEndPosition":Landroid/graphics/PointF;
    .end local v13    # "subEndWidth":I
    .end local v14    # "subEndHeight":I
    .end local v20    # "scaleAndTranslateAnimation":Landroid/view/animation/Animation;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 252
    .end local v19    # "keyboardSubAnimation":Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mAnimatorContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mKeyboardVisualizationContainer:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v15    # "alphaAnimation":Landroid/view/animation/Animation;
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "endBitmaps":[Landroid/graphics/Bitmap;
    .end local v18    # "i":I
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->mIsInitialized:Z

    .line 257
    return-void
.end method
