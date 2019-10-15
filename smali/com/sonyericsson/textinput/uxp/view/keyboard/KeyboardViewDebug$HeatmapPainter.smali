.class final Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;
.super Ljava/lang/Object;
.source "KeyboardViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeatmapPainter"
.end annotation


# instance fields
.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDrawBuffer:Landroid/graphics/Bitmap;

.field private mDrawLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private volatile mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

.field private mStateLock:Ljava/lang/Object;

.field private final mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

.field private mWidth:I

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Landroid/os/Handler;)V
    .locals 1
    .param p2, "swiftKeyEngine"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mBitmapPaint:Landroid/graphics/Paint;

    .line 227
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->IDLE:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawLock:Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mStateLock:Ljava/lang/Object;

    .line 234
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHandler:Landroid/os/Handler;

    .line 235
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .line 236
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->DISPOSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    .line 241
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawBuffer:Landroid/graphics/Bitmap;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    return-void

    .line 241
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 250
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected drawOnCanvas(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->IDLE:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 257
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PENDING_PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHeight:I

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mWidth:I

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    return-void

    .line 263
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PRENDING_DRAW:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    if-ne v0, v3, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawBuffer:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->enableBuffer(Z)V

    .line 266
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->IDLE:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 270
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 275
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawLock:Ljava/lang/Object;

    monitor-enter v11

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PENDING_PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    if-ne v0, v1, :cond_6

    .line 277
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PENDING_PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    if-eq v0, v2, :cond_0

    .line 279
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    :goto_0
    return-void

    .line 281
    :cond_0
    :try_start_3
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    .line 282
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    :try_start_4
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mWidth:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHeight:I

    if-eqz v0, :cond_4

    .line 284
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mWidth:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawBuffer:Landroid/graphics/Bitmap;

    .line 286
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mDrawBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mCanvas:Landroid/graphics/Canvas;

    .line 288
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mWidth:I

    if-ge v9, v0, :cond_4

    .line 289
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_2
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mHeight:I

    if-ge v10, v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    new-instance v1, Lcom/touchtype_fluency/Point;

    int-to-float v2, v9

    int-to-float v3, v10

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 293
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getMostLikelyKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, "mostLikelyKey":[Ljava/lang/String;
    const/4 v6, -0x1

    .line 295
    .local v6, "keyIndex":I
    if-eqz v7, :cond_1

    array-length v0, v7

    if-lez v0, :cond_1

    .line 296
    const/4 v0, 0x0

    aget-object v0, v7, v0

    .line 297
    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    .line 298
    .local v8, "mostLikelyKeyCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v8, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v1

    .line 299
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->findKeyIndex(I)I

    move-result v6

    .line 304
    .end local v8    # "mostLikelyKeyCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    if-ltz v6, :cond_2

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->access$100()[I

    move-result-object v1

    .line 306
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->access$100()[I

    move-result-object v2

    array-length v2, v2

    rem-int v2, v6, v2

    aget v1, v1, v2

    .line 305
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v9

    int-to-float v2, v10

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->access$000()I

    move-result v3

    add-int/2addr v3, v9

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    .line 310
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->access$000()I

    move-result v4

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;)Landroid/graphics/Paint;

    move-result-object v5

    .line 308
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 289
    .end local v6    # "keyIndex":I
    .end local v7    # "mostLikelyKey":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->access$000()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    add-int/2addr v10, v0

    goto :goto_2

    .line 282
    .end local v9    # "x":I
    .end local v10    # "y":I
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 327
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 288
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_3
    :try_start_7
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->access$000()I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_1

    .line 316
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    if-ne v0, v1, :cond_6

    .line 317
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 318
    :try_start_8
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    if-eq v0, v2, :cond_5

    .line 319
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 321
    :cond_5
    :try_start_a
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PRENDING_DRAW:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->enableBuffer(Z)V

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->invalidate()V

    .line 324
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 327
    :cond_6
    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 324
    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method
