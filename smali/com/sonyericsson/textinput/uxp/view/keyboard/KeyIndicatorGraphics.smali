.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
.super Ljava/lang/Object;
.source "KeyIndicatorGraphics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;
    }
.end annotation


# static fields
.field private static final DELAY_BEFORE_START:Z = true


# instance fields
.field private mAnimating:Z

.field private mAnimationStarted:Z

.field private mDelayBeforeStart:Z

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mId:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mLightDownDuration:F

.field private final mLightStayDuration:F

.field private final mLightUpDuration:F

.field private mRepeatProgress:I

.field private mStartTime:J

.field private final mStartupDelay:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # I
    .param p3, "animationAttributes"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "where"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget v0, p3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->glowDrawableResId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 42
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 50
    :goto_0
    iget v0, p3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->repeatCount:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mRepeatProgress:I

    .line 51
    iget v0, p3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->startupDelay:F

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mStartupDelay:F

    .line 52
    iget v0, p3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->lightUpDuration:F

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightUpDuration:F

    .line 53
    iget v0, p3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->lightStayDuration:F

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightStayDuration:F

    .line 54
    iget v0, p3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->lightDownDuration:F

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightDownDuration:F

    .line 55
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mId:I

    .line 58
    invoke-direct {p0, p4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->setLocation(Landroid/graphics/Rect;)V

    .line 59
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getDarkAccentColor(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private setLocation(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "where"    # Landroid/graphics/Rect;

    .prologue
    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 79
    .local v0, "glowPadding":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 80
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v2, v5, v6

    .line 81
    .local v2, "w":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v1, v5, v6

    .line 82
    .local v1, "h":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v5, v6

    .line 83
    .local v3, "x":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v5, v6

    .line 84
    .local v4, "y":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v6, v3, v2

    add-int v7, v4, v1

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    return-void
.end method


# virtual methods
.method public animate()Z
    .locals 12

    .prologue
    const v11, 0x49742400    # 1000000.0f

    const/4 v5, 0x1

    const/high16 v10, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    .line 88
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mAnimating:Z

    if-nez v6, :cond_0

    .line 123
    :goto_0
    return v4

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v3, v6, v7

    .line 93
    .local v3, "time":F
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDelayBeforeStart:Z

    if-eqz v6, :cond_2

    .line 94
    const/4 v0, 0x0

    .line 108
    .local v0, "alpha":F
    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 109
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDelayBeforeStart:Z

    if-eqz v6, :cond_6

    .line 110
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mStartupDelay:F

    cmpl-float v6, v3, v6

    if-lez v6, :cond_1

    .line 111
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDelayBeforeStart:Z

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mStartTime:J

    :cond_1
    move v4, v5

    .line 114
    goto :goto_0

    .line 95
    .end local v0    # "alpha":F
    :cond_2
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightUpDuration:F

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    .line 96
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightUpDuration:F

    div-float v2, v3, v6

    .line 97
    .local v2, "progress":F
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 98
    .local v1, "alphaProgress":F
    mul-float v0, v1, v10

    .line 99
    .restart local v0    # "alpha":F
    goto :goto_1

    .end local v0    # "alpha":F
    .end local v1    # "alphaProgress":F
    .end local v2    # "progress":F
    :cond_3
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightUpDuration:F

    sub-float v6, v3, v6

    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightStayDuration:F

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightStayDuration:F

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_5

    .line 101
    :cond_4
    const/high16 v0, 0x437f0000    # 255.0f

    .restart local v0    # "alpha":F
    goto :goto_1

    .line 103
    .end local v0    # "alpha":F
    :cond_5
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightUpDuration:F

    sub-float v6, v3, v6

    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightStayDuration:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightDownDuration:F

    div-float v2, v6, v7

    .line 105
    .restart local v2    # "progress":F
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 106
    .restart local v1    # "alphaProgress":F
    mul-float v6, v1, v10

    sub-float v0, v10, v6

    .restart local v0    # "alpha":F
    goto :goto_1

    .line 115
    .end local v1    # "alphaProgress":F
    .end local v2    # "progress":F
    :cond_6
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightUpDuration:F

    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightStayDuration:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightDownDuration:F

    add-float/2addr v6, v7

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_7

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mLightStayDuration:F

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_8

    :cond_7
    move v4, v5

    .line 117
    goto :goto_0

    .line 118
    :cond_8
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mRepeatProgress:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mRepeatProgress:I

    if-lez v6, :cond_9

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mStartTime:J

    move v4, v5

    .line 120
    goto/16 :goto_0

    .line 122
    :cond_9
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mAnimating:Z

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    return-void
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 137
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mId:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mAnimating:Z

    return v0
.end method

.method public isAnimationStarted()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mAnimationStarted:Z

    return v0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mStartTime:J

    .line 66
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mDelayBeforeStart:Z

    .line 67
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mAnimating:Z

    .line 68
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->mAnimationStarted:Z

    .line 69
    return-void
.end method
