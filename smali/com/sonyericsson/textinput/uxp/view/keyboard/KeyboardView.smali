.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
.super Lcom/sonyericsson/textinput/uxp/view/BufferedView;
.source "KeyboardView.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;
.implements Ljava/lang/Runnable;
.implements Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;
.implements Lcom/sonyericsson/textinput/uxp/view/IVisibleDisplayFrameProvider;
.implements Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_TEXT_AND_ICON_COLOR:I = 0xff0000

.field private static final FPS_GFX:I = 0x14

.field public static final HAIR_SPACE:Ljava/lang/String; = "\u200a"

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final KEYBOARD_CANDIDATE_SELECTION:I = 0x2

.field private static final KEYBOARD_DIMMED:I = 0x3

.field private static final KEYBOARD_NONE:I = 0x1

.field private static final NO_SCALING:I = 0x0

.field static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SECONDARY_PRINT_ALPHA:D = 178.5

.field private static final TRACE_INTERRUPT_THRESHOLD:I = 0x1e

.field private static final USE_DEFAULT_KEY_TEXT_SIZE:I

.field private static final USE_DEFAULT_KEY_TEXT_SIZE_SCALE_FACTOR:F


# instance fields
.field private mAccessibility:Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;

.field private mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionUpMultiFingerBoundary:I

.field private mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

.field private final mActivePointStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveTracePointerId:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mClipRegion:Landroid/graphics/Rect;

.field private mColorIconsUsingTextColor:Z

.field private final mCommandKeysInPressedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private mExploreByTouch:Z

.field private mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

.field private mInvalidatedKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field private mIsVisible:I

.field private final mKeyBackgroundShadows:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyBackgrounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyBackgroundsPressed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyExpansionFactorX:F

.field private mKeyExpansionFactorY:F

.field private final mKeyIndicatorGraphics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyIndicators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyPadding:Landroid/graphics/Rect;

.field private mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

.field private mKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;

.field private mKeyShadow:Landroid/graphics/drawable/Drawable;

.field private mKeyShadowDrawablePadding:Landroid/graphics/Rect;

.field private mKeyTextColorId:I

.field private mKeyTextColorStateList:Landroid/content/res/ColorStateList;

.field private mKeyTextOffset:I

.field private mKeyTextSize:I

.field private mKeyTextSizeUnscaled:I

.field private mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

.field private mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

.field private mKeyboardDimTouchBroadcaster:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

.field private mKeyboardKeyContentScaleFactor:F

.field private mKeyboardModifiedHeight:I

.field private mKeyboardModifiedWidth:I

.field private mKeyboardMoveRequestListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

.field private mKeyboardTypeOnScreen:I

.field private mLastSkinName:Ljava/lang/String;

.field private mLongPressActivePointerId:I

.field private mMoveKeyboardEnabled:Z

