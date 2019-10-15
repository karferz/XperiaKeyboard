.class public Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
.super Lcom/sonyericsson/textinput/uxp/view/BufferedView;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;,
        Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;,
        Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;,
        Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;,
        Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;,
        Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;,
        Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;,
        Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;,
        Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_CANDIDATE_COLOR:I = -0x10000

.field private static final DEFAULT_ELLIPSIS_TEXT_SIZE:I = 0x14

.field private static final DEFAULT_ELLIPSIZE_PADDING:I = 0xa

.field private static final DEFAULT_MAX_SUGGESTIONS:I = 0x3

.field private static final DEFAULT_MINI_KEYBOARD_MAX_SUGGESTIONS:I = 0x3

.field private static final DEFAULT_SPLIT_KEYBOARD_MAX_SUGGESTIONS:I = 0x4

.field private static final DEFAULT_TABLET_MAX_SUGGESTIONS:I = 0x5

.field private static final DEFAULT_TEXT_SIZE:I = 0xf

.field private static final DELAYED_UPDATE_ALPHA_MAX:I = 0xff

.field public static final DELAYED_UPDATE_CLEAR:I = 0x96

.field private static final DELAYED_UPDATE_SELECT:I = 0x190

.field private static final OUT_OF_BOUNDS:I = -0x1

.field private static final PHONEPAD_SINGLE_CHARACTER_MAX_SUGGESTIONS:I = 0x5

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SPLIT_POSITION:I = 0x2

