.class public final Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
.super Landroid/widget/FrameLayout;
.source "MainContainer.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;,
        Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;,
        Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;,
        Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;
    }
.end annotation


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mBindableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceBackAnimator:Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;

.field private mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

.field private mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

.field private mContentContainer:Landroid/widget/FrameLayout;

.field private final mDeferredInitializer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

.field private mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

.field private mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field private mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

.field public mKeyboardInitialized:Z

.field private mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

.field private mKeyboardPositioningRect:Landroid/graphics/Rect;

.field private mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

.field private mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private final mWindowVisibleDisplayFrameRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mWindowVisibleDisplayFrameRect:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;-><init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mDeferredInitializer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mWindowVisibleDisplayFrameRect:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;-><init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mDeferredInitializer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mWindowVisibleDisplayFrameRect:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;-><init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mDeferredInitializer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    .line 190
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mWindowVisibleDisplayFrameRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->isTablet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardPositioningRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardPositioningRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Landroid/graphics/PointF;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->setMiniKeyboardScreenPosition(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBounceBackAnimator:Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->isFullScreenModeActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Landroid/graphics/PointF;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->setMiniKeyboardRelativePosition(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mContentContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/ned/controller/IBurstHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    return-object v0
.end method

.method private computeKeyboardInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 12
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 418
    const/4 v6, 0x0

    .line 419
    .local v6, "candidateViewContainerHeight":I
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getHeight()I

    move-result v6

    .line 422
    :cond_0
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 424
    .local v10, "mode":Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    .line 425
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;->isAnimationPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;->getToFloatingKeyboardMode()Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_2

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;->getFromFloatingKeyboardMode()Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v10

    .line 453
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mWindowVisibleDisplayFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 456
    .local v8, "keyboardBottom":I
    :goto_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$main$FloatingKeyboardMode:[I

    invoke-virtual {v10}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 471
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Encountered unexpected mode."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 434
    .end local v8    # "keyboardBottom":I
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;->getFromFloatingKeyboardMode()Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;->getToFloatingKeyboardMode()Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v10

    goto :goto_0

    .line 454
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getHeight()I

    move-result v8

    goto :goto_1

    .line 458
    .restart local v8    # "keyboardBottom":I
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getHeight()I

    move-result v0

    sub-int v0, v8, v0

    add-int/2addr v0, v6

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 460
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 480
    :goto_2
    const/4 v0, 0x3

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 481
    new-instance v9, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getTop()I

    move-result v1

    add-int/2addr v1, v6

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .line 482
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .line 483
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 485
    .local v9, "keyboardRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 486
    iget-object v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v9, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v9, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v9, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 489
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v10, v0, :cond_5

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 502
    .local v7, "extensionAreaHeight":I
    iget-object v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v3, v9, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 511
    .end local v7    # "extensionAreaHeight":I
    :cond_4
    :goto_3
    return-void

    .line 465
    .end local v9    # "keyboardRect":Landroid/graphics/RectF;
    :pswitch_1
    iput v8, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 466
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    goto :goto_2

    .line 505
    .restart local v9    # "keyboardRect":Landroid/graphics/RectF;
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_4

    .line 506
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getSplitWidth()I

    move-result v11

    .line 507
    .local v11, "splitKeyboardHalfWidth":I
    iget-object v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v9, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 508
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v11

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v1, v11, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_3

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private ensureInitialized()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->initialize()V

    .line 353
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 297
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    invoke-direct {v2}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    .line 298
    const v2, 0x7f0f00cf

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mContentContainer:Landroid/widget/FrameLayout;

    .line 299
    const v2, 0x7f0f00b1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .line 300
    const v2, 0x7f0f00a6

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    .line 302
    const v2, 0x7f0f0080

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 303
    const v2, 0x7f0f005c

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .line 305
    const v2, 0x7f0f005d

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 307
    .local v0, "candidateView":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Could not initialize the views of the main container, which is indicative of damaged layout files."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 313
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    .line 314
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 322
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;

    invoke-direct {v2, v1}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimationContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    .line 324
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;->initialize(Landroid/view/View;)V

    .line 325
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->addView(Landroid/view/View;)V

    .line 326
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBounceBackAnimator:Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;

    .line 331
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setDrawingCacheEnabled(Z)V

    .line 334
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboardMoveRequestListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;)V

    .line 335
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->initViews()V

    .line 337
    const v2, 0x7f0f0063

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    .line 338
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;-><init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->getBindableComponents()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method private isFullScreenModeActive()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mContentContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private performDeferredInitialization()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mDeferredInitializer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->attach(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method private performImmediateInitialization(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V
    .locals 3
    .param p1, "floatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardModeAnimationContainer:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;->initializeViews()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    .line 245
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isPredictionActivated()Z

    move-result v1

    const/4 v2, 0x0

    .line 244
    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setKeyboardMode(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;ZZ)V

    .line 246
    return-void
.end method

.method private setLayoutBounds()V
    .locals 6

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 373
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->isTablet()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-eqz v4, :cond_2

    .line 374
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v0, v4

    .line 376
    .local v0, "additionSpaceForPopups":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardHeightPx()I

    move-result v4

    add-int v3, v4, v0

    .line 383
    .end local v0    # "additionSpaceForPopups":I
    .local v3, "mainContainerHeight":I
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 384
    .local v2, "layoutParameters":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v5, :cond_0

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v4, v3, :cond_1

    .line 386
    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 387
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 388
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    :cond_1
    return-void

    .line 379
    .end local v2    # "layoutParameters":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "mainContainerHeight":I
    :cond_2
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v3    # "mainContainerHeight":I
    goto :goto_0
.end method

.method private setMiniKeyboardRelativePosition(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "relativePosition"    # Landroid/graphics/PointF;

    .prologue
    .line 279
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardPositioningRect:Landroid/graphics/Rect;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;->getScreenPositionFromRelativePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v0

    .line 281
    .local v0, "screenPosition":Landroid/graphics/PointF;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->setMiniKeyboardScreenPosition(Landroid/graphics/PointF;)V

    .line 282
    return-void
.end method

.method private setMiniKeyboardScreenPosition(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "screenPosition"    # Landroid/graphics/PointF;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mContentContainer:Landroid/widget/FrameLayout;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mContentContainer:Landroid/widget/FrameLayout;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 287
    return-void
.end method


# virtual methods
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
    .line 209
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
    .line 194
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-ne p2, v0, :cond_1

    .line 195
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_2

    .line 197
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 198
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_3

    .line 199
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    goto :goto_0

    .line 200
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    if-ne p2, v0, :cond_4

    .line 201
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    goto :goto_0

    .line 202
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    if-ne p2, v0, :cond_0

    .line 203
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->ensureInitialized()V

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->detach()V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mDeferredInitializer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->access$100(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->removeSlideListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;)V

    .line 266
    return-void
.end method

.method public getBindableViews()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->ensureInitialized()V

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mBindableViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 214
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->ensureInitialized()V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->initialize()V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mDeferredInitializer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->access$100(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->addSlideListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 224
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->getFloatingKeyboardMode(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->performImmediateInitialization(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    .line 227
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->performDeferredInitialization()V

    .line 228
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public keyboardView()Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->ensureInitialized()V

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    return-object v0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 401
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->ensureInitialized()V

    .line 404
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->isFullScreenModeActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardInitialized:Z

    if-eqz v0, :cond_1

    .line 406
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->computeKeyboardInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 410
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 411
    const/4 v0, 0x3

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 412
    iget-object v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0
.end method

.method public onStartInputView()V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->ensureInitialized()V

    .line 364
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->isFullScreenModeActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->setLayoutBounds()V

    .line 367
    :cond_0
    return-void
.end method
