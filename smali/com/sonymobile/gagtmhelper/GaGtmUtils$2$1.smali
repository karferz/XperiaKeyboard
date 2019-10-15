.class Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;


# direct methods
.method constructor <init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 597
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$800(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 607
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->setContainerDefaults()V

    .line 609
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$902(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Z)Z

    .line 611
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$1000(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 612
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$1100(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 613
    monitor-exit v1

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
