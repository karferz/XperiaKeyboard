.class final Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayedUpdateRunnable"
.end annotation


# instance fields
.field private mCandidateBarItemsInfo:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

.field private final mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

.field private final mDelayedUpdateLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPending:Z

.field private mType:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Landroid/os/Handler;)V
    .locals 1
    .param p2, "candidateView"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mDelayedUpdateLock:Ljava/lang/Object;

    .line 1364
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 1365
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mHandler:Landroid/os/Handler;

    .line 1366
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    return-object v0
.end method

.method private fireCandidateChangeDone()V
    .locals 2

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1426
    return-void
.end method

.method private init(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V
    .locals 0
    .param p1, "type"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;
    .param p2, "candidateBarItemsInfo"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mType:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    .line 1395
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mCandidateBarItemsInfo:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .line 1396
    return-void
.end method


# virtual methods
.method public removeScheduledUpdate()V
    .locals 2

    .prologue
    .line 1387
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mDelayedUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1388
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mIsPending:Z

    .line 1390
    monitor-exit v1

    .line 1391
    return-void

    .line 1390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1400
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mDelayedUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1401
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mIsPending:Z

    if-eqz v0, :cond_1

    .line 1402
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$800(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mType:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->NEW:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mCandidateBarItemsInfo:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$900(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 1408
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mIsPending:Z

    .line 1410
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->fireCandidateChangeDone()V

    .line 1412
    :cond_1
    monitor-exit v1

    .line 1413
    return-void

    .line 1412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleDelayedUpdate(ILcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V
    .locals 6
    .param p1, "animationDelay"    # I
    .param p2, "newType"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;
    .param p3, "newInfo"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .prologue
    .line 1370
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mDelayedUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1371
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mIsPending:Z

    if-eqz v0, :cond_1

    .line 1372
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mCandidateBarItemsInfo:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    if-eqz v0, :cond_0

    .line 1373
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->isClearCandidates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mCandidateBarItemsInfo:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .line 1374
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->isClearCandidates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    monitor-exit v1

    .line 1384
    :goto_0
    return-void

    .line 1378
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->removeScheduledUpdate()V

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$700(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    move-result-object v0

    invoke-direct {v0, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->init(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 1381
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$700(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    move-result-object v2

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->mIsPending:Z

    .line 1383
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
