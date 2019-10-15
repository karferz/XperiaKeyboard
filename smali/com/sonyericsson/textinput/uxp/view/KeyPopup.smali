.class public Lcom/sonyericsson/textinput/uxp/view/KeyPopup;
.super Ljava/lang/Object;
.source "KeyPopup.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/KeyPopup$PopupHider;,
        Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;
    }
.end annotation


# static fields
.field private static final CANDIDATE_SELECTION_DELAY:I = 0x14

.field private static final HIDE_DELAY:J = 0x3cL

.field private static final WITHIN_INITIAL_CANDIDATE_THRESHOLD_CANDIDATE_WIDTH_DIVISOR:I = 0x18


# instance fields
.field private mBackground:Landroid/view/ViewGroup;

.field private final mCancelSelectionThreshold:I

.field private final mCandidateHighlightHeightOffset:I

.field private mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

.field private final mCandidateSelectionRunnable:Ljava/lang/Runnable;

.field private mCandidatesPlaceholder:Landroid/widget/LinearLayout;

.field private mCandidatesWindowWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentCandidateIndex:I

.field private mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialCandidateLeftThreshold:I

.field private mInitialCandidateRightThreshold:I

.field private mIsAnimationPreviewToFullEnabled:Z

.field private mIsContainerInitialized:Z

.field private mIsLongPressAnimationEnabled:Z

.field private mIsOneHandedKeyboard:Z

.field private mIsWithinInitialCandidateThreshold:Z

.field private mKeyPopupAnimator:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

.field private mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

.field private mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMinimumTotalContentWidth:I

.field private mPopupConstraintsLeft:I

.field private mPopupConstraintsRight:I

.field private final mPopupHider:Ljava/lang/Runnable;

.field private mPopupShadow:Landroid/view/ViewGroup;

.field private mPreviewPlaceholder:Landroid/widget/RelativeLayout;

.field private mPreviewWidth:I

.field private mPreviousHighlightedItem:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

.field private mPrimaryCandidateImageView:Landroid/widget/ImageView;

.field private mPrimaryCandidateTextView:Landroid/widget/TextView;

.field private mPriorityCandidateIndex:I

.field private mRefreshCandidateColors:Z

.field private mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSelectedCandidate:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field private mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private mTextColor:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mTotalCandidateWidthInFrontOfPriorityCandidate:I

.field private final mTypefaceBold:Landroid/graphics/Typeface;

.field private final mTypefaceNormal:Landroid/graphics/Typeface;

.field private mX:I

.field private mY:I

.field private mYOffsetAboveKey:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mHandler:Landroid/os/Handler;

    .line 108
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->HIDDEN:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    .line 188
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateSelectionRunnable:Ljava/lang/Runnable;

    .line 238
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRefreshCandidateColors:Z

    .line 272
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsLongPressAnimationEnabled:Z

    .line 285
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$PopupHider;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$PopupHider;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupHider:Ljava/lang/Runnable;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateHighlightHeightOffset:I

    .line 290
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 292
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mContext:Landroid/content/Context;

    .line 294
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->typefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 299
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->typefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTypefaceNormal:Landroid/graphics/Typeface;

    .line 300
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->typefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTypefaceBold:Landroid/graphics/Typeface;

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCancelSelectionThreshold:I

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->selectCurrentCandidate()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupHider:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewPlaceholder:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->doPreDraw()V

    return-void
.end method

.method private calculateAndShowCandidatePopup(IILcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)V
    .locals 10
    .param p1, "priorityCandidateIndex"    # I
    .param p2, "priorityCandidateWidth"    # I
    .param p3, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p4, "popupOffset"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 653
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsContainerInitialized:Z

    if-nez v0, :cond_0

    .line 680
    :goto_0
    return-void

    .line 658
    :cond_0
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 659
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 660
    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    iget v1, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 663
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 662
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 665
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 666
    .local v3, "width":I
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    .line 668
    .local v4, "height":I
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTotalCandidateWidthInFrontOfPriorityCandidate:I

    .line 670
    .local v7, "candidatesWidthInFrontOfPriorityCandidate":I
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupShadow:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mBackground:Landroid/view/ViewGroup;

    .line 671
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    div-int/lit8 v1, p2, 0x2

    add-int v8, v0, v1

    .line 674
    .local v8, "leftOfPriorityCandidateCenterX":I
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterXPx()I

    move-result v0

    sub-int v5, v0, v8

    .line 676
    .local v5, "popupX":I
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->showOnScreen(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;IIIIZ)V

    .line 679
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    goto :goto_0
.end method

