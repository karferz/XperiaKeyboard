.class final Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;
.super Ljava/lang/Object;
.source "PagedGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LongPressRunnable"
.end annotation


# instance fields
.field private mCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V
    .locals 0

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;

    .prologue
    .line 1616
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    return-void
.end method

.method private getPressedCellAsKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 9

    .prologue
    .line 1638
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2700(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v1

    .line 1639
    .local v1, "boundsAdjustmentX":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1640
    .local v4, "scrollAdjustmentY":I
    new-instance v2, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->mCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1641
    .local v2, "localCellBounds":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1645
    .local v0, "adjustedCellBounds":Landroid/graphics/Rect;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>()V

    .line 1646
    .local v3, "pressedCell":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setVisualXPx(I)V

    .line 1647
    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setVisualYPx(I)V

    .line 1648
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setVisualWidthPx(I)V

    .line 1649
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setVisualHeightPx(I)V

    .line 1650
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setTouchXPx(I)V

    .line 1651
    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setTouchYPx(I)V

    .line 1652
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setTouchWidthPx(I)V

    .line 1653
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setTouchHeightPx(I)V

    .line 1655
    return-object v3
.end method


# virtual methods
.method public init(Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;)V
    .locals 0
    .param p1, "cellInfo"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->mCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    .line 1635
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1621
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->getPressedCellAsKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v1

    .line 1622
    .local v1, "pressedCell":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->mCellInfo:Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    move-result-object v4

    .line 1623
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 1622
    invoke-static {v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getSkinTones(Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 1624
    .local v3, "skinTones":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v4, v3

    new-array v2, v4, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1626
    .local v2, "skinToneVariants":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1627
    new-instance v4, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    aget-object v5, v3, v0

    aget-object v6, v3, v0

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    aput-object v4, v2, v0

    .line 1626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1630
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$LongPressRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$3000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->showCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;I)V

    .line 1631
    return-void
.end method
