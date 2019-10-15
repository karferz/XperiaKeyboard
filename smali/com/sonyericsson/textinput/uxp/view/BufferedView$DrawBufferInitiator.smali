.class final Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;
.super Ljava/lang/Object;
.source "BufferedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/BufferedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DrawBufferInitiator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Lcom/sonyericsson/textinput/uxp/view/BufferedView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/BufferedView;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/BufferedView$1;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;-><init>(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 333
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$100(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;

    move-result-object v3

    monitor-enter v3

    .line 334
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$200(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$302(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Z)Z

    .line 336
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$400(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$400(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$402(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->getWidth()I

    move-result v1

    .line 342
    .local v1, "width":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->getHeight()I

    move-result v0

    .line 343
    .local v0, "height":I
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 344
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$402(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 345
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$400(Lcom/sonyericsson/textinput/uxp/view/BufferedView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$502(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 346
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$302(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Z)Z

    .line 347
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->access$602(Lcom/sonyericsson/textinput/uxp/view/BufferedView;Z)Z

    .line 348
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/BufferedView$DrawBufferInitiator;->this$0:Lcom/sonyericsson/textinput/uxp/view/BufferedView;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/BufferedView;->onBufferInitiated()V

    .line 351
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_1
    monitor-exit v3

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
