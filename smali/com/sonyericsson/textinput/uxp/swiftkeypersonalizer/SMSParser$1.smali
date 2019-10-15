.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;
.super Landroid/os/AsyncTask;
.source "SMSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 36
    :try_start_0
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 37
    .local v1, "smsURI":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "body"

    aput-object v4, v2, v3

    const-string v3, "person is NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 41
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 43
    const/4 v8, 0x0

    .line 44
    .local v8, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 46
    .local v10, "total":I
    if-nez v10, :cond_2

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->publishProgress([Ljava/lang/Object;)V

    .line 82
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 101
    .end local v1    # "smsURI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "index":I
    .end local v10    # "total":I
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 53
    .restart local v1    # "smsURI":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "index":I
    .restart local v10    # "total":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "msgText":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addSequence(Ljava/lang/String;Landroid/content/Context;)V

    .line 64
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 65
    rem-int/lit8 v0, v8, 0xa

    if-nez v0, :cond_2

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 89
    .end local v1    # "smsURI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "index":I
    .end local v9    # "msgText":Ljava/lang/String;
    .end local v10    # "total":I
    :catch_0
    move-exception v7

    .line 91
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error building SMS query!"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 70
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "smsURI":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "index":I
    .restart local v10    # "total":I
    :cond_4
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->publishProgress([Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->isCancelled()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :try_start_2
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->writeDynamicModel()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 76
    :catch_1
    move-exception v7

    .line 77
    .local v7, "e":Ljava/io/IOException;
    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->publishProgress([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 94
    .end local v1    # "smsURI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "index":I
    .end local v10    # "total":I
    :catch_2
    move-exception v7

    .line 97
    .local v7, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SMS read permission denied!"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->onComplete()V

    .line 112
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->onProgress(II)V

    .line 107
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
