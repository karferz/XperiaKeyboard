.class abstract Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.super Ljava/lang/Object;
.source "TestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ImeJob"
.end annotation


# instance fields
.field private mFailureMessage:Ljava/lang/String;

.field private volatile mJobComplete:Z

.field private final mLock:Ljava/lang/Object;

.field private mResult:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mLock:Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mResult:Z

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mResult:Z

    return v0
.end method


# virtual methods
.method protected dispose()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public getFailureMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mFailureMessage:Ljava/lang/String;

    return-object v0
.end method

.method public jobComplete()V
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mJobComplete:Z

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 291
    monitor-exit v1

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setFailureMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "failureMessage"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mFailureMessage:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mFailureMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected setJobResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mResult:Z

    .line 285
    return-void
.end method

.method protected setResultDependingOnDictionaries(Lcom/sonyericsson/textinput/uxp/test/TestHook;)V
    .locals 6
    .param p1, "testHook"    # Lcom/sonyericsson/textinput/uxp/test/TestHook;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 295
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    move-result-object v0

    .line 297
    .local v0, "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 299
    .local v1, "isInputViewShown":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->hasPredictiveEngine()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getLanguageController()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    move-result-object v4

    .line 302
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getActiveLanguages()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getLoadedLanguages()Ljava/util/Set;

    move-result-object v5

    .line 301
    invoke-static {v4, v5}, Lcom/sonyericsson/textinput/uxp/test/TestService;->isAllLanguagesLoaded(Ljava/util/ArrayList;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 303
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->setJobResult(Z)V

    .line 307
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->jobComplete()V

    .line 308
    return-void

    .end local v1    # "isInputViewShown":Z
    :cond_0
    move v1, v3

    .line 297
    goto :goto_0

    .line 305
    .restart local v1    # "isInputViewShown":Z
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->setJobResult(Z)V

    goto :goto_1
.end method

.method public waitForJobToComplete()Z
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mJobComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0

    .line 247
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->dispose()V

    .line 248
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mResult:Z

    return v0

    .line 248
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public waitForJobToComplete(I)Z
    .locals 4
    .param p1, "millis"    # I

    .prologue
    .line 260
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mJobComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mLock:Ljava/lang/Object;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 270
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mJobComplete:Z

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mResult:Z

    .line 271
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mJobComplete:Z

    if-nez v0, :cond_0

    .line 272
    const-string v0, "Timeout"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->setFailureMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mJobComplete:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0

    .line 278
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->dispose()V

    .line 279
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->mResult:Z

    return v0

    .line 279
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
