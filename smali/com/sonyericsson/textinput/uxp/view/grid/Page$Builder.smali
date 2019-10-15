.class final Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final mCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mContext:Landroid/content/Context;

    .line 697
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mCells:Ljava/util/List;

    .line 698
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/Page$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 699
    return-void
.end method


# virtual methods
.method addCell(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .locals 2
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$800(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->setLabelTextSize(F)V

    .line 837
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mCells:Ljava/util/List;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    return-object p0
.end method

.method build()Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 4

    .prologue
    .line 850
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$400(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 851
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A page must be designated as either static or dynamic."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mCells:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Ljava/util/List;Lcom/sonyericsson/textinput/uxp/view/grid/Page$1;)V

    return-object v0
.end method

.method columnMinWidth(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .locals 2
    .param p1, "columnMinWidth"    # I

    .prologue
    .line 708
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 709
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The minimum column width must be a positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$302(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I

    .line 713
    return-object p0
.end method

.method dynamicContent(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "emptyHint"    # Ljava/lang/String;

    .prologue
    .line 819
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$402(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Ljava/lang/String;)Ljava/lang/String;

    .line 820
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$502(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Ljava/lang/String;)Ljava/lang/String;

    .line 821
    return-object p0
.end method

.method minVisibleRows(F)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .locals 2
    .param p1, "minVisibleRows"    # F

    .prologue
    .line 753
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 754
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The minimum amount of visible rows must be a non-negative number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$102(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;F)F

    .line 758
    return-object p0
.end method

.method rowMinHeight(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .locals 2
    .param p1, "rowMinHeight"    # I

    .prologue
    .line 737
    if-gez p1, :cond_0

    .line 738
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The minimum row height must be a non-negative number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$202(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I

    .line 742
    return-object p0
.end method

.method rowPreferredHeight(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .locals 2
    .param p1, "rowHeight"    # I

    .prologue
    .line 723
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The row height must be a positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$002(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I

    .line 727
    return-object p0
.end method

.method setCellBackgroundResourceId(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .locals 3
    .param p1, "cellBackgroundResourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$602(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    return-object p0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot find the given resource identifier."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCellBorderThicknessResourceId(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .locals 3
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/AnyRes;
        .end annotation
    .end param

    .prologue
    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 781
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 780
    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$702(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    return-object p0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot find the given resource identifier."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPageSpecificLabelTextSize(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .locals 3
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/AnyRes;
        .end annotation
    .end param

    .prologue
    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 798
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 797
    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$802(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    return-object p0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot find the given resource identifier."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
