.class public final Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;
.super Landroid/widget/FrameLayout;
.source "KeyboardSlider.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;
    }
.end annotation


# static fields
.field private static final BUTTON_FADE_DURATION:I = 0x46

.field private static final DIM_ANIMATION_DURATION:I = 0xc8

.field private static final DIM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SLIDE_DURATION:I = 0xc8


# instance fields
.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCandidateViewHeight:I

.field private final mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

.field private mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

.field private mEnabledStatusEffectedArea:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

.field private mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field private final mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsEmojiLayoutShown:Z

.field private mIsPredictionActivated:Z

.field private mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

.field private mKeyboardDivider:Landroid/view/View;

.field private mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

.field private mKeyboardSliderCandidateBar:Landroid/view/View;

.field private mLeftExpandButton:Landroid/view/View;

.field private mLeftSlideButton:Landroid/view/View;

.field private mRightExpandButton:Landroid/view/View;

.field private mRightSlideButton:Landroid/view/View;

.field private mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private final mSlideListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->REQUIRED:[Ljava/lang/Class;

    .line 82
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->DIM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 91
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSlideListeners:Ljava/util/Set;

    .line 102
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    invoke-super {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    .line 107
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .line 112
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 117
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatusEffectedArea:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 91
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSlideListeners:Ljava/util/Set;

    .line 102
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    invoke-super {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    .line 107
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .line 112
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 117
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatusEffectedArea:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 91
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSlideListeners:Ljava/util/Set;

    .line 102
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    invoke-super {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    .line 107
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .line 112
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 117
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatusEffectedArea:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .line 169
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->fireOnExpandKeyboard()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSlideListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatusEffectedArea:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->slideLeft()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->slideRight()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    return-object v0
.end method

.method private calculateKeyboardContainerHeight()I
    .locals 3

    .prologue
    .line 425
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mIsPredictionActivated:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mIsEmojiLayoutShown:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    const-string v2, "candidate_bar_height"

    .line 426
    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Ljava/lang/String;)I

    move-result v0

    .line 428
    .local v0, "candidateViewContainerHeight":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardHeightPx()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    .line 429
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getExtraHeight()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 426
    .end local v0    # "candidateViewContainerHeight":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateKeyboardContainerWidth()I
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardTotalSpanWidthPx()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    .line 421
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getExtraWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private ensureInitialized()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->initialize()V

    .line 211
    :cond_0
    return-void
.end method

.method private fireOnExpandKeyboard()V
    .locals 3

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setSlideButtonsDisabled()V

    .line 470
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSlideListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

    .line 471
    .local v0, "slideListener":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;->onExpandKeyboard()V

    goto :goto_0

    .line 473
    .end local v0    # "slideListener":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 179
    const v1, 0x7f0f00a6

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    .line 181
    const v1, 0x7f0f00b6

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    .line 182
    const v1, 0x7f0f00b7

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    .line 183
    const v1, 0x7f0f00b4

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    .line 184
    const v1, 0x7f0f00b5

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    .line 186
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;)V

    .line 187
    .local v0, "buttonClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v1, 0x7f0f00b2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardSliderCandidateBar:Landroid/view/View;

    .line 193
    const v1, 0x7f0f00b8

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardDivider:Landroid/view/View;

    .line 195
    return-void
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLeftAnimationRunning()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 252
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRightAnimationRunning()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 257
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExpandButtonsDisabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 226
    return-void
.end method

.method private setLeftButtonsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    return-void
.end method

.method private setRightButtonsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 221
    return-void
.end method

.method private setSlideButtonsDisabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    return-void
.end method

.method private slide(FFF)V
    .locals 12
    .param p1, "translationX"    # F
    .param p2, "leftButtonsAlpha"    # F
    .param p3, "rightButtonsAlpha"    # F

    .prologue
    const-wide/16 v10, 0x46

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 261
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    const-string v6, "translationX"

    new-array v7, v9, [F

    aput p1, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 263
    .local v4, "translateAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v9, [F

    aput p2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 268
    .local v2, "slideButtonFadeInAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v9, [F

    aput p2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 272
    .local v0, "expandButtonFadeInAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v9, [F

    aput p3, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 276
    .local v3, "slideButtonFadeOutAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v9, [F

    aput p3, v7, v8

    .line 279
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 281
    .local v1, "expandButtonFadeOutAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 284
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v4, v6, v8

    aput-object v2, v6, v9

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object v3, v6, v7

    const/4 v7, 0x4

    aput-object v1, v6, v7

    .line 286
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 289
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 290
    return-void
.end method

.method private slideLeft()V
    .locals 3

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->isLeftAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setExpandButtonsDisabled()V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->slide(FFF)V

    .line 237
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .line 239
    :cond_0
    return-void
.end method

.method private slideRight()V
    .locals 3

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->isRightAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setExpandButtonsDisabled()V

    .line 244
    invoke-super {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 245
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 244
    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->slide(FFF)V

    .line 246
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->RIGHT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .line 248
    :cond_0
    return-void
.end method

.method private updateAppearance()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_2

    .line 434
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mIsPredictionActivated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mIsEmojiLayoutShown:Z

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardSliderCandidateBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardSliderCandidateBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardSliderCandidateBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addSlideListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->ensureInitialized()V

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSlideListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    return-void
.end method

.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_1

    .line 295
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-ne p2, v0, :cond_0

    .line 297
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setLeftButtonsEnabled(Z)V

    .line 455
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setRightButtonsEnabled(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method public getCandidateViewHeight()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mCandidateViewHeight:I

    return v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    const v7, 0x7f02003c

    .line 313
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->ensureInitialized()V

    .line 315
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 317
    .local v1, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardDivider:Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v6, 0x7f0d00cc

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 319
    const v4, 0x7f020019

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 321
    .local v3, "sliderCandidateBarBackground":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v5, 0x7f0d010d

    .line 322
    invoke-interface {v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 321
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 324
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardSliderCandidateBar:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardSliderCandidateBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 326
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    const-string v5, "candidate_bar_height"

    .line 327
    invoke-interface {v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 328
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardSliderCandidateBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 330
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingOneHandedKeyboard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v5, 0x7f0d00de

    invoke-interface {v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v0

    .line 336
    .local v0, "color":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v4, v7}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 338
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v5, v7}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v5, v7}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v6, 0x7f020041

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 345
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v6, 0x7f020049

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 349
    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->NORMAL:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->updateBackground(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)V

    .line 351
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public onEnabledStatusChanged(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V
    .locals 8
    .param p1, "enabledStatus"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    .param p2, "enabledStatusEffectedArea"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v4, 0x2

    .line 567
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->ensureInitialized()V

    .line 569
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 570
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mEnabledStatusEffectedArea:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .line 572
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED_DIMMED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    if-ne p1, v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 574
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    const-string v3, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 578
    .local v0, "fadeInAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 579
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->DIM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 580
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 595
    .end local v0    # "fadeInAnimator":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    const-string v3, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 584
    .local v1, "fadeOutAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 585
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->DIM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 588
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 576
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 582
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public removeSlideListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->ensureInitialized()V

    .line 500
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSlideListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public setCandidateViewHeight(I)V
    .locals 0
    .param p1, "candidateViewHeight"    # I

    .prologue
    .line 613
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mCandidateViewHeight:I

    .line 614
    return-void
.end method

.method public setKeyboardMode(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;ZZ)V
    .locals 2
    .param p1, "floatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .param p2, "predictionActivated"    # Z
    .param p3, "isEmojiLayoutShown"    # Z

    .prologue
    .line 380
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 381
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mIsPredictionActivated:Z

    .line 382
    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mIsEmojiLayoutShown:Z

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->setKeyboardMode(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->updateSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 386
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->updateAppearance()V

    .line 387
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->updateLayoutContraints()V

    .line 388
    return-void
.end method

.method public setKeyboardPosition(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;)V
    .locals 10
    .param p1, "keyboardPosition"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 509
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->ensureInitialized()V

    .line 511
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    .line 513
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getTranslationX()F

    move-result v1

    .line 520
    .local v1, "initialTranslationX":F
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 521
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 524
    .local v2, "newTranslationX":F
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->setTranslationX(F)V

    .line 526
    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$2;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$KeyboardSlider$KeyboardPosition:[I

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardPosition:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 547
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Encountered unexpected child position."

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 521
    .end local v2    # "newTranslationX":F
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 522
    invoke-interface {v5}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v2, v4

    goto :goto_0

    .line 528
    .restart local v2    # "newTranslationX":F
    :pswitch_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 529
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 530
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 531
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 532
    invoke-direct {p0, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setLeftButtonsEnabled(Z)V

    .line 533
    invoke-direct {p0, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setRightButtonsEnabled(Z)V

    .line 554
    :goto_1
    cmpl-float v4, v1, v2

    if-eqz v4, :cond_1

    .line 555
    sub-float v4, v2, v1

    float-to-int v0, v4

    .line 557
    .local v0, "horizontalChange":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSlideListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

    .line 558
    .local v3, "slideListener":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;
    invoke-interface {v3, p1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;->onKeyboardPositionUpdate(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;I)V

    goto :goto_2

    .line 537
    .end local v0    # "horizontalChange":I
    .end local v3    # "slideListener":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;
    :pswitch_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftSlideButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 538
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mLeftExpandButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 539
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightSlideButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 540
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mRightExpandButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 541
    invoke-direct {p0, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setLeftButtonsEnabled(Z)V

    .line 542
    invoke-direct {p0, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setRightButtonsEnabled(Z)V

    goto :goto_1

    .line 561
    :cond_1
    return-void

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSplit(Z)V
    .locals 1
    .param p1, "split"    # Z

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mDimmerView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->setSplit(Z)V

    .line 466
    return-void
.end method

.method public updateBackground(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundType"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    .prologue
    .line 360
    const v2, 0x7f0f00b3

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 361
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 363
    .local v1, "oldBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 366
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "oldBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    :cond_0
    return-void
.end method

.method public updateLayoutContraints()V
    .locals 7

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->calculateKeyboardContainerWidth()I

    move-result v4

    .line 397
    .local v4, "newKeyboardContainerWidth":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->calculateKeyboardContainerHeight()I

    move-result v3

    .line 404
    .local v3, "newKeyboardContainerHeight":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v5, v6, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 407
    .local v2, "keyboardSliderWidth":I
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 408
    .local v1, "keyboardSliderParameters":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 409
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 411
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    .line 412
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 413
    .local v0, "keyboardContainerParameters":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 414
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 416
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 417
    return-void

    .end local v0    # "keyboardContainerParameters":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "keyboardSliderParameters":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "keyboardSliderWidth":I
    :cond_0
    move v2, v4

    .line 405
    goto :goto_0
.end method
