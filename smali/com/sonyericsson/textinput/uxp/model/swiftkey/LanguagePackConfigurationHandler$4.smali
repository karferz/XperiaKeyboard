.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;
.super Ljava/lang/Object;
.source "LanguagePackConfigurationHandler.java"

# interfaces
.implements Lcom/touchtype_fluency/util/RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->refreshLanguagePacks(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

.field final synthetic val$isUserConfirmedDownload:Z

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;JZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iput-wide p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->val$startTime:J

    iput-boolean p4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->val$isUserConfirmedDownload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
    .locals 6
    .param p1, "result"    # Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    .prologue
    .line 564
    const/4 v0, 0x1

    .line 565
    .local v0, "isFinished":Z
    const/4 v1, 0x0

    .line 566
    .local v1, "isSuccess":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 572
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V

    .line 573
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$5;->$SwitchMap$com$touchtype_fluency$util$RefreshListener$RefreshResult:[I

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 605
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown RefreshResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 575
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I

    move-result v2

    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 580
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    const-string v4, "RefreshFailure"

    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->val$isUserConfirmedDownload:Z

    invoke-static {v2, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;Z)Z

    .line 583
    const/4 v0, 0x0

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1408(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I

    .line 608
    :goto_0
    if-eqz v0, :cond_1

    .line 609
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->NORMAL:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$202(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 611
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    if-eqz v0, :cond_2

    .line 614
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    invoke-static {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V

    .line 616
    :cond_2
    return-void

    .line 593
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1402(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;I)I

    .line 594
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)V

    .line 595
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V

    .line 596
    const/4 v1, 0x1

    .line 597
    goto :goto_0

    .line 600
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    const-string v4, "RefreshError"

    invoke-virtual {v2, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->nukeLanguagePackFile(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    const/4 v0, 0x0

    .line 603
    goto :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
