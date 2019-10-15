.class final Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;
.super Ljava/lang/Object;
.source "WhiteListDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseWriter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWord:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;->mWord:Ljava/lang/String;

    .line 288
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;->mContext:Landroid/content/Context;

    .line 289
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 293
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;Landroid/content/Context;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 295
    .local v1, "insertStatement":Landroid/database/sqlite/SQLiteStatement;
    if-nez v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;->mWord:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 300
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v2, "TI_WhiteListDatabase"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    throw v2
.end method
