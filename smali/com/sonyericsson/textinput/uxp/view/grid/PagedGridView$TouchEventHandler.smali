.class final Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;
.super Ljava/lang/Object;
.source "PagedGridView.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchEventHandler"
.end annotation


# instance fields
.field private mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

.field private mIsScrollingX:Z

.field private mIsScrollingY:Z

.field private final mScrollThreshold:I

.field private mStartScrollX:I

.field private mStartScrollY:I

.field private mStartTouchX:F

.field private mStartTouchY:F

.field private final mSwipeDetector:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;

.field private mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V
    .locals 2

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1066
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mScrollThreshold:I

    .line 1069
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mSwipeDetector:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;

    .line 1070
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mSwipeDetector:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->addListener(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;)V

    .line 1090
    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 1011
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->findRightmostVisiblePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->dismissCellVariantSelector()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->isSplitGrid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->snapToPreviousPage()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->snapToNextSnapPage()V

    return-void
.end method

.method private cancelActiveCellPress()V
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->setPressed(Z)V

    .line 1370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    .line 1371
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->cancelLongPressTimeouts()V

    .line 1372
    return-void
.end method

.method private cancelVerticalFlingScrolling()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1122
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1123
    return-void
.end method

.method private dismissCellVariantSelector()V
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hide(Z)V

    .line 1223
    :cond_0
    return-void
.end method

