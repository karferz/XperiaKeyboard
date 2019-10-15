.class public final Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
.super Landroid/view/View;
.source "PagedGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;,
        Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;,
        Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;,
        Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;,
        Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;
    }
.end annotation


# static fields
.field private static final EMOJI_GRID_VIEW_EMOJI_SCALE_FACTOR:Ljava/lang/String; = "emoji_grid_view_emoji_scale_factor"

.field private static final EMOJI_GRID_VIEW_SMILEY_SCALE_FACTOR:Ljava/lang/String; = "emoji_grid_view_smiley_scale_factor"

.field private static final LONG_PRESS_TIMEOUT:I = 0x15e

.field private static final SNAP_TO_PAGE_ANIMATION_DURATION:I = 0x64

.field private static final sSnapToPageInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mActivePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

.field private mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

.field private final mCellEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCellPainter:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

.field private mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

.field private mContentId:I

.field private mDefaultCategoryIndex:I

.field private final mDynamicPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Page;",
            ">;"
        }
    .end annotation
.end field

.field private final mFadingEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

.field private mIsDynamicPagesInitiated:Z

.field private mIsInitialized:Z

.field private mIsPageLayoutNeeded:Z

.field private mLabelTextSize:F

.field private mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

.field private final mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

.field private mOnPageChangedOldEndPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

.field private mOnPageChangedOldStartPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

.field private mOverScrollHeight:I

.field private final mPageEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageGap:I

.field private mPageGapResourceName:Ljava/lang/String;

.field private final mPageScrollPositionY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Page;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupXAdjustment:I

.field private mPopupYOffset:I

.field private mRightmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

.field private final mScrollEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

.field private mScrollPositionX:I

.field private mSnapToPageAnimator:Landroid/animation/ValueAnimator;

.field private mSplitHalfWidth:I

.field private mSubLabelTextSizeResourceName:Ljava/lang/String;

.field private final mTouchEventHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

.field private mVerticalFlingScroller:Landroid/widget/OverScroller;

.field private final mVerticalScrollAnimator:Ljava/lang/Runnable;