.method private calculateAndShowPreviewPopup(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)V
    .locals 7
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "popupOffset"    # I

    .prologue
    const/4 v6, 0x0

    .line 547
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsContainerInitialized:Z

    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v6}, Landroid/view/ViewGroup;->measure(II)V

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 554
    .local v3, "width":I
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    .line 562
    .local v4, "height":I
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v5, v0, v1

    .local v5, "x":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 564
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->showOnScreen(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;IIIIZ)V

    goto :goto_0
.end method

.method private calculateCandidateMinWidthAccountingForKeyWidth(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)I
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "defaultCandidateMinWidth"    # I

    .prologue
    .line 647
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private calculateCandidateWidths([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)[I
    .locals 6
    .param p1, "keyContent"    # [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "candidateMinWidth"    # I

    .prologue
    .line 951
    array-length v2, p1

    .line 952
    .local v2, "length":I
    new-array v3, v2, [I

    .line 954
    .local v3, "measured":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 955
    aget-object v5, p1, v0

    invoke-direct {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->getLabel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "label":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 957
    .local v4, "width":I
    aput v4, v3, v0

    .line 954
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    .end local v1    # "label":Ljava/lang/String;
    .end local v4    # "width":I
    :cond_0
    return-object v3
.end method

.method private calculatePriorityCandidateWidth(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)I
    .locals 4
    .param p1, "priorityCandidate"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "candidateMinWidth"    # I

    .prologue
    .line 634
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 635
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->getLabel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    .line 634
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 636
    .local v0, "priorityLabelWidth":I
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private createCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;II)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 9
    .param p1, "keyContent"    # [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p3, "referenceSortWidth"    # I
    .param p4, "priorityCandidateWidth"    # I

    .prologue
    .line 849
    .line 850
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v7

    .line 849
    invoke-static {p4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 852
    .local v4, "priorityCandidateReferenceSortWidth":I
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterXPx()I

    move-result v7

    div-int/lit8 v8, v4, 0x2

    add-int v5, v7, v8

    .line 854
    .local v5, "rightEdgeOfPriorityCandidate":I
    sub-int v7, v5, v4

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupConstraintsLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    .line 856
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    sub-int v0, v7, v8

    .line 857
    .local v0, "availableAreaLeftExcludingPriorityCandidate":I
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupConstraintsRight:I

    sub-int/2addr v7, v5

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    .line 858
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    sub-int v1, v7, v8

    .line 861
    .local v1, "availableAreaRightOfPriorityCandidate":I
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->calculateCandidateWidths([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)[I

    move-result-object v7

    .line 860
    invoke-static {v7, v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->sortCandidates([IIII)[Ljava/lang/Integer;

    move-result-object v3

    .line 866
    .local v3, "indexes":[Ljava/lang/Integer;
    array-length v7, v3

    new-array v6, v7, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 867
    .local v6, "sortedKeys":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    const/4 v7, 0x0

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPriorityCandidateIndex:I

    .line 868
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_1

    .line 869
    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    .line 870
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPriorityCandidateIndex:I

    .line 872
    :cond_0
    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v7, p1, v7

    aput-object v7, v6, v2

    .line 868
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    :cond_1
    return-object v6
.end method

.method private doPreDraw()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_CANDIDATES:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    if-ne v0, v1, :cond_0

    .line 964
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->highlightCurrentCandidate()V

    .line 965
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->selectCurrentCandidate()V

    .line 967
    :cond_0
    return-void
.end method

.method private getLabel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->isShiftedContent(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLabel(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private highlightCurrentCandidate()V
    .locals 3

    .prologue
    .line 970
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 971
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    aget-object v0, v1, v2

    .line 972
    .local v0, "item":Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;->highlight()V

    .line 973
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviousHighlightedItem:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviousHighlightedItem:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    if-eq v0, v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviousHighlightedItem:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;->unHighlight()V

    .line 976
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviousHighlightedItem:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    .line 978
    .end local v0    # "item":Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;
    :cond_1
    return-void
.end method

.method private inflateCandidateViews(ZI)V
    .locals 20
    .param p1, "keyIsSmall"    # Z
    .param p2, "candidateMinWidth"    # I

    .prologue
    .line 878
    const/16 v18, 0x0

    .line 880
    .local v18, "secondaryCandidateItemLayout":I
    if-eqz p1, :cond_4

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v2, v4, :cond_1

    .line 882
    const v18, 0x7f030023

    .line 903
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v4, 0x7f0f0008

    invoke-interface {v2, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v9

    .line 904
    .local v9, "highlightColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0900ad

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 907
    .local v13, "candidateTopPadding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    array-length v2, v2

    new-array v2, v2, [Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    .line 908
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTotalCandidateWidthInFrontOfPriorityCandidate:I

    .line 911
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    array-length v2, v2

    if-ge v15, v2, :cond_9

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v2

    if-nez v2, :cond_8

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->getLabel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Ljava/lang/String;

    move-result-object v17

    .line 916
    .local v17, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    .line 917
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 918
    .local v3, "textView":Landroid/widget/TextView;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextColor:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 922
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v4, v2

    .line 921
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 923
    .local v14, "candidateWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPriorityCandidateIndex:I

    if-ge v15, v2, :cond_0

    .line 924
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTotalCandidateWidthInFrontOfPriorityCandidate:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTotalCandidateWidthInFrontOfPriorityCandidate:I

    .line 926
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v13, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 927
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v14, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 928
    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    move-object/from16 v19, v0

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTypefaceNormal:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTypefaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextColor:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateHighlightHeightOffset:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsOneHandedKeyboard:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move/from16 v4, p1

    invoke-direct/range {v2 .. v12}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;-><init>(Landroid/widget/TextView;ZLandroid/content/Context;Landroid/graphics/Typeface;Landroid/graphics/Typeface;IIIZLcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    aput-object v2, v19, v15

    .line 911
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v14    # "candidateWidth":I
    .end local v17    # "label":Ljava/lang/String;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 883
    .end local v9    # "highlightColor":I
    .end local v13    # "candidateTopPadding":I
    .end local v15    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v2, v4, :cond_2

    .line 884
    const v18, 0x7f03001e

    goto/16 :goto_0

    .line 885
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsOneHandedKeyboard:Z

    if-eqz v2, :cond_3

    .line 886
    const v18, 0x7f030020

    goto/16 :goto_0

    .line 889
    :cond_3
    const v18, 0x7f030021

    goto/16 :goto_0

    .line 892
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v2, v4, :cond_5

    .line 893
    const v18, 0x7f030022

    goto/16 :goto_0

    .line 894
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v2, v4, :cond_6

    .line 895
    const v18, 0x7f03001d

    goto/16 :goto_0

    .line 896
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsOneHandedKeyboard:Z

    if-eqz v2, :cond_7

    .line 897
    const v18, 0x7f03001f

    goto/16 :goto_0

    .line 899
    :cond_7
    const v18, 0x7f03001c

    goto/16 :goto_0

    .line 935
    .restart local v9    # "highlightColor":I
    .restart local v13    # "candidateTopPadding":I
    .restart local v15    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    .line 937
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 938
    .local v16, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 939
    const/4 v2, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 940
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 941
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    .line 940
    move/from16 v0, p2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 942
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->requestLayout()V

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    aget-object v5, v5, v15

    .line 944
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconHighlight()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    aget-object v6, v6, v15

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateHighlightHeightOffset:I

    move-object/from16 v0, v16

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    aput-object v4, v2, v15

    goto/16 :goto_2

    .line 948
    .end local v16    # "imageView":Landroid/widget/ImageView;
    :cond_9
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 745
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->hasContentView()Z

    move-result v1

    if-nez v1, :cond_2

    .line 749
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    .line 751
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->updateSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;Landroid/view/View;)V

    .line 754
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0f00a3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewPlaceholder:Landroid/widget/RelativeLayout;

    .line 755
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0f00a4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateTextView:Landroid/widget/TextView;

    .line 756
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0f00a5

    .line 757
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateImageView:Landroid/widget/ImageView;

    .line 760
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0f00a2

    .line 761
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    .line 762
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mMinimumTotalContentWidth:I

    .line 764
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->setContentView(Landroid/view/View;)V

    .line 765
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRefreshCandidateColors:Z

    .line 772
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRefreshCandidateColors:Z

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 774
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRefreshCandidateColors:Z

    .line 777
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setDynamicPopupHeight()V

    .line 779
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_CANDIDATES:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    if-ne v1, v2, :cond_1

    .line 780
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;-><init>()V

    .line 781
    .local v0, "preDrawViewListener":Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$3;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->attach(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 788
    .end local v0    # "preDrawViewListener":Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;
    :cond_1
    return-void

    .line 768
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method

.method private isShiftedContent(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    const/4 v0, 0x1

    .line 488
    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLabel(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectCurrentCandidate()V
    .locals 2

    .prologue
    .line 981
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 982
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mSelectedCandidate:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 984
    :cond_0
    return-void
.end method

.method private setDynamicPopupHeight()V
    .locals 4

    .prologue
    .line 813
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_PREVIEW:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    if-ne v2, v3, :cond_1

    .line 814
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 816
    .local v1, "popupHeight":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewPlaceholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 817
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewPlaceholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 818
    .local v0, "parameters":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 819
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewPlaceholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 831
    .end local v0    # "parameters":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "popupHeight":I
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_CANDIDATES:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    if-ne v2, v3, :cond_0

    .line 822
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v3, "long_press_preview_height"

    .line 823
    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    .line 825
    .restart local v1    # "popupHeight":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewPlaceholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 826
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 827
    .restart local v0    # "parameters":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 828
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0
.end method

.method private setDynamicTextSize(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 835
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isSmall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v2, "highlighted_key_variants_text_size_small"

    .line 837
    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v0

    .line 844
    .local v0, "textSize":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 845
    return-void

    .line 840
    .end local v0    # "textSize":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v2, "highlighted_key_variants_text_size"

    .line 841
    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "textSize":I
    goto :goto_0
.end method

.method private showOnScreen(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;IIIIZ)V
    .locals 14
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "popupOffset"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "popupX"    # I
    .param p6, "isLongPress"    # Z

    .prologue
    .line 686
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupConstraintsRight:I

    sub-int v2, v2, p3

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupShadow:Landroid/view/ViewGroup;

    .line 687
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    add-int v13, v2, v5

    .line 688
    .local v13, "rightAdjustedPopupX":I
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupConstraintsLeft:I

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupShadow:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int v12, v2, v5

    .line 697
    .local v12, "leftAdjustedPopupX":I
    move/from16 v0, p5

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mX:I

    .line 698
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchYPx()I

    move-result v2

    sub-int v2, v2, p2

    div-int/lit8 v5, p4, 0x2

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mY:I

    .line 700
    move/from16 v0, p3

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesWindowWidth:I

    .line 702
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mX:I

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mYOffsetAboveKey:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int v3, v2, v5

    .line 703
    .local v3, "x":I
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mY:I

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mYOffsetAboveKey:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int v4, v2, v5

    .line 705
    .local v4, "y":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyPopupAnimator:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    if-nez v2, :cond_0

    .line 706
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;

    invoke-direct {v6, p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V

    invoke-direct {v2, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;-><init>(Landroid/content/res/Resources;Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyPopupAnimator:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    .line 722
    :cond_0
    if-eqz p6, :cond_2

    .line 723
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsLongPressAnimationEnabled:Z

    if-eqz v2, :cond_1

    .line 724
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyPopupAnimator:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewWidth:I

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPriorityCandidateIndex:I

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iget-boolean v11, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsAnimationPreviewToFullEnabled:Z

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v11}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->runAnimations(IIIIII[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;Z)V

    .line 737
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->show(IIII)V

    goto :goto_0

    .line 731
    :cond_2
    move/from16 v0, p3

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewWidth:I

    .line 732
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsLongPressAnimationEnabled:Z

    if-eqz v2, :cond_3

    .line 733
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->clearAnimations()V

    .line 735
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->show(IIII)V

    goto :goto_0
.end method

.method protected static sortCandidates([IIII)[Ljava/lang/Integer;
    .locals 17
    .param p0, "candidateWidths"    # [I
    .param p1, "availableAreaLeftExcludingPriorityCandidate"    # I
    .param p2, "availableAreaRightOfPriorityCandidate"    # I
    .param p3, "referenceSortWidth"    # I

    .prologue
    .line 319
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 323
    .local v4, "indexMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const/4 v7, -0x1

    .line 326
    .local v7, "leftIndex":I
    const/4 v11, 0x1

    .line 327
    .local v11, "rightIndex":I
    const/4 v13, 0x0

    .line 329
    .local v13, "totalSecondaryCandidateWidth":I
    move-object/from16 v0, p0

    array-length v9, v0

    .line 330
    .local v9, "length":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_0

    .line 331
    aget v15, p0, v3

    move/from16 v0, p3

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/2addr v13, v15

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_0
    move/from16 v0, p2

    if-gt v13, v0, :cond_1

    .line 335
    const/4 v3, 0x1

    :goto_1
    if-ge v3, v9, :cond_8

    .line 336
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 339
    :cond_1
    const/4 v14, 0x1

    .line 341
    .local v14, "wasPreviousCandidatePlacedToRight":Z
    const/4 v3, 0x1

    move v12, v11

    .end local v11    # "rightIndex":I
    .local v12, "rightIndex":I
    move v8, v7

    .end local v7    # "leftIndex":I
    .local v8, "leftIndex":I
    :goto_2
    if-ge v3, v9, :cond_7

    .line 351
    aget v15, p0, v3

    move/from16 v0, p3

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 353
    .local v10, "rightCandidateReferenceWidth":I
    aget v6, p0, v3

    .line 355
    .local v6, "leftCandidateWidth":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_2

    const/4 v1, 0x1

    .line 357
    .local v1, "fitsToLeft":Z
    :goto_3
    move/from16 v0, p2

    if-lt v0, v10, :cond_3

    const/4 v2, 0x1

    .line 360
    .local v2, "fitsToRight":Z
    :goto_4
    if-eqz v14, :cond_5

    .line 361
    if-eqz v1, :cond_4

    .line 362
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sub-int p1, p1, v6

    .line 364
    const/4 v14, 0x0

    move v11, v12

    .line 341
    .end local v12    # "rightIndex":I
    .restart local v11    # "rightIndex":I
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v12, v11

    .end local v11    # "rightIndex":I
    .restart local v12    # "rightIndex":I
    move v8, v7

    .end local v7    # "leftIndex":I
    .restart local v8    # "leftIndex":I
    goto :goto_2

    .line 355
    .end local v1    # "fitsToLeft":Z
    .end local v2    # "fitsToRight":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 357
    .restart local v1    # "fitsToLeft":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 365
    .restart local v2    # "fitsToRight":Z
    :cond_4
    if-eqz v2, :cond_7

    .line 366
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "rightIndex":I
    .restart local v11    # "rightIndex":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sub-int p2, p2, v10

    .line 368
    const/4 v14, 0x1

    move v7, v8

    .end local v8    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    goto :goto_5

    .line 373
    .end local v7    # "leftIndex":I
    .end local v11    # "rightIndex":I
    .restart local v8    # "leftIndex":I
    .restart local v12    # "rightIndex":I
    :cond_5
    if-eqz v2, :cond_6

    .line 374
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "rightIndex":I
    .restart local v11    # "rightIndex":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sub-int p2, p2, v10

    .line 376
    const/4 v14, 0x1

    move v7, v8

    .end local v8    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    goto :goto_5

    .line 377
    .end local v7    # "leftIndex":I
    .end local v11    # "rightIndex":I
    .restart local v8    # "leftIndex":I
    .restart local v12    # "rightIndex":I
    :cond_6
    if-eqz v1, :cond_7

    .line 378
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sub-int p1, p1, v6

    .line 380
    const/4 v14, 0x0

    move v11, v12

    .end local v12    # "rightIndex":I
    .restart local v11    # "rightIndex":I
    goto :goto_5

    .end local v1    # "fitsToLeft":Z
    .end local v2    # "fitsToRight":Z
    .end local v6    # "leftCandidateWidth":I
    .end local v7    # "leftIndex":I
    .end local v10    # "rightCandidateReferenceWidth":I
    .end local v11    # "rightIndex":I
    .restart local v8    # "leftIndex":I
    .restart local v12    # "rightIndex":I
    :cond_7
    move v11, v12

    .end local v12    # "rightIndex":I
    .restart local v11    # "rightIndex":I
    move v7, v8

    .line 388
    .end local v8    # "leftIndex":I
    .end local v14    # "wasPreviousCandidatePlacedToRight":Z
    .restart local v7    # "leftIndex":I
    :cond_8
    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v15

    new-array v5, v15, [Ljava/lang/Integer;

    .line 389
    .local v5, "indexes":[Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "indexes":[Ljava/lang/Integer;
    check-cast v5, [Ljava/lang/Integer;

    .line 390
    .restart local v5    # "indexes":[Ljava/lang/Integer;
    return-object v5
.end method

.method private updatePreviewContent(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)V
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "isKeyboardShifted"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 527
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    invoke-virtual {p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLabel(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 541
    .local v0, "label":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method private updateSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;Landroid/view/View;)V
    .locals 2
    .param p1, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 804
    const v0, 0x7f0f00a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupShadow:Landroid/view/ViewGroup;

    .line 805
    const v0, 0x7f0f00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mBackground:Landroid/view/ViewGroup;

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mBackground:Landroid/view/ViewGroup;

    const v1, 0x7f0200db

    invoke-interface {p1, v1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 808
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupShadow:Landroid/view/ViewGroup;

    const v1, 0x7f0200dc

    invoke-interface {p1, v1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 810
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->dispose()V

    .line 1043
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsContainerInitialized:Z

    .line 1045
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    .line 1046
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupShadow:Landroid/view/ViewGroup;

    .line 1047
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mBackground:Landroid/view/ViewGroup;

    .line 1048
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewPlaceholder:Landroid/widget/RelativeLayout;

    .line 1049
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    .line 1050
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateTextView:Landroid/widget/TextView;

    .line 1051
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPrimaryCandidateImageView:Landroid/widget/ImageView;

    .line 1052
    return-void
.end method

.method public getSelectedCandidate()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mSelectedCandidate:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    return-object v0
.end method

.method public hasSelectedCandidate()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mSelectedCandidate:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "useDelay"    # Z

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsContainerInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    if-nez p1, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->hide()V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyboardTouchEvent(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1066
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCancelSelectionThreshold:I

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupShadow:Landroid/view/ViewGroup;

    .line 1067
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v0, v5

    .line 1068
    .local v0, "cancelSelectionThresholdLeft":F
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCancelSelectionThreshold:I

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupShadow:Landroid/view/ViewGroup;

    .line 1069
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v1, v5

    .line 1071
    .local v1, "cancelSelectionThresholdRight":F
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mX:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mX:I

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesWindowWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    .line 1076
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateSelectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1078
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviousHighlightedItem:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    if-eqz v5, :cond_1

    .line 1079
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviousHighlightedItem:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;->unHighlight()V

    .line 1080
    iput-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviousHighlightedItem:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    .line 1081
    iput-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mSelectedCandidate:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1082
    const/4 v5, -0x1

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    .line 1083
    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsWithinInitialCandidateThreshold:Z

    .line 1128
    :cond_1
    :goto_0
    return-void

    .line 1086
    :cond_2
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsWithinInitialCandidateThreshold:Z

    if-eqz v5, :cond_4

    .line 1087
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mInitialCandidateLeftThreshold:I

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mInitialCandidateRightThreshold:I

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    .line 1088
    :cond_3
    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsWithinInitialCandidateThreshold:Z

    .line 1092
    :cond_4
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsWithinInitialCandidateThreshold:Z

    if-nez v5, :cond_1

    .line 1094
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mX:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupShadow:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 1095
    .local v4, "localTouchX":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 1096
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    aget-object v3, v5, v2

    .line 1106
    .local v3, "item":Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateItems:[Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_6

    :cond_5
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mX:I

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesWindowWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v1

    cmpg-float v5, v4, v5

    if-gez v5, :cond_6

    .line 1110
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    if-eq v5, v2, :cond_1

    .line 1112
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateSelectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1113
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->selectCurrentCandidate()V

    .line 1116
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCurrentCandidateIndex:I

    .line 1117
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->highlightCurrentCandidate()V

    .line 1120
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidateSelectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x14

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1095
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onPopupContainerInitiation(Landroid/view/ViewGroup;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "popupContainer"    # Landroid/view/ViewGroup;
    .param p2, "offset"    # Landroid/graphics/Point;
    .param p3, "constraint"    # Landroid/graphics/Point;

    .prologue
    .line 992
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mYOffsetAboveKey:Landroid/graphics/Point;

    .line 995
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsContainerInitialized:Z

    if-nez v0, :cond_0

    .line 996
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .line 997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsContainerInitialized:Z

    .line 999
    :cond_0
    return-void
.end method

.method public onPopupContainerOffsetChanged(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 1006
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mYOffsetAboveKey:Landroid/graphics/Point;

    .line 1007
    return-void
.end method

.method public setEnableLongPressAnimations(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsLongPressAnimationEnabled:Z

    .line 409
    return-void
.end method

.method public setFloatingKeyboardMode(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V
    .locals 0
    .param p1, "floatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 457
    return-void
.end method

.method public setIsOneHandedKeyboard(Z)V
    .locals 0
    .param p1, "isOneHandedKeyboard"    # Z

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsOneHandedKeyboard:Z

    .line 446
    return-void
.end method

.method public setPopupConstraints(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupConstraintsLeft:I

    .line 434
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPopupConstraintsRight:I

    .line 435
    return-void
.end method

.method public setResourceLookupProvider(Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)V
    .locals 0
    .param p1, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .line 467
    return-void
.end method

.method public setSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 0
    .param p1, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 400
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 417
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextColor:I

    if-eq v0, p1, :cond_0

    .line 418
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mTextColor:I

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRefreshCandidateColors:Z

    .line 421
    :cond_0
    return-void
.end method

.method public showCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)V
    .locals 8
    .param p1, "keyContent"    # [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p3, "popupOffset"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 575
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_PREVIEW:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsAnimationPreviewToFullEnabled:Z

    .line 576
    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_CANDIDATES:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    .line 581
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->initViews()V

    .line 583
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewPlaceholder:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 584
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setDynamicTextSize(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 588
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v7, "key_variants_candidate_min_width"

    .line 589
    invoke-interface {v4, v7}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    .line 592
    .local v1, "minCandidateWidth":I
    array-length v4, p1

    if-le v4, v5, :cond_2

    .line 593
    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->calculateCandidateMinWidthAccountingForKeyWidth(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)I

    move-result v3

    .line 595
    .local v3, "reEvaluatedCandidateMinWidth":I
    :goto_1
    aget-object v4, p1, v6

    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->calculatePriorityCandidateWidth(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)I

    move-result v2

    .line 599
    .local v2, "priorityCandidateWidth":I
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->createCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;II)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 602
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isSmall()Z

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->inflateCandidateViews(ZI)V

    .line 607
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mMinimumTotalContentWidth:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 610
    .local v0, "candidateWindowPadding":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v6, v0, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 615
    iput-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsWithinInitialCandidateThreshold:Z

    .line 616
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchXPx()I

    move-result v4

    div-int/lit8 v5, v2, 0x18

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mInitialCandidateLeftThreshold:I

    .line 618
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchXPx()I

    move-result v4

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchWidthPx()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v5, v2, 0x18

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mInitialCandidateRightThreshold:I

    .line 623
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPriorityCandidateIndex:I

    invoke-direct {p0, v4, v2, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->calculateAndShowCandidatePopup(IILcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)V

    .line 627
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsLongPressAnimationEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mIsAnimationPreviewToFullEnabled:Z

    if-eqz v4, :cond_0

    .line 628
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mKeyPopupAnimator:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPriorityCandidateIndex:I

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->setupAlphaAnimations(Landroid/view/ViewGroup;I)V

    .line 630
    :cond_0
    return-void

    .end local v0    # "candidateWindowPadding":I
    .end local v1    # "minCandidateWidth":I
    .end local v2    # "priorityCandidateWidth":I
    .end local v3    # "reEvaluatedCandidateMinWidth":I
    :cond_1
    move v4, v6

    .line 575
    goto :goto_0

    .line 593
    .restart local v1    # "minCandidateWidth":I
    :cond_2
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mMinimumTotalContentWidth:I

    goto :goto_1
.end method

.method public showPreview(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;IZ)V
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "previewOffset"    # I
    .param p3, "shifted"    # Z

    .prologue
    .line 503
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_PREVIEW:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mShowMode:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    .line 505
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->initViews()V

    .line 507
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->updatePreviewContent(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)V

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mPreviewPlaceholder:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mCandidatesPlaceholder:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->calculateAndShowPreviewPopup(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)V

    .line 513
    return-void
.end method

.method public updateSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 1
    .param p1, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 796
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->updateSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;Landroid/view/View;)V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    goto :goto_0
.end method
