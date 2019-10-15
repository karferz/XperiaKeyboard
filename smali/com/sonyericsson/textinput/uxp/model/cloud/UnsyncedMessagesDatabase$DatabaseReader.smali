.class final Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;
.super Ljava/lang/Object;
.source "UnsyncedMessagesDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseReader"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mJobComplete:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mLock:Ljava/lang/Object;

    .line 327
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mMessages:Ljava/util/List;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mJobComplete:Z

    .line 336
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mContext:Landroid/content/Context;

    .line 337
    return-void
.end method


# virtual methods
.method public jobComplete()V
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mJobComplete:Z

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 381
    monitor-exit v1

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 341
    const/4 v10, 0x0

    .line 343
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->access$500(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "UnsyncedMessages"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "id DESC"

    const-string v9, "2000"

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 345
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mMessages:Ljava/util/List;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v11

    .line 349
    .local v11, "e":Landroid/database/SQLException;
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    if-eqz v10, :cond_0

    .line 352
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 355
    .end local v11    # "e":Landroid/database/SQLException;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->jobComplete()V

    .line 356
    return-void

    .line 351
    :cond_1
    if-eqz v10, :cond_0

    .line 352
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 351
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 352
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public waitForResult()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mJobComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 368
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0

    .line 373
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->mMessages:Ljava/util/List;

    return-object v0

    .line 373
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
