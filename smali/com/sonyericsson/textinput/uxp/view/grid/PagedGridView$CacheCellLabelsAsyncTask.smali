.class final Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;
.super Landroid/os/AsyncTask;
.source "PagedGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheCellLabelsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/grid/Page;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/sonyericsson/textinput/uxp/view/grid/Page;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHeight:I

.field private volatile mPriorityCachePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

.field private final mWidth:I

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;II)V
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mPriorityCachePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1559
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mWidth:I

    .line 1560
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mHeight:I

    .line 1561
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1552
    check-cast p1, [Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->doInBackground([Lcom/sonyericsson/textinput/uxp/view/grid/Page;)[Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sonyericsson/textinput/uxp/view/grid/Page;)[Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 11
    .param p1, "params"    # [Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    const/4 v5, 0x0

    .line 1565
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mPriorityCachePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-eqz v3, :cond_2

    .line 1566
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mPriorityCachePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->getCells()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .line 1567
    .local v0, "cell":Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2900(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->cacheCell(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V

    .line 1568
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1569
    new-array p1, v5, [Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1585
    .end local v0    # "cell":Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    .end local p1    # "params":[Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_1
    :goto_0
    return-object p1

    .line 1573
    .restart local p1    # "params":[Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_2
    array-length v6, p1

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v1, p1, v4

    .line 1574
    .local v1, "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mPriorityCachePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1575
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v7

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v3

    .line 1576
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v3

    iget v9, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mWidth:I

    add-int/2addr v9, v3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v10, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mHeight:I

    add-int/2addr v3, v10

    invoke-direct {v2, v7, v8, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1577
    .local v2, "pageVisibleBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->getPageVisibleCells(Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .line 1578
    .restart local v0    # "cell":Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$2900(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->cacheCell(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V

    .line 1579
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1580
    new-array p1, v5, [Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    goto :goto_0

    .line 1573
    .end local v0    # "cell":Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    .end local v2    # "pageVisibleBounds":Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1
.end method

.method public isPriorityCachePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Z
    .locals 1
    .param p1, "page"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 1611
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mPriorityCachePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mPriorityCachePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1601
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1602
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1552
    check-cast p1, [Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->onPostExecute([Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    return-void
.end method

.method protected onPostExecute([Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
    .locals 1
    .param p1, "cachedPages"    # [Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 1594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mPriorityCachePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1595
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1596
    return-void
.end method

.method public setPriorityCachePage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
    .locals 0
    .param p1, "page"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CacheCellLabelsAsyncTask;->mPriorityCachePage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1590
    return-void
.end method
