.class public Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final GRID:I = 0x2

.field public static final HORIZONTAL_LIST:I = 0x0

.field private static final NOT_USED:I = -0x1

.field public static final VERTICAL_LIST:I = 0x1


# instance fields
.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private mHeaderItemType:I

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "headerItemType"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mHeaderItemType:I

    .line 61
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->setOrientation(I)V

    .line 65
    invoke-direct {p0, p3}, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->setHeaderItemType(I)V

    .line 66
    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    .line 122
    .local v7, "top":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 124
    .local v0, "bottom":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 125
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 126
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    invoke-direct {p0, p2, v8, v2}, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->isAdjancentToHeader(Landroid/support/v7/widget/RecyclerView;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 125
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 133
    .local v5, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    .line 134
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int v4, v8, v9

    .line 135
    .local v4, "left":I
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int v6, v4, v8

    .line 136
    .local v6, "right":I
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 139
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v6    # "right":I
    :cond_1
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    .line 100
    .local v4, "left":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 102
    .local v6, "right":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 103
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 104
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    invoke-direct {p0, p2, v8, v2}, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->isAdjancentToHeader(Landroid/support/v7/widget/RecyclerView;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 103
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 112
    .local v5, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 113
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int v7, v8, v9

    .line 114
    .local v7, "top":I
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 115
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 118
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v7    # "top":I
    :cond_1
    return-void
.end method

.method private isAdjancentToHeader(Landroid/support/v7/widget/RecyclerView;II)Z
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "position"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mHeaderItemType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mHeaderItemType:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mHeaderItemType:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setHeaderItemType(I)V
    .locals 0
    .param p1, "headerItemType"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mHeaderItemType:I

    .line 77
    return-void
.end method

.method private setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 69
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mOrientation:I

    .line 73
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v2, 0x0

    .line 144
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mOrientation:I

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 87
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->mOrientation:I

    if-nez v0, :cond_1

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method
