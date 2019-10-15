.class public final Lcom/sonyericsson/textinput/uxp/view/grid/Page;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;,
        Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;,
        Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    }
.end annotation


# static fields
.field private static final DEFAULT_MINIMAL_NUMBER_OF_VISIBLE_ROWS:F = 2.5f

.field private static final UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;


# instance fields
.field private mCellHeight:I

.field private mCellWidth:D

.field private mCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterColumnsPadding:I

.field private final mCurrentCellDimensions:Landroid/graphics/Rect;

.field private final mDimensions:Landroid/graphics/Rect;

.field private final mDrawGridRect:Landroid/graphics/Rect;

.field private mEmptyDynamicPageHintTextLayout:Landroid/text/StaticLayout;

.field private mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

.field private mNextPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

.field private mNumberOfColumns:I

.field private mPreviousPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

.field private mSplitHalfWidth:I

.field private mSplitMiddleWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCurrentCellDimensions:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDrawGridRect:Landroid/graphics/Rect;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    .line 124
    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Ljava/util/List;)V
    .locals 2
    .param p1, "immutableState"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Cell;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCurrentCellDimensions:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDrawGridRect:Landroid/graphics/Rect;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    .line 135
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->copy()Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    .line 139
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mPreviousPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 140
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNextPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Ljava/util/List;Lcom/sonyericsson/textinput/uxp/view/grid/Page$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$1;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Ljava/util/List;)V

    return-void
.end method

.method private calculateCellBounds(I)Landroid/graphics/Rect;
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 399
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 400
    .local v1, "rect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    div-int v2, p1, v3

    .line 401
    .local v2, "row":I
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    rem-int v0, p1, v3

    .line 402
    .local v0, "column":I
    int-to-double v4, v0

    iget-wide v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 403
    add-int/lit8 v3, v0, 0x1

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 404
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitHalfWidth:I

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitHalfWidth:I

    if-lt v3, v4, :cond_0

    .line 405
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitMiddleWidth:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 406
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitMiddleWidth:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 408
    :cond_0
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    mul-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 409
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    mul-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 410
    return-object v1
.end method

.method private calculateCellHeight(I)I
    .locals 4
    .param p1, "visiblePageHeight"    # I

    .prologue
    .line 154
    int-to-float v2, p1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 155
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 156
    .local v0, "numberOfVisibleRows":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 157
    int-to-float v2, p1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 158
    .local v1, "requiredHeight":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 161
    .end local v1    # "requiredHeight":I
    :goto_0
    return v1

    .line 158
    .restart local v1    # "requiredHeight":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 159
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v1

    goto :goto_0

    .line 161
    .end local v1    # "requiredHeight":I
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v1

    goto :goto_0
.end method

