.class final Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;
.super Ljava/lang/Object;
.source "BounceBackAnimator.java"


# static fields
.field private static final ANIMATION_DURATION:J = 0x4bL


# instance fields
.field private final mAnimatedView:Landroid/view/View;

.field private final mAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "animatedView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatedView:Landroid/view/View;

    .line 31
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    return-void
.end method


# virtual methods
.method public animateKeyboardToPosition(Landroid/graphics/PointF;Landroid/util/Pair;)V
    .locals 11
    .param p1, "screenEndPosition"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "offset":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 56
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    sub-float v0, v4, v2

    .line 58
    .local v0, "xPos":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_0
    sub-float v1, v4, v3

    .line 60
    .local v1, "yPos":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v10, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatedView:Landroid/view/View;

    const-string v5, "translationX"

    new-array v6, v10, [F

    aput v0, v6, v8

    iget v7, p1, Landroid/graphics/PointF;->x:F

    aput v7, v6, v9

    .line 61
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatedView:Landroid/view/View;

    const-string v5, "translationY"

    new-array v6, v10, [F

    aput v1, v6, v8

    iget v7, p1, Landroid/graphics/PointF;->y:F

    aput v7, v6, v9

    .line 62
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 60
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 63
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 64
    return-void

    .end local v0    # "xPos":F
    .end local v1    # "yPos":F
    :cond_1
    move v2, v3

    .line 56
    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 43
    :cond_0
    return-void
.end method
