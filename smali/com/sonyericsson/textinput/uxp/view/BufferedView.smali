.class public Lcom/sonyericsson/textinput/uxp/view/BufferedView;
.super Landroid/view/View;
.source "BufferedView.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;
    }
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mBufferEnabled:Z

.field private volatile mBufferInitiated:Z

.field private volatile mCanvas:Landroid/graphics/Canvas;

.field private mDrawBitmapPaint:Landroid/graphics/Paint;

.field private volatile mDrawBuffer:Landroid/graphics/Bitmap;

.field private mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsDrawPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferEnabled:Z

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->initialize()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferEnabled:Z

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->initialize()V

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mActive:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/BufferedView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferInitiated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/BufferedView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/BufferedView;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/BufferedView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mIsDrawPending:Z

    return p1
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBitmapPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 91
    return-void
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method protected clearDrawBuffer()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    if-eqz v0, :cond_1

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferInitiated:Z

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mCanvas:Landroid/graphics/Canvas;

    .line 242
    monitor-exit v1

    .line 244
    :cond_1
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected closing()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->clearDrawBuffer()V

    .line 140
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mActive:Z

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->closing()V

    .line 133
    return-void
.end method

.method protected doBufferDraw()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onBufferDraw(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 282
    return-void
.end method

.method protected doDirectDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 305
    return-void
.end method

.method protected drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dirtyObject"    # Ljava/lang/Object;

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mIsDrawPending:Z

    .line 324
    return-void
.end method

.method public enableBuffer(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferEnabled:Z

    .line 164
    return-void
.end method

.method protected getDrawBufferCopy()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLocalHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mActive:Z

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    monitor-enter v1

    .line 118
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferInitiated:Z

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    monitor-exit v1

    .line 123
    :cond_0
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method protected isActive()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mActive:Z

    return v0
.end method

.method protected onBufferDraw(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dirtyObject"    # Ljava/lang/Object;

    .prologue
    .line 292
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method protected onBufferInitiated()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->invalidate()V

    .line 227
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->closing()V

    .line 146
    return-void
.end method

.method protected onDirectDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 249
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferInitiated:Z

    if-eqz v0, :cond_4

    .line 250
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferInitiated:Z

    if-eqz v0, :cond_3

    .line 252
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mIsDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->doBufferDraw()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 261
    :cond_2
    :goto_0
    monitor-exit v1

    .line 265
    :goto_1
    return-void

    .line 259
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->doDirectDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 263
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->doDirectDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 212
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;-><init>(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Lcom/sonyericsson/textinput/uxp/view/BufferedView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferInitiated:Z

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mDrawBufferInitiator:Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    :cond_1
    return-void
.end method

.method protected redrawDirtyObject()V
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mBufferInitiated:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->doBufferDraw()V

    .line 183
    :cond_0
    return-void
.end method

.method protected setDrawPending(Z)V
    .locals 0
    .param p1, "isDrawPending"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->mIsDrawPending:Z

    .line 174
    return-void
.end method
