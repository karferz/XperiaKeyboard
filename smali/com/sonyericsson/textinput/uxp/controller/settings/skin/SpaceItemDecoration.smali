.class public Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpaceItemDecoration.java"


# instance fields
.field private final mMargin:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 26
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;->mMargin:I

    .line 27
    return-void
.end method

.method private isItemInTop(ILandroid/support/v7/widget/GridLayoutManager;)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "manager"    # Landroid/support/v7/widget/GridLayoutManager;

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 54
    .local v0, "columns":I
    add-int/lit8 v1, v0, -0x1

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 32
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 34
    .local v0, "childPos":I
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;->mMargin:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 35
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;->mMargin:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 36
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;->mMargin:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 40
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    .line 41
    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .end local v1    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;->isItemInTop(ILandroid/support/v7/widget/GridLayoutManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;->mMargin:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local v1    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    if-nez v0, :cond_0

    .line 47
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;->mMargin:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method