.method private static calculateCellWidth(II)D
    .locals 4
    .param p0, "pageWidth"    # I
    .param p1, "nbrOfColumns"    # I

    .prologue
    .line 144
    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private calculatePageHeight(I)I
    .locals 4
    .param p1, "cellHeight"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private drawEmptyDynamicHintText(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textPainter"    # Landroid/text/TextPaint;
    .param p3, "viewport"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$500(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 589
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitHalfWidth:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 590
    .local v3, "availableWidth":I
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mEmptyDynamicPageHintTextLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 592
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$500(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    move-object v2, p2

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mEmptyDynamicPageHintTextLayout:Landroid/text/StaticLayout;

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mEmptyDynamicPageHintTextLayout:Landroid/text/StaticLayout;

    .line 596
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int v8, v0, v1

    .line 597
    .local v8, "drawInCenterTranslationX":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mEmptyDynamicPageHintTextLayout:Landroid/text/StaticLayout;

    .line 598
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v9, v0, v1

    .line 599
    .local v9, "drawInCenterTranslationY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 600
    int-to-float v0, v8

    int-to-float v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 601
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mEmptyDynamicPageHintTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 602
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 607
    .end local v3    # "availableWidth":I
    .end local v8    # "drawInCenterTranslationX":I
    .end local v9    # "drawInCenterTranslationY":I
    :goto_1
    return-void

    .line 589
    :cond_1
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitHalfWidth:I

    goto :goto_0

    .line 605
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mEmptyDynamicPageHintTextLayout:Landroid/text/StaticLayout;

    goto :goto_1
.end method

.method private isWithinPageBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 169
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setGridBoundaries(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "viewport"    # Landroid/graphics/Rect;
    .param p2, "gridRectBoundaries"    # Landroid/graphics/Rect;

    .prologue
    const/4 v10, 0x0

    .line 557
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-double v6, v5

    iget-wide v8, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 558
    .local v0, "firstColumn":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-double v6, v5

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 559
    .local v1, "firstRow":I
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-double v6, v5

    iget-wide v8, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 560
    .local v2, "lastColumn":I
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-double v6, v5

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 563
    .local v3, "lastRow":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v6, v5

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 564
    .local v4, "totalNumberOfRows":I
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 565
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 566
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 567
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 569
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 570
    return-void
.end method

.method private static verifyViewportBoundaries(Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "viewport"    # Landroid/graphics/Rect;

    .prologue
    .line 148
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The viewport is geometrically invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    return-void
.end method


# virtual methods
.method assignNextPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
    .locals 2
    .param p1, "nextPage"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNextPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-eq v0, v1, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The next page may only be assigned once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNextPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 257
    return-void
.end method

.method assignPreviousPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
    .locals 2
    .param p1, "previousPage"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mPreviousPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-eq v0, v1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The previous page may only be assigned once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mPreviousPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 229
    return-void
.end method

.method bottom()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method draw(Landroid/graphics/Canvas;Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;Landroid/graphics/Rect;Landroid/content/Context;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cellPainter"    # Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "viewport"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 502
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->verifyViewportBoundaries(Landroid/graphics/Rect;)V

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDrawGridRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->setGridBoundaries(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 506
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitMiddleWidth:I

    if-nez v0, :cond_1

    const/4 v9, 0x0

    .line 507
    .local v9, "splitColumnIndex":I
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDrawGridRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .local v6, "column":I
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDrawGridRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gt v6, v0, :cond_4

    .line 508
    if-gt v6, v9, :cond_2

    const/4 v10, 0x0

    .line 509
    .local v10, "splitXOffset":I
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDrawGridRect:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .local v8, "row":I
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDrawGridRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v0, :cond_3

    .line 510
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    mul-int/2addr v0, v8

    add-int v7, v0, v6

    .line 511
    .local v7, "index":I
    if-ltz v7, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCurrentCellDimensions:Landroid/graphics/Rect;

    int-to-double v2, v6

    iget-wide v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-double v4, v1

    add-double/2addr v2, v4

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-double v4, v1

    sub-double/2addr v2, v4

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCenterColumnsPadding:I

    int-to-double v4, v1

    add-double/2addr v2, v4

    int-to-double v4, v10

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCurrentCellDimensions:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    mul-int/2addr v1, v8

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCurrentCellDimensions:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCurrentCellDimensions:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCurrentCellDimensions:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCurrentCellDimensions:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCurrentCellDimensions:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 518
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$600(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 519
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$700(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v5

    move-object v0, p2

    move-object v2, p1

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->paintCell(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;I)V

    .line 509
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 506
    .end local v6    # "column":I
    .end local v7    # "index":I
    .end local v8    # "row":I
    .end local v9    # "splitColumnIndex":I
    .end local v10    # "splitXOffset":I
    :cond_1
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v9, v0, -0x1

    goto/16 :goto_0

    .line 508
    .restart local v6    # "column":I
    .restart local v9    # "splitColumnIndex":I
    :cond_2
    iget v10, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitMiddleWidth:I

    goto/16 :goto_2

    .line 507
    .restart local v8    # "row":I
    .restart local v10    # "splitXOffset":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 524
    .end local v8    # "row":I
    .end local v10    # "splitXOffset":I
    :cond_4
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->getHintLabelPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->drawEmptyDynamicHintText(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/graphics/Rect;)V

    .line 525
    return-void
.end method

.method dynamicContentIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$400(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method emptyDynamicContentHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$500(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method findCellCenterCoordinates(I)Landroid/graphics/Point;
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 421
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 422
    .local v1, "point":Landroid/graphics/Point;
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    div-int v2, p1, v3

    .line 423
    .local v2, "row":I
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    rem-int v0, p1, v3

    .line 424
    .local v0, "column":I
    int-to-double v4, v0

    iget-wide v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 425
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitHalfWidth:I

    if-le v3, v4, :cond_0

    .line 426
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitMiddleWidth:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 429
    :cond_0
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 430
    return-object v1
.end method

.method findCellInfo(II)Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->isWithinPageBounds(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitHalfWidth:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitHalfWidth:I

    if-gt p1, v4, :cond_1

    :cond_0
    move v3, p1

    .line 382
    .local v3, "splitAdjustedX":I
    :goto_0
    int-to-double v4, v3

    iget-wide v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 383
    .local v0, "column":I
    int-to-double v4, p2

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .line 384
    .local v2, "row":I
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    mul-int/2addr v4, v2

    add-int v1, v4, v0

    .line 385
    .local v1, "index":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-ltz v1, :cond_2

    .line 386
    new-instance v5, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->calculateCellBounds(I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Landroid/graphics/Rect;)V

    move-object v4, v5

    .line 389
    .end local v0    # "column":I
    .end local v1    # "index":I
    .end local v2    # "row":I
    .end local v3    # "splitAdjustedX":I
    :goto_1
    return-object v4

    .line 380
    :cond_1
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitMiddleWidth:I

    sub-int v3, p1, v4

    goto :goto_0

    .line 389
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method findPage(IZ)Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 3
    .param p1, "x"    # I
    .param p2, "clamp"    # Z

    .prologue
    .line 334
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mPreviousPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNextPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-ne v1, v2, :cond_1

    .line 335
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Both pages must be assigned."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v1

    if-lt p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->right()I

    move-result v1

    if-gt p1, v1, :cond_3

    .line 366
    .end local p0    # "this":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_2
    :goto_0
    return-object p0

    .line 341
    .restart local p0    # "this":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mPreviousPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 343
    .local v0, "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->right()I

    move-result v1

    if-le p1, v1, :cond_4

    .line 344
    const/4 v0, 0x0

    .line 359
    :cond_4
    :goto_1
    if-nez v0, :cond_7

    .line 360
    if-nez p2, :cond_2

    .line 363
    const/4 p0, 0x0

    goto :goto_0

    .line 346
    .end local v0    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->right()I

    move-result v1

    if-le p1, v1, :cond_6

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNextPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 348
    .restart local v0    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->left()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 349
    const/4 v0, 0x0

    goto :goto_1

    .line 357
    .end local v0    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Cannot locate the proper page."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 366
    .restart local v0    # "page":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_7
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->findPage(IZ)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object p0

    goto :goto_0
.end method

.method getCells()Ljava/util/List;
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
    .line 439
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPageVisibleCells(Landroid/graphics/Rect;)Ljava/util/List;
    .locals 6
    .param p1, "viewport"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->verifyViewportBoundaries(Landroid/graphics/Rect;)V

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, "cellList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Cell;>;"
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 544
    .local v2, "gridRect":Landroid/graphics/Rect;
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->setGridBoundaries(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 545
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .local v1, "column":I
    :goto_0
    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-gt v1, v5, :cond_2

    .line 546
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .local v4, "row":I
    :goto_1
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_1

    .line 547
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    mul-int/2addr v5, v4

    add-int v3, v5, v1

    .line 548
    .local v3, "index":I
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 549
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 545
    .end local v3    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v4    # "row":I
    :cond_2
    return-object v0
.end method

.method isVariantSelectionSupported()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$500(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layoutPage(IIIII)V
    .locals 10
    .param p1, "pageContentWidth"    # I
    .param p2, "visibleHeight"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "splitHalfWidth"    # I

    .prologue
    const/4 v2, 0x0

    .line 285
    iput p5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitHalfWidth:I

    .line 288
    if-nez p5, :cond_1

    .line 289
    move v0, p1

    .line 290
    .local v0, "availableWidth":I
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitMiddleWidth:I

    .line 291
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$300(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v1

    div-int v1, v0, v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    .line 303
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->calculateCellWidth(II)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    .line 304
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->calculateCellHeight(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    .line 305
    if-nez p5, :cond_2

    int-to-double v4, p1

    iget-wide v6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellWidth:D

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    int-to-double v8, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-int v1, v4

    :goto_1
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCenterColumnsPadding:I

    .line 307
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iput p3, v1, Landroid/graphics/Rect;->left:I

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 309
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iput p4, v1, Landroid/graphics/Rect;->right:I

    .line 310
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->calculatePageHeight(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 311
    return-void

    .line 293
    .end local v0    # "availableWidth":I
    :cond_1
    mul-int/lit8 v0, p5, 0x2

    .line 294
    .restart local v0    # "availableWidth":I
    sub-int v1, p1, v0

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mSplitMiddleWidth:I

    .line 295
    mul-int/lit8 v1, p5, 0x2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$300(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v3

    div-int/2addr v1, v3

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    .line 297
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 299
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNumberOfColumns:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 305
    goto :goto_1
.end method

.method left()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method nextPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNextPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-ne v0, v1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No next page has been assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mNextPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    return-object v0
.end method

.method previousPage()Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mPreviousPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->UNASSIGNED_PAGE:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    if-ne v0, v1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No previous page has been assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mPreviousPage:Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    return-object v0
.end method

.method right()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method setCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Cell;>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$400(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cells may only be set for dynamic pages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCellHeight:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->calculatePageHeight(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 454
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[columnMinWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 612
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$300(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rowPreferredHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 613
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rowMinHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 614
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minVisibleRows: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 615
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 616
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$600(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellBorderThicknessPx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 617
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$700(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", labelTextSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 618
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$800(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dynamicContentIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 619
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$400(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emptyDynamicContentHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mImmutableState:Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .line 620
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->access$500(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cells: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mCells:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method top()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method width()I
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->mDimensions:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