.method private findRightmostVisiblePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 3
    .param p1, "leftMostVisiblePage"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 1400
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->nextPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1401
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->nextPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1402
    .local v0, "hasVisibleNextPage":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->nextPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object p1

    .end local p1    # "leftMostVisiblePage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_0
    return-object p1

    .line 1401
    .end local v0    # "hasVisibleNextPage":Z
    .restart local p1    # "leftMostVisiblePage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCandidateSelection(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1407
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1426
    :goto_0
    :pswitch_0
    return-void

    .line 1409
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2700(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1409
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->onKeyboardTouchEvent(FF)V

    goto :goto_0

    .line 1414
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hasSelectedCandidate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1415
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    move-result-object v2

    .line 1416
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->getSelectedCandidate()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getNormalLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 1415
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->setTemporalVariantLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1417
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2800(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V

    .line 1419
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->cancelActiveCellPress()V

    .line 1420
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 1421
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->dismissCellVariantSelector()V

    goto :goto_0

    .line 1407
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

.method private handleDownAction(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartTouchX:F

    .line 1252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartTouchY:F

    .line 1254
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->resetVerticalTouchTracking()V

    .line 1256
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->findPage(IZ)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$102(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1258
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartScrollX:I

    .line 1259
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartScrollY:I

    .line 1261
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->isVerticalFlingScrollerRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->cancelVerticalFlingScrolling()V

    .line 1263
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1266
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v2, v0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1267
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1268
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->top()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1265
    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->findCellInfo(II)Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    .line 1269
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V

    .line 1271
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->setPressed(Z)V

    .line 1272
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->isVariantSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->isVariantSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->rescheduleLongPressTimeout(Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;)V

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    goto/16 :goto_0
.end method

.method private handleMoveAction(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1301
    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingX:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingY:Z

    if-nez v7, :cond_0

    .line 1302
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mScrollThreshold:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    .line 1303
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingY:Z

    .line 1304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartTouchY:F

    .line 1318
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingX:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingY:Z

    if-eqz v7, :cond_6

    .line 1319
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    if-eqz v7, :cond_2

    .line 1320
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->cancelActiveCellPress()V

    .line 1323
    :cond_2
    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingX:Z

    if-eqz v7, :cond_b

    .line 1324
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .line 1325
    .local v4, "scrollDelta":I
    if-gez v4, :cond_3

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->previousPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    if-ltz v4, :cond_8

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1326
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->nextPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1328
    .local v1, "isWithinBounds":Z
    :cond_4
    :goto_1
    if-eqz v1, :cond_9

    .line 1329
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartScrollX:I

    add-int/2addr v7, v4

    invoke-static {v6, v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1002(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;I)I

    .line 1330
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->updateAndLoadVisiblePages()V

    .line 1338
    :goto_2
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1900(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    .line 1364
    .end local v1    # "isWithinBounds":Z
    .end local v4    # "scrollDelta":I
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 1366
    :cond_6
    return-void

    .line 1305
    :cond_7
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mScrollThreshold:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 1306
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->isSplitGrid()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1307
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingX:Z

    .line 1308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartTouchX:F

    goto :goto_0

    .restart local v4    # "scrollDelta":I
    :cond_8
    move v1, v6

    .line 1326
    goto :goto_1

    .line 1332
    .restart local v1    # "isWithinBounds":Z
    :cond_9
    if-gez v4, :cond_a

    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->LEFT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    .line 1335
    .local v0, "currentEdge":Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
    :goto_4
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    move-result-object v6

    int-to-float v7, v4

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1336
    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1335
    invoke-virtual {v6, v0, v7}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->pullEdge(Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;F)V

    goto :goto_2

    .line 1332
    .end local v0    # "currentEdge":Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
    :cond_a
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->RIGHT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    goto :goto_4

    .line 1339
    .end local v1    # "isWithinBounds":Z
    .end local v4    # "scrollDelta":I
    :cond_b
    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingY:Z

    if-eqz v7, :cond_5

    .line 1340
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartScrollY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartTouchY:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v5, v7, v8

    .line 1341
    .local v5, "scrollDistanceY":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v2

    .line 1343
    .local v2, "maxScrollY":I
    if-lez v5, :cond_c

    if-ge v5, v2, :cond_c

    .line 1346
    .restart local v1    # "isWithinBounds":Z
    :goto_5
    if-eqz v1, :cond_d

    .line 1347
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v1    # "isWithinBounds":Z
    :cond_c
    move v1, v6

    .line 1343
    goto :goto_5

    .line 1349
    .restart local v1    # "isWithinBounds":Z
    :cond_d
    if-gtz v5, :cond_f

    .line 1350
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :cond_e
    :goto_6
    if-gtz v5, :cond_10

    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->TOP:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    .line 1357
    .restart local v0    # "currentEdge":Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
    :goto_7
    if-gtz v5, :cond_11

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1359
    .local v3, "overScroll":I
    :goto_8
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    move-result-object v6

    int-to-float v7, v3

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1360
    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1359
    invoke-virtual {v6, v0, v7}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->pullEdge(Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;F)V

    goto/16 :goto_3

    .line 1351
    .end local v0    # "currentEdge":Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
    .end local v3    # "overScroll":I
    :cond_f
    if-lt v5, v2, :cond_e

    .line 1352
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1354
    :cond_10
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->BOTTOM:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    goto :goto_7

    .line 1357
    .restart local v0    # "currentEdge":Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
    :cond_11
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1358
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_8
.end method

.method private handleUpAction(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1438
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingX:Z

    if-eqz v0, :cond_1

    .line 1439
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->snapToNearestPage()V

    .line 1447
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->resetVerticalTouchTracking()V

    .line 1449
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->releaseAll()V

    .line 1450
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 1451
    return-void

    .line 1440
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v0

    .line 1441
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->setTemporalVariantLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1443
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2800(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V

    .line 1444
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->cancelActiveCellPress()V

    goto :goto_0
.end method

.method private isSnapToPageAnimationRunning()Z
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSplitGrid()Z
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVerticalFlingScrollerRunning()Z
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rescheduleLongPressTimeout(Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;)V
    .locals 4
    .param p1, "activeCellInfo"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->cancelLongPressTimeouts()V

    .line 1243
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2500(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->init(Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;)V

    .line 1244
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1245
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1246
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2500(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1248
    :cond_0
    return-void
.end method

.method private resetVerticalTouchTracking()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1097
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingX:Z

    .line 1098
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingY:Z

    .line 1099
    return-void
.end method

.method private snapToNearestPage()V
    .locals 5

    .prologue
    .line 1202
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1203
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->nextPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    .line 1205
    .local v1, "nextPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    if-eqz v1, :cond_2

    .line 1206
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1207
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 1208
    move-object v0, v1

    .line 1215
    .local v0, "newLeftmostVisiblePage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->snapToPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 1217
    .end local v0    # "newLeftmostVisiblePage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .end local v1    # "nextPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_0
    return-void

    .line 1210
    .restart local v1    # "nextPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    .restart local v0    # "newLeftmostVisiblePage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    goto :goto_0

    .line 1213
    .end local v0    # "newLeftmostVisiblePage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    .restart local v0    # "newLeftmostVisiblePage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    goto :goto_0
.end method

.method private snapToNextSnapPage()V
    .locals 4

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartScrollX:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->findPage(IZ)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    .line 1188
    .local v0, "currentPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->nextPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1189
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->nextPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->snapToPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 1192
    .end local v0    # "currentPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_0
    return-void
.end method

.method private snapToPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
    .locals 4
    .param p1, "page"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->resetVerticalTouchTracking()V

    .line 1133
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->isSplitGrid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1302(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1135
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1500()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1136
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1148
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1159
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0, p1, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 1160
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 1162
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$102(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1163
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2202(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;I)I

    .line 1164
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1002(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;I)I

    .line 1155
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1602(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1156
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1702(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1157
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    goto :goto_0
.end method

.method private snapToPreviousPage()V
    .locals 4

    .prologue
    .line 1172
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mStartScrollX:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->findPage(IZ)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    .line 1174
    .local v0, "currentPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->previousPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1175
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->previousPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->snapToPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 1178
    .end local v0    # "currentPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_0
    return-void
.end method

.method private updateAndLoadVisiblePages()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1379
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->findPage(IZ)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    .line 1380
    .local v0, "currentLeftmostPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->findRightmostVisiblePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    .line 1381
    .local v1, "currentRightmostPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    .line 1382
    .local v2, "hasNewLeftmostPage":Z
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1700(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 1384
    .local v3, "hasNewRightmostPage":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    .line 1385
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v4, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 1387
    if-eqz v2, :cond_1

    .line 1388
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v4, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1602(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1389
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v4, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 1392
    :cond_1
    if-eqz v3, :cond_2

    .line 1393
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v4, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1702(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1394
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v4, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 1397
    :cond_2
    return-void

    .end local v2    # "hasNewLeftmostPage":Z
    .end local v3    # "hasNewRightmostPage":Z
    :cond_3
    move v2, v5

    .line 1381
    goto :goto_0

    .restart local v2    # "hasNewLeftmostPage":Z
    :cond_4
    move v3, v5

    .line 1382
    goto :goto_1
.end method


# virtual methods
.method public cancelLongPressTimeouts()V
    .locals 2

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1230
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1231
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2500(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1233
    :cond_0
    return-void
.end method

.method public isTouchLocked()Z
    .locals 1

    .prologue
    .line 1525
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingX:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mIsScrollingY:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1471
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->isSnapToPageAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    .line 1472
    invoke-virtual {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;->isTouchLockedByAnyOtherClient(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1473
    :cond_0
    const/4 v0, 0x0

    .line 1504
    :cond_1
    :goto_0
    return v0

    .line 1476
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mActiveCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    if-eqz v1, :cond_3

    .line 1477
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->handleCandidateSelection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1481
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mSwipeDetector:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1483
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->isSnapToPageAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1486
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->handleDownAction(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1490
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->handleMoveAction(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1494
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->handleUpAction(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1498
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->resetVerticalTouchTracking()V

    goto :goto_0

    .line 1484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public scrollToPage(I)V
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->isVerticalFlingScrollerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->cancelVerticalFlingScrolling()V

    .line 1110
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->isSnapToPageAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->snapToPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 1114
    return-void
.end method

.method public setTouchLockManager(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;)V
    .locals 1
    .param p1, "touchLockManager"    # Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    .line 1515
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {p1, p0}, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;->addTouchLockClient(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;)V

    .line 1518
    :cond_0
    return-void
.end method
