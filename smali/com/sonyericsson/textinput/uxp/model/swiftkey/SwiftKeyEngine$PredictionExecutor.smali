.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PredictionExecutor"
.end annotation


# instance fields
.field private mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2672
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;

    .prologue
    .line 2671
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;-><init>()V

    return-void
.end method

.method private cancel(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z
    .locals 2
    .param p1, "asyncTask"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    .prologue
    .line 2720
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->cancel(Z)Z

    move-result v0

    .line 2725
    .local v0, "isCancelled":Z
    return v0
.end method

.method private cancelInactiveTask(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z
    .locals 2
    .param p1, "asyncTask"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    .prologue
    .line 2715
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 2716
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->cancel(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTaskInactive(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z
    .locals 2
    .param p1, "asyncTask"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    .prologue
    .line 2711
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancelAllActiveTasks()V
    .locals 1

    .prologue
    .line 2732
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->cancelInactiveTask(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z

    .line 2733
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->cancelInactiveTask(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2734
    monitor-exit p0

    return-void

    .line 2732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOtherTaskPending(Landroid/os/AsyncTask;)Z
    .locals 1
    .param p1, "asyncTask"    # Landroid/os/AsyncTask;

    .prologue
    .line 2752
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->isTaskInactive(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    .line 2753
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->isTaskInactive(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTaskPending()Z
    .locals 1

    .prologue
    .line 2742
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->isTaskInactive(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->isTaskInactive(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)V
    .locals 5
    .param p1, "asyncTask"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2679
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->cancelInactiveTask(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 2681
    .local v1, "nextTaskWasRunning":Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    if-eqz v3, :cond_4

    .line 2682
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getPredictionData()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPredictionType()Lcom/sonyericsson/ned/controller/PredictionType;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/ned/controller/PredictionType;->TRACE:Lcom/sonyericsson/ned/controller/PredictionType;

    if-eq v3, v4, :cond_2

    .line 2683
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->cancelInactiveTask(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2695
    .local v0, "activeTaskWasRunning":Z
    :goto_1
    if-nez v0, :cond_6

    .line 2696
    if-nez v1, :cond_5

    .line 2697
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    .line 2698
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    .line 2707
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2708
    monitor-exit p0

    return-void

    .end local v0    # "activeTaskWasRunning":Z
    .end local v1    # "nextTaskWasRunning":Z
    :cond_0
    move v1, v2

    .line 2679
    goto :goto_0

    .restart local v1    # "nextTaskWasRunning":Z
    :cond_1
    move v0, v2

    .line 2683
    goto :goto_1

    .line 2689
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_3

    .restart local v0    # "activeTaskWasRunning":Z
    :goto_3
    goto :goto_1

    .end local v0    # "activeTaskWasRunning":Z
    :cond_3
    move v0, v2

    goto :goto_3

    .line 2692
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "activeTaskWasRunning":Z
    goto :goto_1

    .line 2700
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mActiveTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    .line 2701
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2679
    .end local v0    # "activeTaskWasRunning":Z
    .end local v1    # "nextTaskWasRunning":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2704
    .restart local v0    # "activeTaskWasRunning":Z
    .restart local v1    # "nextTaskWasRunning":Z
    :cond_6
    :try_start_2
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->mNextTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
