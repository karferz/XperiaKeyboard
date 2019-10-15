.class Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;
.super Ljava/lang/Object;
.source "CellPainter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadSafeCacheUtil"
.end annotation


# static fields
.field private static final sCacheDrawCanvas:Landroid/graphics/Canvas;

.field private static final sCacheLabelPaint:Landroid/graphics/Paint;

.field private static final sPixelErrorAdjustment:Landroid/graphics/Rect;

.field private static final sShadowOutline:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 524
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheLabelPaint:Landroid/graphics/Paint;

    .line 526
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheDrawCanvas:Landroid/graphics/Canvas;

    .line 534
    new-instance v0, Landroid/graphics/Rect;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 535
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 534
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v1, v2

    .line 536
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 535
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 537
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 536
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v3, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 538
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 537
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sShadowOutline:Landroid/graphics/Rect;

    .line 545
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {v0, v8, v8, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sPixelErrorAdjustment:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createBitmap(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 555
    const-class v8, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 557
    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    .line 558
    .local v4, "labelWidth":I
    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    sget-object v9, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheLabelPaint:Landroid/graphics/Paint;

    .line 559
    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    add-float/2addr v7, v9

    float-to-double v10, v7

    .line 558
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 560
    .local v3, "labelHeight":I
    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sShadowOutline:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v4

    sget-object v9, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sPixelErrorAdjustment:Landroid/graphics/Rect;

    .line 561
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int v2, v7, v9

    .line 562
    .local v2, "bitmapWidth":I
    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sShadowOutline:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v3

    sget-object v9, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sPixelErrorAdjustment:Landroid/graphics/Rect;

    .line 563
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int v1, v7, v9

    .line 565
    .local v1, "bitmapHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 568
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sShadowOutline:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v5, v7

    .line 569
    .local v5, "originX":I
    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    sget-object v9, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sShadowOutline:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    sget-object v9, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sPixelErrorAdjustment:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    .line 572
    .local v6, "originY":I
    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheDrawCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 573
    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheDrawCanvas:Landroid/graphics/Canvas;

    int-to-float v9, v5

    int-to-float v10, v6

    sget-object v11, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->sCacheLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit v8

    return-object v0

    .line 555
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapHeight":I
    .end local v2    # "bitmapWidth":I
    .end local v3    # "labelHeight":I
    .end local v4    # "labelWidth":I
    .end local v5    # "originX":I
    .end local v6    # "originY":I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method
