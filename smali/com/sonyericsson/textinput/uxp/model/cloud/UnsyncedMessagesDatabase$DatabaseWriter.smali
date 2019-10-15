.class final Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;
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
    name = "DatabaseWriter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;->this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;->mMessage:Ljava/lang/String;

    .line 297
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;->mContext:Landroid/content/Context;

    .line 298
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 302
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;->this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->access$400(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 304
    .local v1, "insertStatement":Landroid/database/sqlite/SQLiteStatement;
    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 309
    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 310
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    throw v2
.end method
