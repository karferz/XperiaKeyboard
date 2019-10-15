.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;
.super Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;
.source "PersonalizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->access$400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->access$500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0, v3, v5, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IIZ)V

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$900(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)V

    .line 475
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-static {v0, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->access$1102(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;Z)Z

    .line 476
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->access$400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->access$500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$800(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IIZ)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$1000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$1008(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)I

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0, v3, v5, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IIZ)V

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->access$400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->access$500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$900(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)V

    goto :goto_1
.end method

.method protected onProgress(II)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$002(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;Z)Z

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-static {v0, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->access$102(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;I)I

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    return-void
.end method
