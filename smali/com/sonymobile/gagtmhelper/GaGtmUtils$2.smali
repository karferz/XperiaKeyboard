.class Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmUtils;->downloadContainerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;


# direct methods
.method constructor <init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 551
    check-cast p1, Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 3
    .param p1, "containerHolder"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const-string v0, "GaGtmHelper"

    const-string v1, "onResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$602(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 560
    if-nez p1, :cond_4

    .line 562
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    const-string v0, "GaGtmHelper"

    const-string v1, "containerHolder was null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 567
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    const-string v0, "GaGtmHelper"

    const-string v1, "Calling callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;->onContainerLoaded(Z)V

    .line 623
    :cond_3
    :goto_0
    return-void

    .line 576
    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_7

    .line 578
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 579
    const-string v0, "GaGtmHelper"

    const-string v1, "success was false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 583
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 584
    const-string v0, "GaGtmHelper"

    const-string v1, "Calling callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;->onContainerLoaded(Z)V

    goto :goto_0

    .line 594
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;)V

    const-string v2, "downloadContainerLocked_thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 617
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 618
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 619
    const-string v0, "GaGtmHelper"

    const-string v1, "Calling callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;->onContainerLoaded(Z)V

    goto :goto_0
.end method
