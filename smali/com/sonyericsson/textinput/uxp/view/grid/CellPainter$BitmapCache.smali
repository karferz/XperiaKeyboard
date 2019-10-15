.class Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;
.super Ljava/lang/Object;
.source "CellPainter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation


# instance fields
.field private final mCacheSizeEmojisNotShown:I

.field private final mEmojiCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 487
    .local v1, "maxMemory":I
    int-to-float v2, v1

    const v3, 0x3eb851ec    # 0.36f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 489
    .local v0, "cacheSize":I
    int-to-float v2, v1

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->mCacheSizeEmojisNotShown:I

    .line 490
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;I)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->mEmojiCache:Landroid/util/LruCache;

    .line 501
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->mEmojiCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->mCacheSizeEmojisNotShown:I

    if-le v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->mEmojiCache:Landroid/util/LruCache;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->mCacheSizeEmojisNotShown:I

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 516
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 504
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->mEmojiCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 505
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public put(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->mEmojiCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    return-void
.end method
