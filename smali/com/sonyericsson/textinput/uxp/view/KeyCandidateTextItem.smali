.class public Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;
.super Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;
.source "KeyCandidateTextItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$TranslateAnimatorListener;
    }
.end annotation


# static fields
.field private static final COLOR_ANIMATION_DURATION:J = 0xf0L

.field private static final TRANSLATE_ANIMATION_DURATION:I = 0x78


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHighlightAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHighlightColorAnim:Landroid/animation/ValueAnimator;

.field private final mHighlightStyleId:I

.field private mHighlightTranslateAnim:Landroid/animation/ValueAnimator;

.field private final mNormalStyleId:I

.field private final mTextView:Landroid/widget/TextView;

.field private final mTypefaceBold:Landroid/graphics/Typeface;

.field private final mTypefaceNormal:Landroid/graphics/Typeface;

.field private final mUnHighlightAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUnHighlightColorAnim:Landroid/animation/ValueAnimator;

.field private mUnHighlightTranslateAnim:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;ZLandroid/content/Context;Landroid/graphics/Typeface;Landroid/graphics/Typeface;IIIZLcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "textIsSmall"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "typefaceNormal"    # Landroid/graphics/Typeface;
    .param p5, "typefaceBold"    # Landroid/graphics/Typeface;
    .param p6, "normalColor"    # I
    .param p7, "highlightColor"    # I
    .param p8, "candidateHighlightHeightOffset"    # I
    .param p9, "isOneHandedKeyboard"    # Z
    .param p10, "floatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;-><init>(Landroid/view/View;)V

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTextView:Landroid/widget/TextView;

    .line 47
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mContext:Landroid/content/Context;

    .line 48
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTypefaceNormal:Landroid/graphics/Typeface;

    .line 49
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTypefaceBold:Landroid/graphics/Typeface;

    .line 50
    invoke-direct {p0, p6, p7, p8}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->setupAnimations(III)V

    .line 51
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightTranslateAnim:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightColorAnim:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 53
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightTranslateAnim:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightColorAnim:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 55
    if-eqz p2, :cond_3

    .line 56
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p10, v0, :cond_0

    .line 57
    const v0, 0x7f0b0045

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mNormalStyleId:I

    .line 58
    const v0, 0x7f0b003d

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightStyleId:I

    .line 84
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p10, v0, :cond_1

    .line 60
    const v0, 0x7f0b004a

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mNormalStyleId:I

    .line 61
    const v0, 0x7f0b0042

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightStyleId:I

    goto :goto_0

    .line 62
    :cond_1
    if-eqz p9, :cond_2

    .line 63
    const v0, 0x7f0b0047

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mNormalStyleId:I

    .line 64
    const v0, 0x7f0b003f

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightStyleId:I

    goto :goto_0

    .line 66
    :cond_2
    const v0, 0x7f0b0048

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mNormalStyleId:I

    .line 67
    const v0, 0x7f0b0040

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightStyleId:I

    goto :goto_0

    .line 70
    :cond_3
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p10, v0, :cond_4

    .line 71
    const v0, 0x7f0b0044

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mNormalStyleId:I

    .line 72
    const v0, 0x7f0b003c

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightStyleId:I

    goto :goto_0

    .line 73
    :cond_4
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p10, v0, :cond_5

    .line 74
    const v0, 0x7f0b0049

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mNormalStyleId:I

    .line 75
    const v0, 0x7f0b0041

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightStyleId:I

    goto :goto_0

    .line 76
    :cond_5
    if-eqz p9, :cond_6

    .line 77
    const v0, 0x7f0b0046

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mNormalStyleId:I

    .line 78
    const v0, 0x7f0b003e

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightStyleId:I

    goto :goto_0

    .line 80
    :cond_6
    const v0, 0x7f0b0043

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mNormalStyleId:I

    .line 81
    const v0, 0x7f0b003b

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightStyleId:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->setNormalAppearance()V

    return-void
.end method

.method private getColorAnimation(II)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "fromColor"    # I
    .param p2, "toColor"    # I

    .prologue
    .line 131
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 132
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 131
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 133
    .local v0, "colorAnimation":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    return-object v0
.end method

.method private getTranslateAnimation(II)Landroid/animation/ValueAnimator;
    .locals 6
    .param p1, "fromY"    # I
    .param p2, "toY"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTextView:Landroid/widget/TextView;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, p1

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, p2

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 125
    .local v0, "translateAnimation":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    return-object v0
.end method

.method private setHighlightedAppearance()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightStyleId:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/TextViewUtil;->setTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    return-void
.end method

.method private setNormalAppearance()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mNormalStyleId:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/TextViewUtil;->setTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mTypefaceNormal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    return-void
.end method

.method private setupAnimations(III)V
    .locals 4
    .param p1, "normalColor"    # I
    .param p2, "highlightColor"    # I
    .param p3, "candidateHighlightHeightOffset"    # I

    .prologue
    const/4 v3, 0x0

    .line 105
    neg-int v0, p3

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->getTranslateAnimation(II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightTranslateAnim:Landroid/animation/ValueAnimator;

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$TranslateAnimatorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$TranslateAnimatorListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    neg-int v0, p3

    invoke-direct {p0, v3, v0}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->getTranslateAnimation(II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightTranslateAnim:Landroid/animation/ValueAnimator;

    .line 108
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->getColorAnimation(II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightColorAnim:Landroid/animation/ValueAnimator;

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->getColorAnimation(II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightColorAnim:Landroid/animation/ValueAnimator;

    .line 110
    return-void
.end method


# virtual methods
.method public highlight()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->setHighlightedAppearance()V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 101
    return-void
.end method

.method public unHighlight()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->mUnHighlightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 92
    return-void
.end method
