.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;
.super Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;
.source "PersonalizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "account"    # Landroid/accounts/Account;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method protected onComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$1200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->access$1300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->access$1500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->access$1600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0, v3, v3, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IIZ)V

    .line 541
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$900(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)V

    .line 563
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-static {v0, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->access$1802(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;Z)Z

    .line 564
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->access$1500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->access$1600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$800(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IIZ)V

    goto :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$1700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$1708(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)I

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$1400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0, v3, v3, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IIZ)V

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->access$1500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->access$1600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$900(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)V

    goto :goto_1
.end method

.method protected onProgress(II)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$1202(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;Z)Z

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-static {v0, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->access$1302(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;I)I

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;->this$1:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->access$1400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method
