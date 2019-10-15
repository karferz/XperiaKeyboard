.class Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;
.super Ljava/lang/Object;
.source "KeyPopupAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;
    }
.end annotation


# instance fields
.field private mAlphas:[Landroid/animation/ValueAnimator;

.field private final mOnFinishedListener:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mTranslationAnimator:Landroid/animation/ValueAnimator;

.field private mWidthAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "onFinishedListener"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mOnFinishedListener:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;)Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mOnFinishedListener:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;

    return-object v0
.end method

.method private animateCandidateView(IIILandroid/view/View;)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "fromWidth"    # I
    .param p3, "toWidth"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 191
    invoke-virtual {p4, v1}, Landroid/view/View;->setScaleX(F)V

    .line 192
    invoke-virtual {p4, v1}, Landroid/view/View;->setScaleY(F)V

    .line 193
    invoke-virtual {p4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 195
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 196
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 198
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    invoke-virtual {p4}, Landroid/view/View;->getTranslationX()F

    move-result v1

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 205
    new-array v1, v6, [F

    invoke-virtual {p4}, Landroid/view/View;->getTranslationX()F

    move-result v2

    aput v2, v1, v4

    int-to-float v2, p1

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mTranslationAnimator:Landroid/animation/ValueAnimator;

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mTranslationAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$2;

    invoke-direct {v2, p0, p4}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    :cond_0
    new-array v1, v6, [F

    int-to-float v2, p2

    aput v2, v1, v4

    int-to-float v2, p3

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$3;

    invoke-direct {v2, p0, p4}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$3;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mTranslationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 232
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mTranslationAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 236
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 237
    return-void

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method private createHideAnimations(II)Landroid/view/animation/AnimationSet;
    .locals 11
    .param p1, "pivotX"    # I
    .param p2, "pivotY"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 265
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 269
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v2, v3, v4

    .line 271
    .local v2, "scaleTo":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    int-to-float v6, p1

    int-to-float v8, p2

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 275
    .local v0, "scaleAnimation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 276
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 280
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 281
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 284
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$4;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 300
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 301
    return-object v10
.end method

.method private createTabletShowAnimations(II)Landroid/view/animation/AnimationSet;
    .locals 11
    .param p1, "pivotX"    # I
    .param p2, "pivotY"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 243
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 244
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v1, v3, v4

    .line 246
    .local v1, "scaleFrom":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    int-to-float v6, p1

    int-to-float v8, p2

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 250
    .local v0, "scaleAnimation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 251
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 253
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 255
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 256
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 257
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 259
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 261
    return-object v10
.end method


# virtual methods
.method protected runAnimations(IIIIII[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;Z)V
    .locals 21
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "fromWidth"    # I
    .param p4, "toWidth"    # I
    .param p5, "height"    # I
    .param p6, "primaryCandidateIndex"    # I
    .param p7, "candidateItems"    # [Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;
    .param p8, "keyboardPopupWindow"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;
    .param p9, "isShowingCandidate"    # Z

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mTranslationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mTranslationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mTranslationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 156
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 166
    :cond_1
    move/from16 v0, p6

    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    move/from16 v0, p4

    int-to-float v5, v0

    mul-float/2addr v4, v5

    move-object/from16 v0, p7

    array-length v5, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int v19, p1, v4

    .line 169
    .local v19, "pivotX":I
    add-int v20, p2, p5

    .line 171
    .local v20, "pivotY":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->createHideAnimations(II)Landroid/view/animation/AnimationSet;

    move-result-object v10

    .line 173
    .local v10, "hide":Landroid/view/animation/Animation;
    if-nez p9, :cond_2

    .line 175
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->createTabletShowAnimations(II)Landroid/view/animation/AnimationSet;

    move-result-object v9

    .line 177
    .local v9, "show":Landroid/view/animation/Animation;
    const/4 v11, 0x0

    move-object/from16 v4, p8

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v4 .. v11}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->show(IIIILandroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;)V

    .line 183
    .end local v9    # "show":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 180
    :cond_2
    invoke-virtual/range {p8 .. p8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->animateCandidateView(IIILandroid/view/View;)V

    .line 181
    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p8

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v18}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->show(IIIILandroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setupAlphaAnimations(Landroid/view/ViewGroup;I)V
    .locals 11
    .param p1, "views"    # Landroid/view/ViewGroup;
    .param p2, "primaryViewIndex"    # I

    .prologue
    const v10, 0x7f0c0007

    const v9, 0x7f0c0006

    const/4 v4, 0x0

    .line 67
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    .line 68
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    .line 69
    .local v0, "alpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 70
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "alpha":Landroid/animation/ValueAnimator;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    new-array v5, v5, [Landroid/animation/ValueAnimator;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    .line 77
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 78
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    aput-object v6, v5, v2

    .line 79
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v2

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0c0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    move v1, v2

    .line 84
    .local v1, "current":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v2

    new-instance v6, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;Landroid/view/ViewGroup;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    .end local v1    # "current":I
    :cond_1
    move v3, p2

    .line 101
    .local v3, "j":I
    :goto_2
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 102
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    .line 103
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sub-int v8, v3, p2

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    .line 102
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 108
    :cond_2
    move v3, p2

    .line 109
    :goto_3
    if-ltz v3, :cond_3

    .line 110
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mResources:Landroid/content/res/Resources;

    .line 111
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sub-int v8, p2, v3

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    .line 110
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 114
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 118
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->mAlphas:[Landroid/animation/ValueAnimator;

    array-length v6, v5

    :goto_4
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 119
    .restart local v0    # "alpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 124
    .end local v0    # "alpha":Landroid/animation/ValueAnimator;
    :cond_4
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 125
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 127
    :cond_5
    return-void

    .line 78
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