.field private mOnKeyboardViewListener:[Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;

.field private mPointerListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;

.field private final mPooledPointerStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

.field private mPreviewOffset:I

.field private mPreviewsEnabled:Z

.field private mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

.field private mSecondaryPrintEnabled:Z

.field private mSecondaryPrintOffset:I

.field private mSecondaryPrintTextSize:I

.field private mSecondaryPrintTextSizeUnscaled:I

.field private mShowCandidates:Z

.field private mShowKeyPreviews:Z

.field private mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private mSplit:Z

.field private mSplitHalfWidth:I

.field private mTextAndIconPaint:Landroid/graphics/Paint;

.field private mTextInputPersistentSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private final mTouchKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field protected mTraceBoundaryEvaluator:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;

.field private mTraceEnabled:Z

.field private mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

.field private mTraceInProgress:Z

.field private mVerticalCorrection:I

.field private final mWorkRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 268
    const v0, 0x7f01004a

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mWorkRect:Landroid/graphics/Rect;

    .line 134
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 135
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgrounds:Landroid/util/SparseArray;

    .line 136
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgroundsPressed:Landroid/util/SparseArray;

    .line 137
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgroundShadows:Landroid/util/SparseArray;

    .line 141
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 145
    new-instance v7, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTouchKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 146
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    .line 147
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPooledPointerStreams:Ljava/util/ArrayList;

    .line 148
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mCommandKeysInPressedState:Ljava/util/ArrayList;

    .line 149
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicatorGraphics:Ljava/util/ArrayList;

    .line 150
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicators:Landroid/util/SparseArray;

    .line 152
    const/4 v7, 0x1

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardTypeOnScreen:I

    .line 154
    const/4 v7, -0x1

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActiveTracePointerId:I

    .line 155
    const/4 v7, -0x1

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    .line 178
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mShowCandidates:Z

    .line 197
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceInProgress:Z

    .line 198
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceEnabled:Z

    .line 201
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyExpansionFactorX:F

    .line 202
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyExpansionFactorY:F

    .line 228
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardMoveRequestListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 275
    .local v5, "mResources":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 276
    .local v4, "keyTextSize":I
    sget-object v7, Lcom/sonyericsson/textinput/uxp/R$styleable;->KeyboardView:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    .line 280
    .local v6, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 281
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 283
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 280
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :pswitch_1
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardModifiedWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 331
    .end local v1    # "attr":I
    .end local v3    # "i":I
    .end local v6    # "n":I
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v7

    .line 288
    .restart local v1    # "attr":I
    .restart local v3    # "i":I
    .restart local v6    # "n":I
    :pswitch_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardModifiedHeight:I

    goto :goto_1

    .line 291
    :pswitch_3
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardKeyContentScaleFactor:F

    goto :goto_1

    .line 294
    :pswitch_4
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-static {p1, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadow:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 297
    :pswitch_5
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mVerticalCorrection:I

    goto :goto_1

    .line 300
    :pswitch_6
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPreviewOffset:I

    goto :goto_1

    .line 303
    :pswitch_7
    const/16 v7, 0x12

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextSizeUnscaled:I

    goto :goto_1

    .line 306
    :pswitch_8
    const/4 v7, 0x2

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextOffset:I

    goto :goto_1

    .line 309
    :pswitch_9
    const/16 v7, 0xc

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintTextSizeUnscaled:I

    goto :goto_1

    .line 312
    :pswitch_a
    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintOffset:I

    goto :goto_1

    .line 315
    :pswitch_b
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextColorId:I

    goto :goto_1

    .line 318
    :pswitch_c
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mColorIconsUsingTextColor:Z

    goto :goto_1

    .line 321
    :pswitch_d
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyExpansionFactorX:F

    goto :goto_1

    .line 324
    :pswitch_e
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyExpansionFactorY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 331
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    new-instance v7, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-direct {v7, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .line 336
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 337
    .local v2, "drawBitmapPaint":Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 338
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 339
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 341
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    .line 342
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 343
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 344
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 345
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->typefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 347
    new-instance v7, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$1;)V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPointerListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;

    .line 349
    const-string v7, "accessibility"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 352
    new-instance v7, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v7, v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;-><init>(F)V

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceBoundaryEvaluator:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;

    .line 355
    const v7, 0x7f0900b5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSplitHalfWidth:I

    .line 356
    const v7, 0x7f0900bb

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpMultiFingerBoundary:I

    .line 359
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setupKeyShadowPadding(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 360
    return-void

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isLongPressActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->hasLongPressCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->createPopupKeys(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mShowCandidates:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mExploreByTouch:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "x2"    # [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->showKeyCandidatesPopup(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->releaseKey(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;[I[JILcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [J
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->detectAndSendKey([I[JILcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Landroid/view/MotionEvent;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->handlePointerUpEvent(Landroid/view/MotionEvent;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearPreviewDelayed()V

    return-void
.end method

.method static synthetic access$2102(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceInProgress:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActiveTracePointerId:I

    return v0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActiveTracePointerId:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearPreview()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateTraceGraphics()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTouchKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->startTraceAnimation()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mMoveKeyboardEnabled:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->releasePressedKeys(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$302(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    .param p2, "x2"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->fireOnEnabledStatusChanged(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardMoveRequestListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "x2"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->updateKeyPressed(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mCommandKeysInPressedState:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    return-object v0
.end method

.method private animateGraphics()V
    .locals 6

    .prologue
    .line 2042
    const/4 v2, 0x0

    .line 2043
    .local v2, "traceActive":Z
    const/4 v3, 0x0

    .line 2044
    .local v3, "xKeyIndicatorAnimationActive":Z
    const/4 v4, 0x0

    .line 2046
    .local v4, "xKeyIndicatorAnimationStarted":Z
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    if-eqz v5, :cond_0

    .line 2047
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->animate()Z

    move-result v2

    .line 2050
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicatorGraphics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2051
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2052
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;

    .line 2053
    .local v1, "keyIndicatorGraphics":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->isAnimationStarted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2054
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->start()V

    .line 2055
    const/4 v4, 0x1

    goto :goto_0

    .line 2056
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->animate()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2057
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2059
    :cond_2
    or-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2063
    .end local v1    # "keyIndicatorGraphics":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    :cond_3
    if-eqz v4, :cond_5

    .line 2064
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->run()V

    .line 2068
    :cond_4
    :goto_1
    return-void

    .line 2065
    :cond_5
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 2066
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getLocalHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private clampPointsToKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[III)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "points"    # [I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 996
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyInnerArea(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)V

    .line 997
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mWorkRect:Landroid/graphics/Rect;

    invoke-static {v0, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clampPointsToRect(Landroid/graphics/Rect;[III)V

    .line 998
    return-void
.end method

.method private static clampPointsToRect(Landroid/graphics/Rect;[III)V
    .locals 8
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "points"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 363
    if-ltz p2, :cond_6

    .line 364
    array-length v6, p1

    add-int v7, p2, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 369
    .local v1, "end":I
    iget v6, p0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_0

    iget v6, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v6, -0x1

    .line 370
    .local v3, "right":I
    :goto_0
    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_1

    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v6, -0x1

    .line 375
    .local v0, "bottom":I
    :goto_1
    move v2, p2

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 377
    move v4, v2

    .line 378
    .local v4, "xIndex":I
    aget v6, p1, v4

    iget v7, p0, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_2

    iget v6, p0, Landroid/graphics/Rect;->left:I

    :goto_3
    aput v6, p1, v4

    .line 380
    add-int/lit8 v5, v2, 0x1

    .line 381
    .local v5, "yIndex":I
    aget v6, p1, v5

    iget v7, p0, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_4

    iget v6, p0, Landroid/graphics/Rect;->top:I

    :goto_4
    aput v6, p1, v5

    .line 375
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 369
    .end local v0    # "bottom":I
    .end local v2    # "i":I
    .end local v3    # "right":I
    .end local v4    # "xIndex":I
    .end local v5    # "yIndex":I
    :cond_0
    iget v3, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 370
    .restart local v3    # "right":I
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 378
    .restart local v0    # "bottom":I
    .restart local v2    # "i":I
    .restart local v4    # "xIndex":I
    :cond_2
    aget v6, p1, v4

    if-lt v6, v3, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    aget v6, p1, v4

    goto :goto_3

    .line 381
    .restart local v5    # "yIndex":I
    :cond_4
    aget v6, p1, v5

    if-lt v6, v0, :cond_5

    move v6, v0

    goto :goto_4

    :cond_5
    aget v6, p1, v5

    goto :goto_4

    .line 385
    .end local v0    # "bottom":I
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "right":I
    .end local v4    # "xIndex":I
    .end local v5    # "yIndex":I
    :cond_6
    return-void
.end method

.method private clearGraphics()V
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->reset()V

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicatorGraphics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1198
    return-void
.end method

.method private clearPointerStreams()V
    .locals 3

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 1383
    .local v0, "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->closePointerStream(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    goto :goto_0

    .line 1385
    .end local v0    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPooledPointerStreams:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1386
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1391
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPooledPointerStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPooledPointerStreams:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPooledPointerStreams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1394
    :cond_1
    return-void
.end method

.method private clearPreview()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hide(Z)V

    .line 1191
    return-void
.end method

.method private clearPreviewDelayed()V
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hide(Z)V

    .line 1202
    return-void
.end method

.method private closePointerStream(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 3
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    const/4 v2, -0x1

    .line 1403
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActiveTracePointerId:I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1404
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActiveTracePointerId:I

    .line 1405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceInProgress:Z

    .line 1407
    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1408
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    .line 1411
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getKeyIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->releaseKey(I)V

    .line 1412
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->close()V

    .line 1413
    return-void
.end method

.method private createMetaKeyAnimation(ILcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;)V
    .locals 7
    .param p1, "metaKey"    # I
    .param p2, "animationAttributes"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;

    .prologue
    .line 1715
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v4, :cond_1

    .line 1718
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1719
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1720
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 1722
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1723
    .local v2, "keyRect":Landroid/graphics/Rect;
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyArea(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)V

    .line 1724
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1725
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getId()I

    move-result v6

    invoke-direct {v1, v5, v6, p2, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;-><init>(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;Landroid/graphics/Rect;)V

    .line 1726
    .local v1, "keyIndicator":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicatorGraphics:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateKeyIndicatorGraphics()V

    goto :goto_0

    .line 1733
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v1    # "keyIndicator":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    .end local v2    # "keyRect":Landroid/graphics/Rect;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    :cond_1
    return-void
.end method

.method private createMetaKeyAnimations()V
    .locals 4

    .prologue
    .line 1707
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1708
    .local v2, "nbrIndicators":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1709
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicators:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1710
    .local v1, "key":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->createMetaKeyAnimation(ILcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;)V

    .line 1708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1712
    .end local v1    # "key":I
    :cond_0
    return-void
.end method

.method private createPointerStream(I)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .locals 4
    .param p1, "pointerId"    # I

    .prologue
    .line 1358
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPooledPointerStreams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1359
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPooledPointerStreams:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPooledPointerStreams:Ljava/util/ArrayList;

    .line 1360
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 1361
    .local v0, "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->setPointerId(I)V

    .line 1362
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1368
    .end local v0    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .local v1, "pointerStream":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1365
    .end local v1    # "pointerStream":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPointerListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;

    const/16 v3, -0x13

    invoke-direct {v0, p1, v2, p0, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;-><init>(ILcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;I)V

    .line 1367
    .restart local v0    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1368
    .restart local v1    # "pointerStream":Ljava/lang/Object;
    goto :goto_0
.end method

.method private createPopupKeyCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 3
    .param p1, "popupKey"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getSecondaryPrintCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 1167
    .local v0, "printedCandidates":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v2

    .line 1166
    invoke-direct {p0, v0, p1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getUniqueSecondaryCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v1

    .line 1168
    .local v1, "secondaryCandidates":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    return-object v2
.end method

.method private createPopupKeys(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1
    .param p1, "popupKey"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 1059
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasXKeyCandidates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->createPopupMetaKeys(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 1062
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->createPopupKeyCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    goto :goto_0
.end method

.method private createPopupMetaKeys(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 4
    .param p1, "popupKey"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 1066
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getXKeyCandidateLength()I

    move-result v2

    new-array v1, v2, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1067
    .local v1, "retVal":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1068
    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>()V

    aput-object v2, v1, v0

    .line 1069
    aget-object v2, v1, v0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setMetaKey(I)V

    .line 1070
    aget-object v2, v1, v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getXKeyCandidate(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setXKeyType(I)V

    .line 1071
    aget-object v2, v1, v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getXKeyCandidate(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getListNormalIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1072
    aget-object v2, v1, v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getXKeyCandidate(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getListHighlightedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconHighlight(Landroid/graphics/drawable/Drawable;)V

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1074
    :cond_0
    return-object v1
.end method

.method private detectAndSendKey([I[JILcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 3
    .param p1, "points"    # [I
    .param p2, "pointTimes"    # [J
    .param p3, "count"    # I
    .param p4, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v1

    invoke-virtual {p4, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 988
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x2

    invoke-direct {p0, p4, p1, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clampPointsToKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[III)V

    .line 989
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I[JI)V

    .line 991
    .local v0, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 993
    .end local v0    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    :cond_1
    return-void
.end method

.method private dismissPopupKeyboard()V
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hide(Z)V

    .line 1805
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardTypeOnScreen:I

    .line 1806
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    .line 1807
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->fireOnEnabledStatusChanged(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 1809
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 1811
    :cond_0
    return-void
.end method

.method private doesLabelAlreadyExist(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "candidateLabel"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1078
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1090
    :cond_1
    :goto_0
    return v0

    .line 1082
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getNormalLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getNormalLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1086
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getShiftedLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getShiftedLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    .line 1090
    goto :goto_0
.end method

.method private drawKeyBackground(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "keyBackground"    # Landroid/graphics/drawable/Drawable;
    .param p3, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p4, "drawableState"    # [I

    .prologue
    const/4 v4, 0x0

    .line 784
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    move-result-object v1

    .line 787
    .local v1, "keyBackgroundType":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;
    invoke-direct {p0, p4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isPressed([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyBackgroundPressed(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 791
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 792
    .local v0, "keyBackgroundBounds":Landroid/graphics/Rect;
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_1

    .line 793
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_2

    .line 795
    :cond_1
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v2

    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v3

    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 798
    :cond_2
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 799
    return-void
.end method

.method private drawKeyMainTextOrIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "keyPadding"    # Landroid/graphics/Rect;
    .param p3, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p4, "drawableState"    # [I

    .prologue
    .line 812
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextColorStateList:Landroid/content/res/ColorStateList;

    const/high16 v13, 0xff0000

    move-object/from16 v0, p4

    invoke-virtual {v12, v0, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    .line 814
    .local v10, "textAndIconColor":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 815
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDisabled()Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x80

    :goto_0
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 817
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 818
    .local v9, "mainIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_4

    .line 819
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 820
    .local v1, "iconBounds":Landroid/graphics/Rect;
    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int v5, v12, v13

    .line 821
    .local v5, "iconWidth":I
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int v2, v12, v13

    .line 822
    .local v2, "iconHeight":I
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v5

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v12, v13

    .line 824
    .local v3, "iconLeftX":I
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v2

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v12, v13

    .line 826
    .local v4, "iconTopY":I
    int-to-float v12, v3

    int-to-float v13, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDisabled()Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x80

    :goto_1
    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconHasColor()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mColorIconsUsingTextColor:Z

    if-eqz v12, :cond_0

    .line 829
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 831
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 832
    neg-int v12, v3

    int-to-float v12, v12

    neg-int v13, v4

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 862
    .end local v1    # "iconBounds":Landroid/graphics/Rect;
    .end local v2    # "iconHeight":I
    .end local v3    # "iconLeftX":I
    .end local v4    # "iconTopY":I
    .end local v5    # "iconWidth":I
    :cond_1
    :goto_2
    return-void

    .line 815
    .end local v9    # "mainIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v12, 0xff

    goto :goto_0

    .line 827
    .restart local v1    # "iconBounds":Landroid/graphics/Rect;
    .restart local v2    # "iconHeight":I
    .restart local v3    # "iconLeftX":I
    .restart local v4    # "iconTopY":I
    .restart local v5    # "iconWidth":I
    .restart local v9    # "mainIcon":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/16 v12, 0xff

    goto :goto_1

    .line 835
    .end local v1    # "iconBounds":Landroid/graphics/Rect;
    .end local v2    # "iconHeight":I
    .end local v3    # "iconLeftX":I
    .end local v4    # "iconTopY":I
    .end local v5    # "iconWidth":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLabel(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    .line 836
    .local v6, "label":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v6, :cond_1

    .line 838
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyTextSize()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyTextSizeScaleFactor()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getTextSize(IFI)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    .line 837
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyTextSize(FLandroid/graphics/Paint;)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyTextYOffsetPx()I

    move-result v11

    .line 843
    .local v11, "textYOffset":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintEnabled:Z

    if-nez v12, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->showExtendedSecondaryPrint()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .line 844
    invoke-virtual {v12}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->shallOffsetAllKeys()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondaryPrint(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 845
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintLabel(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 846
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isFixedPositionLabel()Z

    move-result v12

    if-nez v12, :cond_8

    .line 847
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextOffset:I

    add-int/2addr v11, v12

    .line 851
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    add-float v7, v12, v13

    .line 853
    .local v7, "labelX":F
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    .line 855
    invoke-virtual {v13}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    int-to-float v13, v11

    add-float v8, v12, v13

    .line 857
    .local v8, "labelY":F
    invoke-virtual {v6}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_2
.end method

.method private drawKeySecondaryPrint(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "keyPadding"    # Landroid/graphics/Rect;
    .param p3, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 865
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryLabelOnKey()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    .line 866
    .local v6, "secondaryKeyLabel":Lcom/sonyericsson/ned/model/CodePointString;
    iget-boolean v11, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintEnabled:Z

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondaryPrint(Z)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    if-nez v6, :cond_1

    .line 867
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->showExtendedSecondaryPrint()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 869
    :cond_1
    const/4 v3, 0x0

    .line 870
    .local v3, "print":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->showExtendedSecondaryPrint()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-boolean v11, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintEnabled:Z

    if-nez v11, :cond_4

    .line 872
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualSecondaryCandidates(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v11

    sget-object v12, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v11, v12}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 874
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualSecondaryCandidates(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 895
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 897
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyTextSizeSecondary()I

    move-result v11

    const/4 v12, 0x0

    iget v13, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintTextSize:I

    invoke-direct {p0, v11, v12, v13}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getTextSize(IFI)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    .line 896
    invoke-direct {p0, v11, v12}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyTextSize(FLandroid/graphics/Paint;)V

    .line 901
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    const/16 v12, 0xb2

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 902
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 903
    .local v7, "textWidth":F
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v11

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float/2addr v11, v7

    float-to-int v11, v11

    iget v12, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintOffset:I

    sub-int v2, v11, v12

    .line 905
    .local v2, "left":I
    int-to-float v11, v2

    add-float/2addr v11, v7

    float-to-int v4, v11

    .line 906
    .local v4, "right":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v11, v11, 0x2

    iget v12, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintOffset:I

    add-int v10, v11, v12

    .line 907
    .local v10, "top":I
    int-to-float v11, v10

    iget-object v12, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    add-float/2addr v11, v12

    iget-object v12, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    .line 908
    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v12

    sub-float/2addr v11, v12

    float-to-int v9, v11

    .line 909
    .local v9, "textY":I
    add-int v11, v4, v2

    div-int/lit8 v8, v11, 0x2

    .line 910
    .local v8, "textX":I
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v11

    int-to-float v12, v8

    int-to-float v13, v9

    iget-object v14, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextAndIconPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 913
    .end local v2    # "left":I
    .end local v3    # "print":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v4    # "right":I
    .end local v7    # "textWidth":F
    .end local v8    # "textX":I
    .end local v9    # "textY":I
    .end local v10    # "top":I
    :cond_3
    return-void

    .line 876
    .restart local v3    # "print":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->showExtendedSecondaryPrint()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-boolean v11, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintEnabled:Z

    if-eqz v11, :cond_6

    .line 878
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintLabel(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 879
    .local v1, "firstChar":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualSecondaryCandidates(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 880
    .local v5, "secondChar":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v1, v5}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 881
    move-object v3, v1

    .line 882
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 883
    const-string v11, "\u200a"

    invoke-virtual {v1, v11}, Lcom/sonyericsson/ned/model/CodePointString;->append(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 884
    invoke-virtual {v3, v5}, Lcom/sonyericsson/ned/model/CodePointString;->append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    goto/16 :goto_0

    .line 887
    :cond_5
    move-object v3, v5

    goto/16 :goto_0

    .line 891
    .end local v1    # "firstChar":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v5    # "secondChar":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_6
    if-eqz v6, :cond_7

    move-object v3, v6

    .line 892
    :goto_1
    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintLabel(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    goto :goto_1
.end method

.method private drawKeyShadow(Landroid/graphics/Canvas;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    const/4 v4, 0x0

    .line 770
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyBackgroundShadow(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 771
    .local v0, "keyShadow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 773
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 774
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 775
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 774
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 777
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 778
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 780
    :cond_0
    return-void
.end method

.method private findOrCreatePointerStream(I)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 1353
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->findPointerStream(I)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    move-result-object v0

    .line 1354
    .local v0, "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    if-eqz v0, :cond_0

    .end local v0    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    :goto_0
    return-object v0

    .restart local v0    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->createPointerStream(I)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    move-result-object v0

    goto :goto_0
.end method

.method private findPointerStream(I)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    .line 1373
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 1374
    .local v0, "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1378
    .end local v0    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fireOnEnabledStatusChanged(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V
    .locals 4
    .param p1, "enabledStatus"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    .param p2, "enabledStatusEffectedArea"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .prologue
    .line 978
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mOnKeyboardViewListener:[Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;

    if-eqz v1, :cond_0

    .line 979
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mOnKeyboardViewListener:[Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 980
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;->onEnabledStatusChanged(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 983
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;
    :cond_0
    return-void
.end method

.method private fireOnFeedback()V
    .locals 4

    .prologue
    .line 968
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    if-eqz v1, :cond_0

    .line 969
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 970
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;->onFeedback()V

    .line 969
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;
    :cond_0
    return-void
.end method

.method private fireOnNewKeys()V
    .locals 4

    .prologue
    .line 566
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;

    if-eqz v1, :cond_0

    .line 567
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 568
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;->onNewKeys()V

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;
    :cond_0
    return-void
.end method

.method private getKeyArea(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "keyRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1007
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1008
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1009
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1010
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1011
    return-void
.end method

.method private getKeyIndex(III)I
    .locals 6
    .param p1, "currentKeyIndex"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, -0x1

    .line 916
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-nez v4, :cond_1

    .line 937
    :cond_0
    :goto_0
    return v3

    .line 920
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 922
    .local v0, "currentKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isInsideExpandedKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;II)Z

    move-result v4

    if-nez v4, :cond_5

    .line 924
    :cond_2
    const/4 v2, 0x0

    .line 925
    .local v2, "keyIndex":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 926
    .local v1, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isInsideTouch(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 927
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDisabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .end local v2    # "keyIndex":I
    :cond_3
    move v3, v2

    goto :goto_0

    .line 929
    .restart local v2    # "keyIndex":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 930
    goto :goto_1

    .line 933
    .end local v1    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v2    # "keyIndex":I
    :cond_5
    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    move v3, p1

    goto :goto_0
.end method

.method private static getKeyWithShadowBounds(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p1, "shadowPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    .line 393
    .local v1, "keyAreaLeft":I
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 394
    .local v3, "keyAreaTop":I
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int v2, v4, v5

    .line 395
    .local v2, "keyAreaRight":I
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int v0, v4, v5

    .line 397
    .local v0, "keyAreaBottom":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private getKeyboardPaddingRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 2110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2112
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->hasViewPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2113
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2114
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2115
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2116
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2130
    :cond_0
    :goto_0
    return-object v0

    .line 2117
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    if-eqz v1, :cond_0

    .line 2118
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v2, "keyboard_left_padding"

    .line 2119
    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2121
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v2, "keyboard_right_padding"

    .line 2122
    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2124
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2125
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v2, "keyboard_bottom_padding"

    .line 2126
    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private getSecondaryPrintCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "isShifted"    # Z

    .prologue
    .line 1104
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintEnabled:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintCount(Z)I

    move-result v2

    .line 1105
    .local v2, "length":I
    :goto_0
    new-array v0, v2, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1106
    .local v0, "candidates":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1108
    invoke-virtual {p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintCandidate(ZI)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 1110
    .local v3, "secondaryPrintCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    new-instance v4, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v4, v3, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    aput-object v4, v0, v1

    .line 1111
    aget-object v4, v0, v1

    .line 1112
    invoke-virtual {p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintVisualCandidate(ZI)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 1111
    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setShiftedLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1104
    .end local v0    # "candidates":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v1    # "index":I
    .end local v2    # "length":I
    .end local v3    # "secondaryPrintCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1114
    .restart local v0    # "candidates":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .restart local v1    # "index":I
    .restart local v2    # "length":I
    :cond_1
    return-object v0
.end method

.method private getTextSize(IFI)I
    .locals 2
    .param p1, "textSize"    # I
    .param p2, "textSizeScaleFactor"    # F
    .param p3, "defaultTextSize"    # I

    .prologue
    .line 709
    if-eqz p1, :cond_0

    .line 710
    move v0, p1

    .line 715
    .local v0, "unscaledTextSize":I
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 718
    .end local v0    # "unscaledTextSize":I
    :goto_1
    return v0

    .line 712
    :cond_0
    move v0, p3

    .restart local v0    # "unscaledTextSize":I
    goto :goto_0

    .line 718
    :cond_1
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_1
.end method

.method private getUniqueSecondaryCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 11
    .param p1, "secondaryPrintCandidates"    # [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p3, "isShifted"    # Z

    .prologue
    .line 1119
    invoke-virtual {p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 1120
    .local v5, "secondaryCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryLabels(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 1121
    .local v3, "labels":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v6, v5

    .line 1122
    .local v6, "secondaryCandidatesLength":I
    const/4 v4, 0x0

    .line 1123
    .local v4, "nbrOfUniqueCandidates":I
    new-array v0, v6, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1125
    .local v0, "candidates":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 1126
    aget-object v2, v3, v1

    .line 1141
    .local v2, "label":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isUniqueCandidate([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1142
    new-instance v8, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    aget-object v9, v5, v1

    aget-object v10, v5, v1

    invoke-direct {v8, v9, v10}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    aput-object v8, v0, v4

    .line 1144
    if-eqz p3, :cond_1

    .line 1145
    aget-object v8, v0, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setNormalLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1146
    aget-object v8, v0, v4

    invoke-virtual {v8, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setShiftedLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1151
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 1125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1148
    :cond_1
    aget-object v8, v0, v4

    invoke-virtual {v8, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setNormalLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1149
    aget-object v8, v0, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setShiftedLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_1

    .line 1155
    .end local v2    # "label":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    if-ne v4, v6, :cond_3

    .line 1160
    .end local v0    # "candidates":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :goto_2
    return-object v0

    .line 1158
    .restart local v0    # "candidates":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_3
    new-array v7, v4, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1159
    .local v7, "uniqueCandidates":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v8, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v7

    .line 1160
    goto :goto_2
.end method

.method private handleCandidateSelection(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    .line 1736
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    if-eq v5, v6, :cond_0

    .line 1737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1738
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 1765
    .end local v0    # "action":I
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v5, 0x1

    return v5

    .line 1740
    .restart local v0    # "action":I
    :pswitch_1
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1741
    .local v2, "pIdIndex":I
    if-eq v2, v6, :cond_0

    .line 1742
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->onKeyboardTouchEvent(FF)V

    goto :goto_0

    .line 1747
    .end local v2    # "pIdIndex":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1748
    .local v4, "pointerId":I
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    if-ne v5, v4, :cond_0

    .line 1749
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hasSelectedCandidate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1750
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->getSelectedCandidate()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v1

    .line 1751
    .local v1, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    invoke-direct {v3, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1753
    .local v3, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->sendOnPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 1754
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    invoke-interface {v5, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 1756
    .end local v1    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v3    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->dismissPopupKeyboard()V

    .line 1757
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearPointerStreams()V

    .line 1758
    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    goto :goto_0

    .line 1738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleExploreByTouch(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, -0x1

    .line 1568
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-nez v2, :cond_1

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1602
    :pswitch_1
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1603
    .local v1, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->sendOnPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    goto :goto_0

    .line 1581
    .end local v1    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->releaseKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1582
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .line 1583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 1582
    invoke-virtual {p0, v5, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->findKeyIndex(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1585
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    if-eqz v2, :cond_0

    .line 1588
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->pressKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1591
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    const v4, 0x8000

    .line 1592
    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->createAccessibilityEvent(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 1591
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1596
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibility:Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v4

    invoke-virtual {v2, v3, p0, v4}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->announce(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/view/View;Z)V

    goto :goto_0

    .line 1610
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .line 1611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 1610
    invoke-virtual {p0, v5, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->findKeyIndex(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 1615
    .local v0, "moveKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    if-eq v0, v2, :cond_2

    .line 1616
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->releaseKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1617
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->pressKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1618
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibility:Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v2, v0, p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->announce(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/view/View;Z)V

    .line 1621
    :cond_2
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    goto :goto_0

    .line 1628
    .end local v0    # "moveKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :pswitch_4
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    if-eqz v2, :cond_0

    .line 1629
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1630
    .restart local v1    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    goto/16 :goto_0

    .line 1574
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleNormalTouch(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 1511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1512
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1514
    .local v3, "pointerId":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 1560
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1516
    :pswitch_1
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    if-nez v5, :cond_1

    .line 1517
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->resetTrace()V

    .line 1518
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearPointerStreams()V

    .line 1522
    :cond_1
    :pswitch_2
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->access$100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1524
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    .line 1525
    .local v1, "actionUpRunnable":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getLocalHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1526
    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    .line 1528
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->access$100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpMultiFingerBoundary:I

    .line 1528
    invoke-virtual {v5, v6, v7, v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isCloseToLastPoint(III)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1534
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->run()V

    .line 1536
    .end local v1    # "actionUpRunnable":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;
    :cond_2
    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->findOrCreatePointerStream(I)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    move-result-object v2

    .line 1537
    .local v2, "newPointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->updatePointerStreamsProperties()V

    .line 1538
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->handleTouchEvents(Landroid/view/MotionEvent;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    goto :goto_0

    .line 1542
    .end local v2    # "newPointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->updatePointerStreamsProperties()V

    .line 1543
    invoke-direct {p0, p1, v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->handleTouchEvents(Landroid/view/MotionEvent;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    goto :goto_0

    .line 1548
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->findOrCreatePointerStream(I)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    move-result-object v4

    .line 1549
    .local v4, "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    if-eqz v4, :cond_0

    .line 1550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isTrace()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1551
    new-instance v5, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    invoke-direct {v5, p0, v4, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;Landroid/view/MotionEvent;)V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    .line 1552
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getLocalHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    const-wide/16 v8, 0x1e

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1554
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->handlePointerUpEvent(Landroid/view/MotionEvent;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    goto/16 :goto_0

    .line 1514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private handlePointerUpEvent(Landroid/view/MotionEvent;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 1666
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->handleTouchEvents(Landroid/view/MotionEvent;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    .line 1667
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->closePointerStream(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    .line 1668
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->removePointerStream(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    .line 1669
    return-void
.end method

.method private handleTouchEvents(Landroid/view/MotionEvent;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 16
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointerStreamTrigger"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 1428
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    .line 1431
    .local v11, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 1432
    .local v1, "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    move-object/from16 v0, p2

    if-eq v1, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActionUpRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    .line 1433
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->access$100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    move-result-object v2

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_0

    .line 1434
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 1435
    .local v14, "pointerIndex":I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_7

    .line 1452
    .end local v1    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .end local v14    # "pointerIndex":I
    :cond_2
    if-eqz p2, :cond_6

    .line 1453
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v15

    .line 1454
    .local v15, "triggerPointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 1455
    .restart local v14    # "pointerIndex":I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_6

    .line 1456
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1457
    .local v3, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1459
    .local v4, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mVerticalCorrection:I

    neg-int v2, v2

    if-lt v4, v2, :cond_3

    .line 1460
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v4, v2

    .line 1463
    :cond_3
    const/4 v2, 0x5

    if-eq v11, v2, :cond_4

    if-nez v11, :cond_9

    .line 1465
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getKeyIndex()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyIndex(III)I

    move-result v13

    .line 1467
    .local v13, "keyIndex":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_5

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v2, v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v12

    .line 1469
    .local v12, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceBoundaryEvaluator:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;

    .line 1470
    invoke-virtual {v2, v12}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->getTraceBoundary(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Landroid/graphics/Point;

    move-result-object v2

    .line 1469
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->setTraceBoundary(Landroid/graphics/Point;)V

    .line 1473
    .end local v12    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_5
    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->DOWN:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    .line 1474
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    move-object/from16 v5, p2

    move v7, v3

    move v8, v4

    .line 1473
    invoke-virtual/range {v5 .. v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->onTouchEvent(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;IIFF)V

    .line 1483
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v13    # "keyIndex":I
    .end local v14    # "pointerIndex":I
    .end local v15    # "triggerPointerId":I
    :cond_6
    :goto_1
    return-void

    .line 1438
    .restart local v1    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .restart local v14    # "pointerIndex":I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1439
    .restart local v3    # "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1441
    .restart local v4    # "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mVerticalCorrection:I

    neg-int v2, v2

    if-lt v4, v2, :cond_8

    .line 1442
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v4, v2

    .line 1445
    :cond_8
    move-object/from16 v0, p2

    if-eq v1, v0, :cond_0

    .line 1446
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->MOVE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 1447
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 1446
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->onTouchEvent(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;IIFF)V

    goto/16 :goto_0

    .line 1475
    .end local v1    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .restart local v15    # "triggerPointerId":I
    :cond_9
    const/4 v2, 0x1

    if-eq v11, v2, :cond_a

    const/4 v2, 0x6

    if-ne v11, v2, :cond_6

    .line 1477
    :cond_a
    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->UP:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    .line 1478
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    move-object/from16 v5, p2

    move v7, v3

    move v8, v4

    .line 1477
    invoke-virtual/range {v5 .. v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->onTouchEvent(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;IIFF)V

    goto :goto_1
.end method

.method private hasLongPressCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Z
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondCandidates(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasXKeyCandidates()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintEnabled:Z

    if-eqz v0, :cond_1

    .line 1983
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondaryPrint(Z)Z

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

.method private hasViewPadding()Z
    .locals 1

    .prologue
    .line 2134
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingBottom()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingRight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2135
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 1043
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mInvalidatedKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1048
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyWithShadowBounds(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1050
    .local v0, "keyWithShadowRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1052
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->redrawDirtyObject()V

    .line 1054
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->postInvalidate(IIII)V

    goto :goto_0
.end method

.method private invalidateKeyIndicatorGraphics()V
    .locals 3

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicatorGraphics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;

    .line 1335
    .local v0, "keyIndicatorGraphics":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateKeyIndicatorGraphics(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;)V

    goto :goto_0

    .line 1337
    .end local v0    # "keyIndicatorGraphics":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    :cond_0
    return-void
.end method

.method private invalidateKeyIndicatorGraphics(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;)V
    .locals 4
    .param p1, "keyIndicatorGraphics"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->getBounds(Landroid/graphics/Rect;)V

    .line 1341
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->postInvalidate(IIII)V

    .line 1342
    return-void
.end method

.method private invalidateTraceGraphics()V
    .locals 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->getBoundingBox(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidate(Landroid/graphics/Rect;)V

    .line 1331
    :goto_0
    return-void

    .line 1329
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->postInvalidate()V

    goto :goto_0
.end method

.method private isLongPressActive()Z
    .locals 2

    .prologue
    .line 1316
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPressed([I)Z
    .locals 3
    .param p1, "drawableState"    # [I

    .prologue
    .line 802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 803
    aget v1, p1, v0

    const v2, 0x10100a7

    if-ne v1, v2, :cond_0

    .line 804
    const/4 v1, 0x1

    .line 807
    :goto_1
    return v1

    .line 802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isUniqueCandidate([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 5
    .param p1, "candidates"    # [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "label"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x0

    .line 1095
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 1096
    .local v0, "candidate":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->doesLabelAlreadyExist(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    .end local v0    # "candidate":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :goto_1
    return v1

    .line 1095
    .restart local v0    # "candidate":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1100
    .end local v0    # "candidate":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private pressKey(I)V
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->pressKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1233
    :cond_0
    return-void
.end method

.method private pressKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 1236
    if-eqz p1, :cond_0

    .line 1237
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->onPressed()V

    .line 1238
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1240
    :cond_0
    return-void
.end method

.method private releaseAllPressedKeys()V
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->releasePressedKeys(Ljava/util/List;)V

    .line 1246
    :cond_0
    return-void
.end method

.method private releaseKey(I)V
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->releaseKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1220
    :cond_0
    return-void
.end method

.method private releaseKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 1223
    if-eqz p1, :cond_0

    .line 1224
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->onReleased(Z)V

    .line 1225
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 1227
    :cond_0
    return-void
.end method

.method private releasePressedKeys(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1249
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1250
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1251
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->onReleased(Z)V

    .line 1252
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    goto :goto_0

    .line 1255
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    return-void
.end method

.method private removePointerStream(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 1
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPooledPointerStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    :cond_0
    return-void
.end method

.method private resetKeyIndexPointerStreams()V
    .locals 3

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 1417
    .local v0, "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->resetKeyIndex()V

    goto :goto_0

    .line 1419
    .end local v0    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    :cond_0
    return-void
.end method

.method private resetStates()V
    .locals 1

    .prologue
    .line 1787
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearPreview()V

    .line 1788
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearPointerStreams()V

    .line 1789
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearGraphics()V

    .line 1790
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->dismissPopupKeyboard()V

    .line 1791
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mCommandKeysInPressedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1792
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicators:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1793
    return-void
.end method

.method private resetTrace()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceInProgress:Z

    .line 1346
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActiveTracePointerId:I

    .line 1347
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLongPressActivePointerId:I

    .line 1348
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateTraceGraphics()V

    .line 1349
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->reset()V

    .line 1350
    return-void
.end method

.method private static round(F)I
    .locals 2
    .param p0, "v"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 388
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    add-float v0, p0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    sub-float v0, p0, v1

    goto :goto_0
.end method

.method private setKeyTextSize(FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "textSize"    # F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 729
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 730
    return-void
.end method

.method private setKeyboardState(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V
    .locals 2
    .param p1, "enabledStatus"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    .param p2, "effectedArea"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .prologue
    .line 1291
    const/4 v0, 0x0

    .line 1292
    .local v0, "isDimmed":Z
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED_DIMMED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    if-ne p1, v1, :cond_1

    .line 1294
    :cond_0
    const/4 v0, 0x1

    .line 1296
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isDimmed()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1297
    if-eqz v0, :cond_3

    const/4 v1, 0x3

    :goto_0
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardTypeOnScreen:I

    .line 1298
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearPointerStreams()V

    .line 1299
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 1300
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->fireOnEnabledStatusChanged(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 1302
    :cond_2
    return-void

    .line 1297
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setupBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .param p3, "isOneHandedKeyboard"    # Z

    .prologue
    .line 413
    if-nez p3, :cond_2

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLastSkinName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    :cond_0
    invoke-interface {p2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mLastSkinName:Ljava/lang/String;

    .line 416
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->NORMAL:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    invoke-interface {p2, p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 421
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setupKeyBackgrounds(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 3
    .param p1, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 529
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->BASIC:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v0

    const v1, 0x7f0200cd

    const v2, 0x7f0200d6

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setupKeyBackgrounds(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;III)V

    .line 531
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->AUXILIARY:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v0

    const v1, 0x7f0200ce

    const v2, 0x7f0200cf

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setupKeyBackgrounds(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;III)V

    .line 533
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->SPACE:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v0

    const v1, 0x7f0200d7

    const v2, 0x7f0200d8

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setupKeyBackgrounds(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;III)V

    .line 536
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v0

    const v1, 0x7f0200d1

    const v2, 0x7f0200d2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setupKeyBackgrounds(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;III)V

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgroundShadows:Landroid/util/SparseArray;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->BASIC:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v1

    const v2, 0x7f0200d5

    .line 542
    invoke-interface {p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 541
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgroundShadows:Landroid/util/SparseArray;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->AUXILIARY:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v1

    const v2, 0x7f0200d0

    .line 544
    invoke-interface {p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 543
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgroundShadows:Landroid/util/SparseArray;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v1

    const v2, 0x7f0200d3

    invoke-interface {p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgroundShadows:Landroid/util/SparseArray;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->SPACE:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v1

    const v2, 0x7f0200d9

    invoke-interface {p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 549
    return-void
.end method

.method private setupKeyBackgrounds(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;III)V
    .locals 3
    .param p1, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .param p2, "index"    # I
    .param p3, "drawableNormalStateId"    # I
    .param p4, "drawablePressedStateId"    # I

    .prologue
    .line 553
    invoke-interface {p1, p3}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 554
    .local v0, "keyBackgroundNormal":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgrounds:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 555
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgroundsPressed:Landroid/util/SparseArray;

    invoke-interface {p1, p4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 556
    return-void
.end method

.method private setupKeyPopup()V
    .locals 4

    .prologue
    .line 559
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getBasicDrawableState()[I

    move-result-object v0

    .line 560
    .local v0, "drawableState":[I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextColorStateList:Landroid/content/res/ColorStateList;

    const/high16 v3, 0xff0000

    invoke-virtual {v2, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 562
    .local v1, "feedbackTextColor":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setTextColor(I)V

    .line 563
    return-void
.end method

.method private setupKeyShadowPadding(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 2
    .param p1, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 516
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    .line 518
    if-eqz p1, :cond_0

    .line 519
    const v0, 0x7f0200d3

    invoke-interface {p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadow:Landroid/graphics/drawable/Drawable;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 525
    :cond_1
    return-void
.end method

.method private showKeyCandidatesPopup(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "popupKeys"    # [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPreviewOffset:I

    invoke-virtual {v0, p2, p1, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->showCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)V

    .line 1259
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardTypeOnScreen:I

    .line 1260
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 1261
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED_DIMMED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->fireOnEnabledStatusChanged(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 1263
    return-void
.end method

.method private startTraceAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1672
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->getAnimationDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1674
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->setAnimateFadeout(Z)V

    .line 1675
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->setAnimateShape(Z)V

    .line 1680
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    const/high16 v1, 0x44200000    # 640.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->startAnimation(F)V

    .line 1692
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->run()V

    .line 1693
    return-void

    .line 1686
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->setAnimateFadeout(Z)V

    .line 1687
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->setAnimateShape(Z)V

    .line 1688
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    const v1, 0x459c4000    # 5000.0f

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->length()F

    move-result v2

    const v3, 0x3eb851ec    # 0.36f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->startAnimation(F)V

    goto :goto_0
.end method

.method private updateKeyPressed(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V
    .locals 2
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "keyIndex"    # I

    .prologue
    .line 1205
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getKeyIndex()I

    move-result v0

    .line 1208
    .local v0, "prevKeyIndex":I
    if-eq v0, p2, :cond_0

    .line 1209
    invoke-virtual {p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isPressedKey(I)Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->updatePreview(IZ)V

    .line 1211
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->releaseKey(I)V

    .line 1212
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->pressKey(I)V

    .line 1214
    :cond_0
    return-void
.end method

.method private updatePointerStreams()V
    .locals 5

    .prologue
    .line 574
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 575
    .local v0, "stream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getLastX()I

    move-result v1

    .line 576
    .local v1, "x":I
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getLastY()I

    move-result v2

    .line 577
    .local v2, "y":I
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->close()V

    .line 578
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->restart(II)V

    goto :goto_0

    .line 580
    .end local v0    # "stream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method private updatePointerStreamsProperties()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1769
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActivePointStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 1770
    .local v0, "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v1

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mActiveTracePointerId:I

    if-eq v1, v5, :cond_0

    .line 1771
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceInProgress:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceEnabled:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->setTraceEnabled(Z)V

    .line 1773
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceInProgress:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->setLongPressEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1771
    goto :goto_1

    :cond_2
    move v1, v3

    .line 1773
    goto :goto_2

    .line 1775
    .end local v0    # "pointerStream":Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    :cond_3
    return-void
.end method

.method private updatePreview(IZ)V
    .locals 4
    .param p1, "keyIndex"    # I
    .param p2, "pressed"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1172
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mShowKeyPreviews:Z

    if-eqz v1, :cond_2

    .line 1173
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 1174
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_4

    .line 1175
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mCommandKeysInPressedState:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1176
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getShowPreview()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getShowPreview()I

    move-result v1

    if-ne v1, v3, :cond_3

    if-eqz p2, :cond_3

    .line 1178
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearPreview()V

    .line 1187
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_2
    :goto_0
    return-void

    .line 1180
    .restart local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPreviewOffset:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->showPreview(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;IZ)V

    goto :goto_0

    .line 1184
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addMetaKeyIndicator(ILcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;)V
    .locals 1
    .param p1, "metaKey"    # I
    .param p2, "animationAttributes"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;

    .prologue
    .line 1696
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1704
    :goto_0
    return-void

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1703
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->createMetaKeyAnimation(ILcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;)V

    goto :goto_0
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
    .line 1881
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    if-ne p2, v0, :cond_0

    .line 1882
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    .line 1883
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    .line 1891
    :goto_0
    return-object v0

    .line 1884
    :cond_0
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;

    if-ne p2, v0, :cond_1

    .line 1885
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mOnKeyboardViewListener:[Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;

    .line 1886
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mOnKeyboardViewListener:[Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;

    goto :goto_0

    .line 1887
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;

    if-ne p2, v0, :cond_2

    .line 1888
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;

    .line 1889
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;

    goto :goto_0

    .line 1891
    :cond_2
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
    .line 1896
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    if-ne p2, v0, :cond_1

    .line 1897
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    .line 1911
    :cond_0
    :goto_0
    return-void

    .line 1898
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-ne p2, v0, :cond_2

    .line 1899
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    goto :goto_0

    .line 1900
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    if-ne p2, v0, :cond_3

    .line 1901
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    goto :goto_0

    .line 1902
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    if-ne p2, v0, :cond_4

    .line 1903
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    goto :goto_0

    .line 1904
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    if-ne p2, v0, :cond_5

    .line 1905
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardDimTouchBroadcaster:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    goto :goto_0

    .line 1906
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_6

    .line 1907
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextInputPersistentSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 1908
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_6
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;

    if-ne p2, v0, :cond_0

    .line 1909
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibility:Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;

    goto :goto_0
.end method

.method protected closing()V
    .locals 1

    .prologue
    .line 1797
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->resetStates()V

    .line 1798
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->closing()V

    .line 1799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .line 1800
    return-void
.end method

.method public createAccessibilityEvent(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # I

    .prologue
    .line 1648
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getId()I

    move-result v2

    .line 1649
    .local v2, "virtualViewId":I
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1650
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1652
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1653
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    .line 1654
    .local v1, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {v1, p0, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    .line 1655
    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1815
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    .line 1816
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    if-eqz v0, :cond_0

    .line 1817
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->dismissPopupKeyboard()V

    .line 1818
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->dispose()V

    .line 1820
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1821
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->dispose()V

    .line 1822
    return-void
.end method

.method protected drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dirtyObject"    # Ljava/lang/Object;

    .prologue
    .line 734
    move-object v1, p2

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 736
    .local v1, "invalidKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-nez v5, :cond_0

    .line 766
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyPadding()Landroid/graphics/Rect;

    move-result-object v4

    .line 741
    .local v4, "keyPadding":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 742
    .local v2, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    .line 745
    :cond_2
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyBackgroundNormal(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 752
    .local v3, "keyBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 754
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v0

    .line 756
    .local v0, "drawableState":[I
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->drawKeyShadow(Landroid/graphics/Canvas;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 757
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->drawKeyBackground(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I)V

    .line 758
    invoke-direct {p0, p1, v4, v2, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->drawKeyMainTextOrIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I)V

    .line 759
    invoke-direct {p0, p1, v4, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->drawKeySecondaryPrint(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 760
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 762
    .end local v0    # "drawableState":[I
    .end local v2    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v3    # "keyBackground":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mInvalidatedKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 763
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 765
    invoke-super {p0, p1, v1}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public enableSecondaryPrint(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2097
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintEnabled:Z

    .line 2098
    return-void
.end method

.method public findKey(III)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 2
    .param p1, "currentKeyIndex"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-nez v0, :cond_0

    .line 2001
    const/4 v0, 0x0

    .line 2003
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyIndex(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    goto :goto_0
.end method

.method public findKeyIndex(III)I
    .locals 1
    .param p1, "currentKeyIndex"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1995
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyIndex(III)I

    move-result v0

    return v0
.end method

.method public getAllKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 1928
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getExpandedKeyRect(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 947
    invoke-virtual {p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchRect(Landroid/graphics/Rect;)V

    .line 948
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 949
    .local v3, "w":F
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v2, v4

    .line 950
    .local v2, "h":F
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyExpansionFactorX:F

    mul-float/2addr v4, v3

    sub-float/2addr v4, v3

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->round(F)I

    move-result v4

    shr-int/lit8 v0, v4, 0x1

    .line 951
    .local v0, "dx":I
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyExpansionFactorY:F

    mul-float/2addr v4, v2

    sub-float/2addr v4, v2

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->round(F)I

    move-result v4

    shr-int/lit8 v1, v4, 0x1

    .line 953
    .local v1, "dy":I
    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 954
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 956
    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 957
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v1

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 958
    return-void
.end method

.method public getKeyBackgroundNormal(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "keyStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgrounds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyBackgroundPressed(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "keyStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgroundsPressed:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyBackgroundShadow(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "keyStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgroundShadows:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyInnerArea(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 1014
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyPadding(Landroid/graphics/Rect;)V

    .line 1015
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1016
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1017
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1018
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1019
    return-void
.end method

.method public getKeyPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyPadding()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1988
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPadding:Landroid/graphics/Rect;

    .line 1990
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyPadding()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyPadding()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1934
    return-void
.end method

.method public getKeyShadowPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getKeyboard()Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

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
    .line 1915
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2140
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalCorrection()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mVerticalCorrection:I

    return v0
.end method

.method public getVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2093
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2094
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 1826
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->init()V

    .line 1827
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setResourceLookupProvider(Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)V

    .line 1828
    const/4 v3, 0x1

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardTypeOnScreen:I

    .line 1830
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1832
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    if-eqz v3, :cond_0

    .line 1833
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->addPopupContainerEventListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;)V

    .line 1835
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v0

    .line 1836
    .local v0, "leftPopupConstraint":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardTotalSpanWidthPx()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 1837
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v4

    sub-int v1, v3, v4

    .line 1838
    .local v1, "rightPopupConstraint":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setPopupConstraints(II)V

    .line 1839
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTextInputPersistentSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 1840
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->getFloatingKeyboardMode(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v4

    .line 1839
    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setFloatingKeyboardMode(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    .line 1848
    .end local v0    # "leftPopupConstraint":I
    .end local v1    # "rightPopupConstraint":I
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 1849
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSizeAndScaleProviderInitiator()Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1850
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 1851
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSizeAndScaleProviderInitiator()Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;

    move-result-object v2

    .line 1853
    .local v2, "sizeAndScaleProviderInitiator":Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyboardPaddingRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;->setKeyboardPadding(Landroid/graphics/Rect;)V

    .line 1855
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardModifiedWidth:I

    if-eqz v3, :cond_1

    .line 1856
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardModifiedWidth:I

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;->setModifiedKeyboardWidthPx(I)V

    .line 1859
    :cond_1
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardModifiedHeight:I

    if-eqz v3, :cond_2

    .line 1860
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardModifiedHeight:I

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;->setModifiedKeyboardHeightPx(I)V

    .line 1863
    :cond_2
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardKeyContentScaleFactor:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 1864
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardKeyContentScaleFactor:F

    .line 1865
    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;->setKeyContentScaleFactor(F)V

    .line 1868
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextSizeUnscaled:I

    int-to-float v5, v5

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextSize:I

    .line 1870
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->SECONDARY_PRINT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintTextSizeUnscaled:I

    int-to-float v5, v5

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintTextSize:I

    .line 1877
    .end local v2    # "sizeAndScaleProviderInitiator":Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;
    :goto_0
    return-void

    .line 1874
    :cond_4
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextSizeUnscaled:I

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextSize:I

    .line 1875
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintTextSizeUnscaled:I

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSecondaryPrintTextSize:I

    goto :goto_0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1029
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1030
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setDrawPending(Z)V

    .line 1031
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->postInvalidate()V

    .line 1032
    return-void
.end method

.method public isDimmed()Z
    .locals 2

    .prologue
    .line 1266
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardTypeOnScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 2

    .prologue
    .line 1270
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardTypeOnScreen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsideExpandedKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;II)Z
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 941
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mWorkRect:Landroid/graphics/Rect;

    .line 942
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getExpandedKeyRect(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)V

    .line 943
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferDraw(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dirtyObject"    # Ljava/lang/Object;

    .prologue
    .line 679
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, "drawSingleKey":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mInvalidatedKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 683
    .local v2, "invalidKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 684
    .local v0, "clipRegion":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyShadowDrawablePadding:Landroid/graphics/Rect;

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyWithShadowBounds(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 688
    .local v3, "keyWithShadowRect":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, -0x1

    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-lt v4, v5, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_0

    .line 692
    const/4 v1, 0x1

    .line 695
    .end local v3    # "keyWithShadowRect":Landroid/graphics/Rect;
    :cond_0
    if-eqz v1, :cond_1

    .end local v2    # "invalidKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :goto_0
    invoke-super {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onBufferDraw(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    .line 696
    return-void

    .line 695
    .restart local v2    # "invalidKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onBufferInitiated()V
    .locals 0

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 645
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getWidth()I

    move-result v3

    .line 651
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getHeight()I

    move-result v1

    .line 652
    .local v1, "height":I
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSplit:Z

    if-eqz v4, :cond_1

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSplitHalfWidth:I

    .line 653
    .local v0, "backgroundWidth":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 654
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 655
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 656
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSplit:Z

    if-eqz v4, :cond_0

    .line 658
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSplitHalfWidth:I

    sub-int v5, v3, v5

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 659
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 663
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 665
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->animateGraphics()V

    .line 667
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicatorGraphics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;

    .line 668
    .local v2, "keyIndicatorGraphic":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    invoke-virtual {v2, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .end local v0    # "backgroundWidth":I
    .end local v2    # "keyIndicatorGraphic":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    :cond_1
    move v0, v3

    .line 652
    goto :goto_0

    .line 671
    .restart local v0    # "backgroundWidth":I
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    if-eqz v4, :cond_3

    .line 672
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->draw(Landroid/graphics/Canvas;)V

    .line 675
    :cond_3
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 439
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 440
    .local v1, "handled":Z
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mExploreByTouch:Z

    if-eqz v2, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 443
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 457
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 459
    .end local v0    # "action":I
    .end local v1    # "handled":Z
    :cond_0
    return v1

    .line 445
    .restart local v0    # "action":I
    .restart local v1    # "handled":Z
    :pswitch_1
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 449
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 452
    :pswitch_3
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 634
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->hasReleasedResources()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onMeasure(II)V

    .line 641
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .line 638
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getSpanWidthPx()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .line 639
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getHeightPx()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 637
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 1487
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mIsVisible:I

    if-eqz v1, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return v0

    .line 1491
    :cond_1
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardTypeOnScreen:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1492
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardDimTouchBroadcaster:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    if-eqz v1, :cond_0

    .line 1493
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardDimTouchBroadcaster:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;->fireOnDimmedKeyboardTouched()V

    goto :goto_0

    .line 1498
    :cond_2
    const/4 v0, 0x1

    .line 1499
    .local v0, "handled":Z
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardTypeOnScreen:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1500
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->handleCandidateSelection(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1501
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mExploreByTouch:Z

    if-nez v1, :cond_4

    .line 1502
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->handleNormalTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1504
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->handleExploreByTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    .line 1779
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1780
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mIsVisible:I

    .line 1781
    if-eqz p2, :cond_0

    .line 1782
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->resetStates()V

    .line 1784
    :cond_0
    return-void
.end method

.method public onWordNotInDictionary()V
    .locals 2

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->setAnimationDirection(Z)V

    .line 2089
    :cond_0
    return-void
.end method

.method public resetPressedState()V
    .locals 2

    .prologue
    .line 1919
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->releaseAllPressedKeys()V

    .line 1920
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hide(Z)V

    .line 1921
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 2021
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->isAnimating()Z

    move-result v2

    .line 2022
    .local v2, "traceAnimating":Z
    if-eqz v2, :cond_0

    .line 2023
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateTraceGraphics()V

    .line 2026
    :cond_0
    const/4 v1, 0x0

    .line 2027
    .local v1, "keyIndicatorGraphicsAnimating":Z
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicatorGraphics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;

    .line 2028
    .local v0, "keyIndicatorGraphics":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2029
    const/4 v1, 0x1

    .line 2030
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateKeyIndicatorGraphics(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;)V

    goto :goto_0

    .line 2034
    .end local v0    # "keyIndicatorGraphics":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getLocalHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2035
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    .line 2037
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getLocalHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x14

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2039
    :cond_4
    return-void
.end method

.method protected sendOnPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 961
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->getKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->getKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->fireOnFeedback()V

    .line 963
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 965
    :cond_0
    return-void
.end method

.method public setEnableLongPressAnimations(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setEnableLongPressAnimations(Z)V

    .line 2082
    return-void
.end method

.method public setExploreByTouch(Z)V
    .locals 0
    .param p1, "exploreByTouch"    # Z

    .prologue
    .line 1978
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mExploreByTouch:Z

    .line 1979
    return-void
.end method

.method public setKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZZ)V
    .locals 2
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .param p4, "rebind"    # Z
    .param p5, "isOneHandedKeyboard"    # Z

    .prologue
    const/4 v1, 0x0

    .line 476
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mAccessibilityKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setSizeAndScaleProvider(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 479
    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->applySkin(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v0, p5}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setIsOneHandedKeyboard(Z)V

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v0, p3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 483
    invoke-direct {p0, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setupKeyShadowPadding(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 484
    if-nez p4, :cond_0

    .line 485
    invoke-direct {p0, p2, p3, p5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setupBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;Z)V

    .line 487
    invoke-direct {p0, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setupKeyBackgrounds(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 489
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextColorId:I

    invoke-interface {p3, v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyTextColorStateList:Landroid/content/res/ColorStateList;

    .line 491
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setupKeyPopup()V

    .line 493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPadding:Landroid/graphics/Rect;

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyBackgrounds:Landroid/util/SparseArray;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->BASIC:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 496
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->clearPreviewDelayed()V

    .line 497
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->resetPressedState()V

    .line 498
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->resetKeyIndexPointerStreams()V

    .line 500
    const v0, 0x7f0b0023

    invoke-static {p2, v0, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->fromResource(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceGraphics:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mPointerListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->onReInitialize()V

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyIndicatorGraphics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 504
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->createMetaKeyAnimations()V

    .line 505
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->refreshDrawableState()V

    .line 507
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 508
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->updatePointerStreams()V

    .line 509
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->resetTrace()V

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->requestLayout()V

    .line 512
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->fireOnNewKeys()V

    .line 513
    return-void
.end method

.method public setKeyboardDimAndDisabledState(ZLcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V
    .locals 3
    .param p1, "isDimmedAndDisabled"    # Z
    .param p2, "effectedArea"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .prologue
    .line 1283
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED_DIMMED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 1285
    .local v0, "status":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyPopup:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hide(Z)V

    .line 1286
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboardState(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 1287
    return-void

    .line 1283
    .end local v0    # "status":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    goto :goto_0
.end method

.method public setKeyboardDisabledState(ZLcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V
    .locals 1
    .param p1, "disabled"    # Z
    .param p2, "effectedArea"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .prologue
    .line 1312
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboardState(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 1313
    return-void

    .line 1312
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    goto :goto_0
.end method

.method public setKeyboardMoveRequestListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    .prologue
    .line 409
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardMoveRequestListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    .line 410
    return-void
.end method

.method public setMoveKeyboardEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1974
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mMoveKeyboardEnabled:Z

    .line 1975
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    .line 435
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .param p1, "isPreviewEnabled"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mShowKeyPreviews:Z

    .line 626
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 609
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 612
    const/4 v0, 0x1

    .line 614
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowCandidatesEnabled(Z)V
    .locals 0
    .param p1, "showCandidates"    # Z

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mShowCandidates:Z

    .line 630
    return-void
.end method

.method public setSplit(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 2106
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mSplit:Z

    .line 2107
    return-void
.end method

.method public setTraceEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1969
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceEnabled:Z

    .line 1970
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceBoundaryEvaluator:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->registerTraceMode(Z)V

    .line 1971
    return-void
.end method
