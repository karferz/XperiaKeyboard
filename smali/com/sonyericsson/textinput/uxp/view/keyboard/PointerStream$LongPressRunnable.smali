.class final Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;
.super Ljava/lang/Object;
.source "PointerStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongPressRunnable"
.end annotation


# instance fields
.field private mKeyIndex:I

.field private mMetaKey:I

.field private final mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 0
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 568
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;
    .param p1, "x1"    # I

    .prologue
    .line 559
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mKeyIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;
    .param p1, "x1"    # I

    .prologue
    .line 559
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mMetaKey:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 572
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mMetaKey:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$400(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 573
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 574
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 573
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$700(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onStartMoveKeyboard(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->MOVE_KEYBOARD:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$802(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->LONG_PRESS:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$802(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$700(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->mKeyIndex:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onLongPress(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    goto :goto_0
.end method