.field private final mViewport:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->sSnapToPageInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mDynamicPages:Ljava/util/Map;

    .line 149
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mTouchEventHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellEventListeners:Ljava/util/Set;

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageEventListeners:Ljava/util/Set;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageScrollPositionY:Ljava/util/Map;

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    .line 174
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    .line 175
    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    .line 180
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mFadingEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    .line 208
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    .line 217
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 223
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mRightmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsPageLayoutNeeded:Z

    .line 267
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mVerticalScrollAnimator:Ljava/lang/Runnable;

    .line 296
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldStartPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 302
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldEndPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 325
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    .line 326
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-direct {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .line 327
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 337
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mDynamicPages:Ljava/util/Map;

    .line 149
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mTouchEventHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellEventListeners:Ljava/util/Set;

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageEventListeners:Ljava/util/Set;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageScrollPositionY:Ljava/util/Map;

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    .line 174
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    .line 175
    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    .line 180
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mFadingEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    .line 208
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    .line 217
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 223
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mRightmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsPageLayoutNeeded:Z

    .line 267
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mVerticalScrollAnimator:Ljava/lang/Runnable;

    .line 296
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldStartPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 302
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldEndPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 338
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->applyAttributes(Landroid/util/AttributeSet;)V

    .line 339
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    .line 340
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-direct {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .line 341
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mDynamicPages:Ljava/util/Map;

    .line 149
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mTouchEventHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellEventListeners:Ljava/util/Set;

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageEventListeners:Ljava/util/Set;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageScrollPositionY:Ljava/util/Map;

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    .line 174
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    .line 175
    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    .line 180
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mFadingEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    .line 208
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    .line 217
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 223
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mRightmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsPageLayoutNeeded:Z

    .line 267
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mVerticalScrollAnimator:Ljava/lang/Runnable;

    .line 296
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldStartPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 302
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldEndPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 353
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->applyAttributes(Landroid/util/AttributeSet;)V

    .line 354
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    .line 355
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-direct {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .line 356
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mVerticalFlingScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mActivePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollPositionX:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollPositionX:I

    return p1
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mActivePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mVerticalScrollAnimator:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSplitHalfWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSnapToPageAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSnapToPageAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->sSnapToPageInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mRightmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mRightmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->fireOnPageOffsetChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageScrollPositionY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .param p2, "x2"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->fireOnPageChanged(Lcom/sonyericsson/textinput/uxp/view/grid/Page;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->asynchronouslyCachePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mDefaultCategoryIndex:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getPageIndex(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->fireOnCellPressed(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPopupXAdjustment:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->fireOnCellReleased(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellPainter:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPopupYOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getMaxScrollY()I

    move-result v0

    return v0
.end method

.method private applyAttributes(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 364
    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/R$styleable;->PagedGridView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 368
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mContentId:I

    .line 372
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLabelTextSize:F

    .line 377
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    const/4 v1, 0x2

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSubLabelTextSizeResourceName:Ljava/lang/String;

    .line 382
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    const/4 v1, 0x3

    .line 384
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageGapResourceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private asynchronouslyCachePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
    .locals 4
    .param p1, "page"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->isPriorityCachePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->cancel(Z)Z

    .line 475
    :cond_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getHeight()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;II)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->setPriorityCachePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    .line 478
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 477
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private fireOnCellPressed(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V
    .locals 3
    .param p1, "pressedCell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    .line 407
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;

    .line 408
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;->onCellPressed(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V

    goto :goto_0

    .line 410
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;
    :cond_0
    return-void
.end method

.method private fireOnCellReleased(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V
    .locals 3
    .param p1, "releasedCell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;

    .line 420
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;->onCellReleased(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V

    goto :goto_0

    .line 422
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;
    :cond_0
    return-void
.end method

.method private fireOnPageChanged(Lcom/sonyericsson/textinput/uxp/view/grid/Page;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
    .locals 6
    .param p1, "startPage"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .param p2, "endPage"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 436
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldStartPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldEndPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-eq p2, v1, :cond_2

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;

    .line 441
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 442
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->dynamicContentIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->dynamicContentIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;->onPageChanged(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldStartPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 446
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldEndPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 448
    :cond_2
    return-void
.end method

.method private fireOnPageOffsetChanged()V
    .locals 7

    .prologue
    .line 451
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageEventListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 452
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollPositionX:I

    const/4 v6, 0x1

    .line 453
    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->findPage(IZ)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v2

    .line 454
    .local v2, "leftmostVisiblePage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollPositionX:I

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v5

    sub-int v1, v4, v5

    .line 455
    .local v1, "leftmostPageScrollPixels":I
    int-to-float v4, v1

    .line 456
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 457
    .local v0, "leftmostPageScrollPercentage":F
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageEventListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;

    .line 458
    .local v3, "listener":Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v5, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;->onPageScrollChanged(IF)V

    goto :goto_0

    .line 462
    .end local v0    # "leftmostPageScrollPercentage":F
    .end local v1    # "leftmostPageScrollPixels":I
    .end local v2    # "leftmostVisiblePage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .end local v3    # "listener":Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;
    :cond_0
    return-void
.end method

.method private getMaxScrollY()I
    .locals 3

    .prologue
    .line 504
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mActivePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->bottom()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOverScrollHeight:I

    add-int/2addr v1, v2

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 505
    .local v0, "maxY":I
    if-lez v0, :cond_0

    .end local v0    # "maxY":I
    :goto_0
    return v0

    .restart local v0    # "maxY":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPageIndex(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)I
    .locals 4
    .param p1, "comparePage"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 511
    .local v1, "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    if-ne p1, v1, :cond_0

    .line 512
    return v0

    .line 509
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .end local v1    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown page"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private layOutPages()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 483
    const/4 v3, 0x0

    .line 484
    .local v3, "left":I
    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 485
    .local v2, "gridVisualHeight":I
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 486
    .local v1, "gridVisualWidth":I
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageGap:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageGap:I

    add-int/lit8 v6, v4, -0x1

    .line 487
    .local v6, "gapRightExtent":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_3

    .line 488
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 489
    .local v0, "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v7, v4, :cond_1

    const/4 v8, 0x1

    .line 490
    .local v8, "isLastPage":Z
    :goto_2
    add-int v5, v3, v1

    if-eqz v8, :cond_2

    move v4, v9

    :goto_3
    add-int/2addr v4, v5

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSplitHalfWidth:I

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->layoutPage(IIIII)V

    .line 493
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageGap:I

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 487
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .end local v6    # "gapRightExtent":I
    .end local v7    # "i":I
    .end local v8    # "isLastPage":Z
    :cond_0
    move v6, v9

    .line 486
    goto :goto_0

    .restart local v0    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .restart local v6    # "gapRightExtent":I
    .restart local v7    # "i":I
    :cond_1
    move v8, v9

    .line 489
    goto :goto_2

    .restart local v8    # "isLastPage":Z
    :cond_2
    move v4, v6

    .line 490
    goto :goto_3

    .line 495
    .end local v0    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .end local v8    # "isLastPage":Z
    :cond_3
    return-void
.end method

.method private resetStates()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 519
    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollPositionX:I

    .line 520
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mDefaultCategoryIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 522
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mRightmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 524
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsInitialized:Z

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 526
    .local v0, "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageScrollPositionY:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 528
    .end local v0    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsPageLayoutNeeded:Z

    if-nez v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollPositionX:I

    .line 530
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->asynchronouslyCachePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 536
    :cond_1
    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldStartPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 537
    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOnPageChangedOldEndPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 539
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 540
    return-void
.end method

.method private setContent(ILcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)V
    .locals 5
    .param p1, "gridXmlResourceIdentifier"    # I
    .param p2, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .prologue
    .line 636
    :try_start_0
    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->parse(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mDynamicPages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 648
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 649
    .local v1, "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->dynamicContentIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 650
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mDynamicPages:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->dynamicContentIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 638
    .end local v1    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse XML grid data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 654
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsPageLayoutNeeded:Z

    .line 655
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->resetStates()V

    .line 656
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mVerticalFlingScroller:Landroid/widget/OverScroller;

    .line 657
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 658
    return-void
.end method


# virtual methods
.method public addCellEventListener(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellEventListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 689
    return-void
.end method

.method public addPageEventListener(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageEventListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 721
    return-void
.end method

.method public findCellCenterCoordinates(I)Landroid/graphics/Point;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 901
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mActivePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-eqz v2, :cond_0

    .line 902
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mActivePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->findCellCenterCoordinates(I)Landroid/graphics/Point;

    move-result-object v0

    .line 904
    .local v0, "cellCoordinates":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 905
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getLocationOnScreen([I)V

    .line 906
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 911
    .end local v0    # "cellCoordinates":Landroid/graphics/Point;
    .end local v1    # "location":[I
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initResources(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V
    .locals 6
    .param p1, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    .param p2, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;
    .param p3, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .param p4, "popupContainerManager"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;
    .param p5, "floatingKeyboardMode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    .line 583
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mContentId:I

    if-eqz v2, :cond_0

    .line 584
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mContentId:I

    invoke-direct {p0, v2, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setContent(ILcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)V

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    invoke-virtual {v2, p3}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->verifyEdgeColor(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 587
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageGapResourceName:Ljava/lang/String;

    invoke-interface {p2, v2}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageGap:I

    .line 588
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "emoji_grid_view_smiley_scale_factor"

    .line 589
    invoke-interface {p2, v4}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFloat(Ljava/lang/String;)F

    move-result v4

    const-string v5, "emoji_grid_view_emoji_scale_factor"

    .line 590
    invoke-interface {p2, v5}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v2, v3, v4, v5, p3}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;-><init>(Landroid/content/Context;FFLcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellPainter:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    .line 591
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellPainter:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLabelTextSize:F

    invoke-interface {p1, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->setLabelTextSize(F)V

    .line 593
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellPainter:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSubLabelTextSizeResourceName:Ljava/lang/String;

    .line 594
    invoke-interface {p2, v3}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    .line 593
    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->setSubLabelTextSize(F)V

    .line 596
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsDynamicPagesInitiated:Z

    .line 597
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsInitialized:Z

    .line 598
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v2, p3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 599
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setResourceLookupProvider(Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)V

    .line 600
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v2, p5}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setFloatingKeyboardMode(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    .line 602
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {p4, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->addPopupContainerEventListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;)V

    .line 604
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v0

    .line 605
    .local v0, "leftPopupConstraint":I
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardTotalSpanWidthPx()I

    move-result v2

    .line 606
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v3

    sub-int v1, v2, v3

    .line 608
    .local v1, "rightPopupConstraint":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setPopupConstraints(II)V

    .line 609
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->resetStates()V

    .line 610
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 849
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->dynamicContentIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsDynamicPagesInitiated:Z

    if-nez v1, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsPageLayoutNeeded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPages:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 859
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->layOutPages()V

    .line 860
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsPageLayoutNeeded:Z

    .line 861
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->resetStates()V

    .line 864
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mLeftmostVisiblePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 866
    .local v0, "drawPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollPositionX:I

    sub-int/2addr v1, v2

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 867
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollPositionX:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 868
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageScrollPositionY:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 869
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 870
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 872
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellPainter:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mViewport:Landroid/graphics/Rect;

    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->draw(Landroid/graphics/Canvas;Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;Landroid/graphics/Rect;Landroid/content/Context;)V

    .line 873
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->nextPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    goto :goto_1

    .line 876
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    .line 877
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_4

    .line 878
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 881
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mFadingEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSplitHalfWidth:I

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->draw(Landroid/graphics/Canvas;I)V

    .line 887
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mScrollEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSplitHalfWidth:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->draw(Landroid/graphics/Canvas;III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWeight"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsPageLayoutNeeded:Z

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mFadingEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->setDrawArea(II)V

    .line 843
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->resetStates()V

    .line 844
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mTouchEventHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 546
    if-nez p2, :cond_1

    .line 547
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->resetStates()V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mTouchEventHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->access$600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)V

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mTouchEventHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->cancelLongPressTimeouts()V

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mVerticalScrollAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSnapToPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSnapToPageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 554
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSnapToPageAnimator:Landroid/animation/ValueAnimator;

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    if-eqz v0, :cond_4

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->cancel(Z)Z

    .line 561
    :cond_3
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCacheCellLabelsAsyncTask:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;

    .line 564
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellPainter:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellPainter:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->clearCache()V

    goto :goto_0
.end method

.method public removeCellEventListener(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellEventListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 700
    return-void
.end method

.method public removeCellEventListeners()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 709
    return-void
.end method

.method public removePageEventListener(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPageEventListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 733
    return-void
.end method

.method public scrollToPage(I)V
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mTouchEventHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->scrollToPage(I)V

    .line 821
    return-void
.end method

.method public setColors(IIIII)V
    .locals 6
    .param p1, "backgroundColor"    # I
    .param p2, "textColor"    # I
    .param p3, "pressedBackgroundColor"    # I
    .param p4, "borderColor"    # I
    .param p5, "indicatorColor"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellPainter:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    move v1, p2

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->setPaintColor(IIIII)V

    .line 768
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mFadingEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->setColor(I)V

    .line 769
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setTextColor(I)V

    .line 770
    return-void
.end method

.method public setContentAttribute(I)V
    .locals 0
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 397
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mContentId:I

    .line 398
    return-void
.end method

.method public setDefaultPageIndex(I)V
    .locals 0
    .param p1, "defaultCategoryIndex"    # I

    .prologue
    .line 736
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mDefaultCategoryIndex:I

    .line 737
    return-void
.end method

.method public setDynamicPageCells(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "dynamicPageIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p2, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Cell;>;"
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mDynamicPages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 670
    .local v0, "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    if-nez v0, :cond_0

    .line 671
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the dynamic page with the identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->setCells(Ljava/util/List;)V

    .line 676
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mIsDynamicPagesInitiated:Z

    .line 677
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 678
    return-void
.end method

.method public setFadingEdgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "fadingEdgeDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mFadingEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->setFadingEdgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    return-void
.end method

.method public setFadingEdgeHeight(I)V
    .locals 1
    .param p1, "fadingEdgeHeight"    # I

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mFadingEdgeEffectManager:Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->setFadingEdgeHeight(I)V

    .line 779
    return-void
.end method

.method public setIsOneHandedKeyboard(Z)V
    .locals 1
    .param p1, "isOneHandedKeyboard"    # Z

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->setIsOneHandedKeyboard(Z)V

    .line 620
    return-void
.end method

.method public setOverScrollHeight(I)V
    .locals 0
    .param p1, "overScrollHeight"    # I

    .prologue
    .line 792
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mOverScrollHeight:I

    .line 793
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 0
    .param p1, "popupXAdjustment"    # I
    .param p2, "popupYOffset"    # I

    .prologue
    .line 924
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPopupXAdjustment:I

    .line 925
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mPopupYOffset:I

    .line 926
    return-void
.end method

.method public setSplitHalfWidth(I)V
    .locals 0
    .param p1, "splitHalfWidth"    # I

    .prologue
    .line 746
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mSplitHalfWidth:I

    .line 747
    return-void
.end method

.method public setTouchLockManager(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;)V
    .locals 1
    .param p1, "touchLockManager"    # Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mTouchEventHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->setTouchLockManager(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;)V

    .line 831
    return-void
.end method

.method public staticCellsInPage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mActivePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-nez v0, :cond_0

    .line 803
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 806
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mActivePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->getCells()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public updateSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 1
    .param p1, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->mCellVariantSelector:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->updateSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 935
    return-void
.end method
