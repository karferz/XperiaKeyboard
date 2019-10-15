.class final Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;
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
    name = "RepeatRunnable"
.end annotation


# instance fields
.field private final mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 0
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 590
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 594
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$1000(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$700(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$1000(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onRepeat(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$1000(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 597
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$1100(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)I

    move-result v2

    const/4 v3, 0x0

    .line 596
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->access$1200(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;IIZ)V

    .line 599
    :cond_0
    return-void
.end method