.field public static final STATE_CANDIDATE_NORMAL:[I

.field public static final STATE_CANDIDATE_PRESSED:[I


# instance fields
.field private final mAnimationFromPaint:Landroid/graphics/Paint;

.field private mAnimationStartBitmap:Landroid/graphics/Bitmap;

.field private mBgPadding:Landroid/graphics/Rect;

.field private mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field protected mCandidateBackground:Landroid/graphics/drawable/Drawable;

.field private mCandidateBackgroundColorStateList:Landroid/content/res/ColorStateList;

.field private final mCandidateBackgroundId:I

.field private mCandidateChangeDoneListener:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;

.field private mCandidateFromAlpha:I

.field private mCandidateItemBounds:Landroid/graphics/Rect;

.field private final mCandidateItemPadding:Landroid/graphics/Rect;

.field private mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

.field private mCandidateListBackground:Landroid/graphics/drawable/Drawable;

.field private mCandidateToAlpha:I

.field private mColorNormal:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentMaxCandidates:I

.field private mCurrentWidth:I

.field private final mDelayedUpdateRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

.field private mEllipsisTextSize:I

.field private mEllipsizePadding:I

.field private mExploreByTouch:Z

.field private mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDrawnCandidates:Z

.field private mHighlightTextColor:I

.field private mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private mIgnoreEventActionUp:Z

.field private mInteractionListener:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;

.field private mIsPhonepadPortrait:Z

.field private mIsShowingMoreCandidates:Z

.field private mListeners:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

.field private final mLongpressRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;

.field private mOriginalTextSize:I

.field private mOutlineColor:I

.field private final mPaint:Landroid/text/TextPaint;

.field private mPreviewedCandidateIndex:I

.field private final mScaler:Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private mSkinnedAccentColor:I

.field private mSkinnedTextAccentColor:I

.field private mSplitGap:I

.field private mTextInputPersistentSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mTouchX:I

.field private mTouchY:I

.field private final mTypefaceBold:Landroid/graphics/Typeface;

.field private final mTypefaceNormal:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_NORMAL:[I

    .line 76
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_PRESSED:[I

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v1, v0, v2

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    .line 117
    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchY:I

    .line 125
    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateFromAlpha:I

    .line 129
    const/16 v5, 0xff

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateToAlpha:I

    .line 138
    new-instance v5, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-direct {v5, v7, v7}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;-><init>(IZ)V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    .line 146
    iput-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mListeners:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    .line 152
    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIgnoreEventActionUp:Z

    .line 153
    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIsPhonepadPortrait:Z

    .line 166
    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHasDrawnCandidates:Z

    .line 167
    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIsShowingMoreCandidates:Z

    .line 183
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mContext:Landroid/content/Context;

    .line 188
    const/16 v5, 0xa

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mEllipsizePadding:I

    .line 189
    const/16 v5, 0xf

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mOriginalTextSize:I

    .line 190
    const/16 v5, 0x14

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mEllipsisTextSize:I

    .line 191
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sonyericsson/textinput/uxp/R$styleable;->CandidateView:[I

    invoke-virtual {v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 192
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 193
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 194
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 196
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 193
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :pswitch_0
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mEllipsizePadding:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mEllipsizePadding:I

    goto :goto_1

    .line 204
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->typefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTypefaceNormal:Landroid/graphics/Typeface;

    .line 207
    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->typefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTypefaceBold:Landroid/graphics/Typeface;

    .line 209
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    invoke-direct {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mScaler:Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    .line 211
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->createTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPaint:Landroid/text/TextPaint;

    .line 212
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mOriginalTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 214
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mAnimationFromPaint:Landroid/graphics/Paint;

    .line 216
    invoke-virtual {p0, v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 217
    invoke-virtual {p0, v7}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setWillNotDraw(Z)V

    .line 219
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sonyericsson/textinput/uxp/R$styleable;->SkinnedResources:[I

    invoke-virtual {v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 221
    .local v4, "skinnedAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackgroundId:I

    .line 223
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateItemPadding:Landroid/graphics/Rect;

    .line 226
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v5, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;

    invoke-direct {v5, p0, v9}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$1;)V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mLongpressRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;

    .line 228
    new-instance v5, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, p0, v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mDelayedUpdateRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    .line 229
    return-void

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateChangeDoneListener:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->fireOnShowMoreCandidates()V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIgnoreEventActionUp:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/ned/controller/IBurstHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mDelayedUpdateRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setSuggestions(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    return-void
.end method

.method private cancelAllMessages()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->cancelLongPressTimeout()V

    .line 578
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->cancelDelayedUpdateTimer()V

    .line 579
    return-void
.end method

.method private cancelDelayedUpdateTimer()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mDelayedUpdateRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->removeScheduledUpdate()V

    .line 573
    return-void
.end method

.method private cancelLongPressTimeout()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mLongpressRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method private clearCandidateAnimationStartBitmap()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mAnimationStartBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mAnimationStartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mAnimationStartBitmap:Landroid/graphics/Bitmap;

    .line 888
    :cond_0
    return-void
.end method

.method private computeTotalWidthAndGetSelectedIndex()I
    .locals 5

    .prologue
    .line 455
    const/4 v3, 0x0

    .line 456
    .local v3, "x":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getMaxVisualSuggestions()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 458
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 459
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSplitGap:I

    add-int/2addr v3, v4

    .line 462
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateWidth(I)I

    move-result v0

    .line 464
    .local v0, "candidateWidth":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 465
    .local v2, "suggestion":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 466
    add-int/2addr v3, v0

    .line 456
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    :cond_1
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    invoke-direct {p0, v4, v3, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isTouchOnCandidateX(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 477
    .end local v0    # "candidateWidth":I
    .end local v1    # "i":I
    .end local v2    # "suggestion":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_2
    return v1

    .line 474
    .restart local v0    # "candidateWidth":I
    .restart local v1    # "i":I
    .restart local v2    # "suggestion":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    add-int/2addr v3, v0

    goto :goto_1

    .line 477
    .end local v0    # "candidateWidth":I
    .end local v2    # "suggestion":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_3
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public static createTextPaint()Landroid/text/TextPaint;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 238
    .local v0, "paint":Landroid/text/TextPaint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 239
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 240
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 241
    return-object v0
.end method

.method private doInvalidate()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setDrawPending(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->postInvalidate()V

    .line 262
    return-void
.end method

.method private fireOnCandidatesRemoved()V
    .locals 4

    .prologue
    .line 901
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mListeners:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    if-eqz v1, :cond_0

    .line 902
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mListeners:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 903
    .local v0, "l":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;->onCandidatesRemoved()V

    .line 902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 906
    .end local v0    # "l":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;
    :cond_0
    return-void
.end method

.method private fireOnCandidatesRemoved(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 909
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mListeners:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    if-eqz v1, :cond_0

    .line 910
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mListeners:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 911
    .local v0, "l":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;->onVisibilityChanged(I)V

    .line 910
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v0    # "l":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;
    :cond_0
    return-void
.end method

.method private declared-synchronized fireOnShowMoreCandidates()V
    .locals 1

    .prologue
    .line 917
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mInteractionListener:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mInteractionListener:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;->onShowMoreCandidates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    :cond_0
    monitor-exit p0

    return-void

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDefaultMaxSuggestions()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 491
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    const/4 v0, 0x4

    .line 500
    :cond_0
    :goto_0
    return v0

    .line 494
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isMini()Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getEllipsizedText(Lcom/sonyericsson/ned/model/CodePointString;IF)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "candidateWidth"    # I
    .param p3, "minTextSizeScale"    # F

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mEllipsizePadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mOriginalTextSize:I

    int-to-float v3, v3

    invoke-static {v0, v1, v2, p3, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;FF)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getStateAdjustedVisualCandidateX(I)I
    .locals 2
    .param p1, "visualIndex"    # I

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    .line 376
    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateX(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateX(I)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSplitGap:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private isMini()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneOrPhablet()Z
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSplit()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchOnCandidateX(III)Z
    .locals 4
    .param p1, "touchX"    # I
    .param p2, "x"    # I
    .param p3, "wordWidth"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    if-lt p1, p2, :cond_0

    add-int v3, p2, p3

    if-ge p1, v3, :cond_0

    move v0, v1

    .line 482
    .local v0, "isOnCandidate":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "isOnCandidate":Z
    :cond_0
    move v0, v2

    .line 481
    goto :goto_0

    .restart local v0    # "isOnCandidate":Z
    :cond_1
    move v1, v2

    .line 482
    goto :goto_1
.end method

.method private isTouchOnCandidateY(F)Z
    .locals 2
    .param p1, "touchY"    # F

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getY()F

    move-result v0

    .line 487
    .local v0, "candidateViewY":F
    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private rescheduleLongPressTimeout(I)V
    .locals 4
    .param p1, "candidateIndex"    # I

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->cancelLongPressTimeout()V

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mLongpressRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->access$102(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;I)I

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mLongpressRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 565
    return-void
.end method

.method private setSuggestions(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V
    .locals 5
    .param p1, "candidateBarItemsInfo"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .prologue
    const/4 v2, 0x5

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->clear()V

    .line 506
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIsPhonepadPortrait:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->getComposingTextLength()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentMaxCandidates:I

    if-eq v0, v2, :cond_2

    .line 508
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentMaxCandidates:I

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentMaxCandidates:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setMaxVisualCandidates(I)V

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setSplit(Z)V

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentWidth:I

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mScaler:Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v3

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSplitGap:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->calculateCandidateWidths(ILcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;ZI)V

    .line 518
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->getDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setDirection(I)V

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->getCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setCandidateList([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->getActiveCandidateIndex()I

    move-result v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setActiveIndex(ILcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;)V

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->getHighlightedCandidateIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setHighlightedIndex(I)V

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->invalidate()V

    .line 525
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->computeTotalWidthAndGetSelectedIndex()I

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHasDrawnCandidates:Z

    .line 528
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->doInvalidate()V

    .line 530
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->isClearCandidates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->fireOnCandidatesRemoved()V

    .line 533
    :cond_1
    return-void

    .line 512
    :cond_2
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentMaxCandidates:I

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getDefaultMaxSuggestions()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 513
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentMaxCandidates:I

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentMaxCandidates:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setMaxVisualCandidates(I)V

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setSplit(Z)V

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentWidth:I

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mScaler:Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v3

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSplitGap:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->calculateCandidateWidths(ILcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;ZI)V

    goto :goto_0
.end method

.method private setTextStyle(ILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "visualCandidateIndex"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualHighlightedIndex()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 383
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHighlightTextColor:I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateToAlpha:I

    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/ColorUtil;->setColorAlpha(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualActiveIndex()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 385
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getActiveStyle()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    move-result-object v0

    .line 386
    .local v0, "activeStyle":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTypefaceNormal:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 393
    :goto_1
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkinnedTextAccentColor:I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateToAlpha:I

    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/ColorUtil;->setColorAlpha(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 388
    :cond_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->BOLD:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 391
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ActiveStyle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    .end local v0    # "activeStyle":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTypefaceNormal:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 396
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mColorNormal:I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateToAlpha:I

    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/ColorUtil;->setColorAlpha(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private updatePreviewPosition()V
    .locals 4

    .prologue
    .line 710
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getMaxVisualSuggestions()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 711
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 710
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateX(I)I

    move-result v1

    .line 715
    .local v1, "candidateXPos":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateWidth(I)I

    move-result v0

    .line 716
    .local v0, "candidateWidth":I
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    invoke-direct {p0, v3, v1, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isTouchOnCandidateX(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 717
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    .line 722
    .end local v0    # "candidateWidth":I
    .end local v1    # "candidateXPos":I
    :cond_2
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
    .line 726
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    if-ne p2, v0, :cond_0

    .line 727
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mListeners:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    .line 728
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mListeners:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    .line 730
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 736
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_1

    .line 737
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 738
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_2

    .line 739
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    goto :goto_0

    .line 740
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_3

    .line 741
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTextInputPersistentSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 742
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-ne p2, v0, :cond_0

    .line 743
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 582
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->cancelAllMessages()V

    .line 583
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->clearCandidateAnimationStartBitmap()V

    .line 584
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    .line 585
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    .line 586
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchY:I

    .line 587
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->doInvalidate()V

    .line 588
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 754
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->dispose()V

    .line 755
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mListeners:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;

    .line 756
    return-void
.end method

.method public drawCandidateItemBackground(Landroid/graphics/Canvas;ILandroid/graphics/Rect;ZZ)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "candidadeXPos"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "isHighlighted"    # Z
    .param p5, "isPressed"    # Z

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 432
    int-to-float v1, p2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 434
    if-eqz p4, :cond_1

    .line 435
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkinnedAccentColor:I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateToAlpha:I

    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/ColorUtil;->setColorAlpha(II)I

    move-result v0

    .line 436
    .local v0, "color":I
    if-eqz p5, :cond_0

    .line 438
    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ColorUtil;->getColorWithModifiedBrightness(IF)I

    move-result v0

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 449
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 450
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 452
    return-void

    .line 443
    .end local v0    # "color":I
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackgroundColorStateList:Landroid/content/res/ColorStateList;

    if-eqz p5, :cond_2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_PRESSED:[I

    :goto_1
    const/high16 v3, -0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 446
    .restart local v0    # "color":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 443
    .end local v0    # "color":I
    :cond_2
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_NORMAL:[I

    goto :goto_1
.end method

.method protected drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dirtyObject"    # Ljava/lang/Object;

    .prologue
    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getHeight()I

    move-result v20

    .line 267
    .local v20, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getWidth()I

    move-result v27

    .line 270
    .local v27, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0900b5

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    move/from16 v0, v20

    invoke-virtual {v3, v4, v6, v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0900b5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int v4, v27, v4

    const/4 v6, 0x0

    move/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v3, v4, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 286
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPaint:Landroid/text/TextPaint;

    .line 287
    .local v15, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getMaxVisualSuggestions()I

    move-result v25

    .line 290
    .local v25, "visualCandidateCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    move/from16 v23, v0

    .line 291
    .local v23, "touchX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchY:I

    move/from16 v24, v0

    .line 292
    .local v24, "touchY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    .line 293
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct {v3, v4, v6, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateItemBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_2

    .line 299
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateItemBounds:Landroid/graphics/Rect;

    .line 301
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 302
    .local v16, "bgPaddingTop":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getTotalNumberOfCandidates()I

    move-result v22

    .line 307
    .local v22, "totalNbrOfCandidates":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mOutlineColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v19, 0x1

    .line 309
    .local v19, "hasOutlineColor":Z
    :goto_1
    const/16 v26, 0x0

    .local v26, "visualCandidateIndex":I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    .line 312
    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v21

    .line 314
    .local v21, "suggestion":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 310
    :cond_3
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 280
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v16    # "bgPaddingTop":I
    .end local v19    # "hasOutlineColor":Z
    .end local v21    # "suggestion":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v22    # "totalNbrOfCandidates":I
    .end local v23    # "touchX":I
    .end local v24    # "touchY":I
    .end local v25    # "visualCandidateCount":I
    .end local v26    # "visualCandidateIndex":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isDocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v3, v4, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 307
    .restart local v15    # "paint":Landroid/graphics/Paint;
    .restart local v16    # "bgPaddingTop":I
    .restart local v22    # "totalNbrOfCandidates":I
    .restart local v23    # "touchX":I
    .restart local v24    # "touchY":I
    .restart local v25    # "visualCandidateCount":I
    :cond_5
    const/16 v19, 0x0

    goto :goto_1

    .line 319
    .restart local v19    # "hasOutlineColor":Z
    .restart local v21    # "suggestion":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v26    # "visualCandidateIndex":I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getStateAdjustedVisualCandidateX(I)I

    move-result v5

    .line 320
    .local v5, "x":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateWidth(I)I

    move-result v17

    .line 321
    .local v17, "candidateWidth":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isTouchOnCandidateX(III)Z

    move-result v3

    if-eqz v3, :cond_8

    move/from16 v0, v24

    int-to-float v3, v0

    .line 322
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isTouchOnCandidateY(F)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIgnoreEventActionUp:Z

    if-nez v3, :cond_8

    const/4 v8, 0x1

    .line 323
    .local v8, "isPressed":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    .line 324
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualHighlightedIndex()I

    move-result v3

    move/from16 v0, v26

    if-eq v0, v3, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_9

    :cond_7
    const/4 v7, 0x1

    .line 326
    .local v7, "isHighlighted":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateItemBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateItemBounds:Landroid/graphics/Rect;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->drawCandidateItemBackground(Landroid/graphics/Canvas;ILandroid/graphics/Rect;ZZ)V

    .line 328
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setTextStyle(ILandroid/graphics/Paint;)V

    .line 330
    const v3, 0x3f333333    # 0.7f

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getEllipsizedText(Lcom/sonyericsson/ned/model/CodePointString;IF)Ljava/lang/CharSequence;

    move-result-object v10

    .line 333
    .local v10, "ellipsizedSuggestion":Ljava/lang/CharSequence;
    move/from16 v0, v20

    int-to-float v3, v0

    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v14, v3, v4

    .line 334
    .local v14, "y":F
    div-int/lit8 v3, v17, 0x2

    add-int/2addr v3, v5

    int-to-float v13, v3

    .line 339
    .local v13, "centerPos":F
    if-eqz v19, :cond_a

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 340
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v3

    .line 339
    invoke-static {v3}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isPictogram(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 341
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mOutlineColor:I

    invoke-virtual {v15, v3, v4, v6, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 345
    :goto_6
    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 348
    if-eqz v7, :cond_3

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isPhoneOrPhablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mEllipsisTextSize:I

    int-to-float v3, v3

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 353
    move/from16 v0, v20

    int-to-float v3, v0

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float v18, v3, v4

    .line 354
    .local v18, "ellipsisY":F
    const/16 v3, 0x2026

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v3, v13, v1, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 322
    .end local v7    # "isHighlighted":Z
    .end local v8    # "isPressed":Z
    .end local v10    # "ellipsizedSuggestion":Ljava/lang/CharSequence;
    .end local v13    # "centerPos":F
    .end local v14    # "y":F
    .end local v18    # "ellipsisY":F
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 324
    .restart local v8    # "isPressed":Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 343
    .restart local v7    # "isHighlighted":Z
    .restart local v10    # "ellipsizedSuggestion":Ljava/lang/CharSequence;
    .restart local v13    # "centerPos":F
    .restart local v14    # "y":F
    :cond_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v15, v3, v4, v6, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_6

    .line 359
    .end local v5    # "x":I
    .end local v7    # "isHighlighted":Z
    .end local v8    # "isPressed":Z
    .end local v10    # "ellipsizedSuggestion":Ljava/lang/CharSequence;
    .end local v13    # "centerPos":F
    .end local v14    # "y":F
    .end local v17    # "candidateWidth":I
    .end local v21    # "suggestion":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mAnimationStartBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_c

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mAnimationFromPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateFromAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mAnimationStartBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mAnimationFromPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 364
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHasDrawnCandidates:Z

    .line 366
    invoke-super/range {p0 .. p2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method public getCandidateList()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

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
    .line 749
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public hasMoreCandidates()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getHiddenCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 760
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->init()V

    .line 761
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->clear()V

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    const-string v1, "candidate_bar_text_size"

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mOriginalTextSize:I

    .line 764
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mEllipsisTextSize:I

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mOriginalTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 767
    return-void
.end method

.method public initOptional()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 771
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->initOptional()V

    .line 772
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 774
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTextInputPersistentSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 775
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->getFloatingKeyboardMode(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 777
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v4, 0x7f0d010d

    .line 778
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 780
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 781
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentWidth:I

    const v4, 0x7f0900b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSplitGap:I

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 786
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f020019

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    .line 788
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 789
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateListBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 790
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 789
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 793
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getDefaultMaxSuggestions()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentMaxCandidates:I

    .line 794
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentMaxCandidates:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setMaxVisualCandidates(I)V

    .line 795
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->setSplit(Z)V

    .line 797
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v4, 0x7f0d0014

    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mColorNormal:I

    .line 798
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v4, 0x7f0d001c

    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHighlightTextColor:I

    .line 800
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackgroundId:I

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    .line 801
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 802
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateItemPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 805
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTextInputPersistentSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isPortraitKeybordPhonepad()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mContext:Landroid/content/Context;

    .line 806
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_3

    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIsPhonepadPortrait:Z

    .line 809
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const/high16 v3, 0x7f0f0000

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkinnedAccentColor:I

    .line 810
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v3, 0x7f0f0001

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkinnedTextAccentColor:I

    .line 811
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v3, 0x7f0d0024

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mOutlineColor:I

    .line 812
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentWidth:I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mScaler:Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v5

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSplitGap:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->calculateCandidateWidths(ILcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;ZI)V

    .line 813
    return-void

    .line 806
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isDocked()Z
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingMoreCandidates()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIsShowingMoreCandidates:Z

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v8, -0x1

    .line 592
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 594
    .local v2, "handled":Z
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mExploreByTouch:Z

    if-nez v7, :cond_1

    .line 640
    .end local v2    # "handled":Z
    :cond_0
    :goto_0
    return v2

    .line 598
    .restart local v2    # "handled":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 599
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    .line 600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchY:I

    .line 602
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v2, v6

    .line 640
    goto :goto_0

    .line 604
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->computeTotalWidthAndGetSelectedIndex()I

    move-result v4

    .line 605
    .local v4, "selectedIndex":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->computeTotalWidthAndGetSelectedIndex()I

    move-result v7

    if-eq v7, v8, :cond_2

    .line 606
    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    .line 607
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    .line 608
    invoke-virtual {v7, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 609
    .local v3, "selectedCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual {p0, v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setHovered(Z)V

    goto :goto_1

    .line 615
    .end local v3    # "selectedCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v4    # "selectedIndex":I
    :pswitch_2
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    if-eq v7, v8, :cond_3

    .line 616
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateX(I)I

    move-result v5

    .line 617
    .local v5, "xPos":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    .line 618
    invoke-virtual {v7, v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateWidth(I)I

    move-result v1

    .line 619
    .local v1, "candidateWidth":I
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    invoke-direct {p0, v7, v5, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isTouchOnCandidateX(III)Z

    move-result v7

    if-nez v7, :cond_3

    .line 620
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->updatePreviewPosition()V

    .line 621
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    .line 622
    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v7

    .line 621
    invoke-virtual {p0, v7}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 625
    .end local v1    # "candidateWidth":I
    .end local v5    # "xPos":I
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->doInvalidate()V

    goto :goto_1

    .line 629
    :pswitch_3
    iput v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    .line 630
    iput v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    .line 631
    iput v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchY:I

    .line 632
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->doInvalidate()V

    .line 633
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setHovered(Z)V

    goto :goto_1

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 418
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onSizeChanged(IIII)V

    .line 419
    if-eqz p1, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSplitGap:I

    .line 424
    :cond_0
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCurrentWidth:I

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mScaler:Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isSplit()Z

    move-result v2

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mSplitGap:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->calculateCandidateWidths(ILcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;ZI)V

    .line 427
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "me"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v12, -0x1

    .line 645
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isActive()Z

    move-result v8

    if-nez v8, :cond_0

    .line 706
    :goto_0
    return v6

    .line 649
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 650
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    .line 651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchY:I

    .line 653
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v6, v7

    .line 706
    goto :goto_0

    .line 655
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->computeTotalWidthAndGetSelectedIndex()I

    move-result v3

    .line 656
    .local v3, "selectedIndex":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->computeTotalWidthAndGetSelectedIndex()I

    move-result v6

    if-eq v6, v12, :cond_1

    .line 657
    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    .line 658
    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->rescheduleLongPressTimeout(I)V

    .line 660
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->doInvalidate()V

    goto :goto_1

    .line 664
    .end local v3    # "selectedIndex":I
    :pswitch_1
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    if-eq v6, v12, :cond_3

    .line 665
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    invoke-direct {p0, v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getStateAdjustedVisualCandidateX(I)I

    move-result v5

    .line 666
    .local v5, "xPos":I
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    .line 667
    invoke-virtual {v6, v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateWidth(I)I

    move-result v1

    .line 668
    .local v1, "candidateWidth":I
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    invoke-direct {p0, v6, v5, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isTouchOnCandidateX(III)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isTouchOnCandidateY(F)Z

    move-result v6

    if-nez v6, :cond_3

    .line 670
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->updatePreviewPosition()V

    .line 671
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->cancelLongPressTimeout()V

    .line 677
    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIgnoreEventActionUp:Z

    .line 680
    .end local v1    # "candidateWidth":I
    .end local v5    # "xPos":I
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->doInvalidate()V

    goto :goto_1

    .line 684
    :pswitch_2
    iget-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mHasDrawnCandidates:Z

    if-eqz v8, :cond_4

    .line 685
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->computeTotalWidthAndGetSelectedIndex()I

    move-result v4

    .line 686
    .local v4, "selectedVisualIndex":I
    if-eq v4, v12, :cond_4

    iget-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIgnoreEventActionUp:Z

    if-nez v8, :cond_4

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isTouchOnCandidateY(F)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 688
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    .line 689
    invoke-virtual {v8, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 690
    .local v2, "selectedCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    new-array v9, v7, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v10, Lcom/sonyericsson/ned/controller/Command;

    const-string v11, "select-candidate"

    invoke-direct {v10, v11, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v9, v6

    invoke-interface {v8, v9}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 695
    .end local v2    # "selectedCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v4    # "selectedVisualIndex":I
    :cond_4
    iput v12, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mPreviewedCandidateIndex:I

    .line 696
    iput v12, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchX:I

    .line 697
    iput v12, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mTouchY:I

    .line 698
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->doInvalidate()V

    .line 699
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->cancelLongPressTimeout()V

    .line 700
    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIgnoreEventActionUp:Z

    goto/16 :goto_1

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    .line 928
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 929
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->fireOnCandidatesRemoved(I)V

    .line 930
    return-void
.end method

.method public setCandidateSelectionDoneListener(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;)V
    .locals 0
    .param p1, "candidateChangeDoneListener"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateChangeDoneListener:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;

    .line 851
    return-void
.end method

.method public setExploreByTouch(Z)V
    .locals 0
    .param p1, "exploreByTouch"    # Z

    .prologue
    .line 933
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mExploreByTouch:Z

    .line 934
    return-void
.end method

.method public setNewCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V
    .locals 5
    .param p1, "candidateBarItemsInfo"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .prologue
    .line 821
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->getChangeReason()Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    move-result-object v0

    .line 822
    .local v0, "changeReason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    sget-object v2, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->TRACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 823
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->getCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 825
    .local v1, "updateRequireImmediateDisplay":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 827
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->cancelDelayedUpdateTimer()V

    .line 828
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setSuggestions(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 838
    :goto_1
    return-void

    .line 823
    .end local v1    # "updateRequireImmediateDisplay":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 834
    .restart local v1    # "updateRequireImmediateDisplay":Z
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mDelayedUpdateRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    const/16 v3, 0x96

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->NEW:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    invoke-virtual {v2, v3, v4, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->scheduleDelayedUpdate(ILcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    goto :goto_1
.end method

.method public declared-synchronized setOnInteractionListener(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;

    .prologue
    .line 923
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mInteractionListener:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    monitor-exit p0

    return-void

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShowingMoreCandidates(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mIsShowingMoreCandidates:Z

    .line 551
    return-void
.end method

.method public startSelectingCandidate(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0xff

    .line 863
    const/4 v0, 0x0

    .line 864
    .local v0, "isAnimating":Z
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getHighlightedIndex()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateList:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    .line 865
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getActiveIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    if-ne p2, v1, :cond_0

    .line 871
    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateFromAlpha:I

    .line 872
    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateToAlpha:I

    .line 873
    const/4 v0, 0x1

    .line 874
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mDelayedUpdateRunnable:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    const/16 v2, 0x190

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->SELECT:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->scheduleDelayedUpdate(ILcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 878
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateChangeDoneListener:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;

    if-eqz v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->mCandidateChangeDoneListener:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;->onCandidatesChangeDone()V

    .line 881
    :cond_1
    return-void
.end method
