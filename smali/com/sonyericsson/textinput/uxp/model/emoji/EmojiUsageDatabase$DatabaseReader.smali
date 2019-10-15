.class final Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;
.super Landroid/os/AsyncTask;
.source "EmojiUsageDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Lcom/sonyericsson/ned/model/CodePointString;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReadListener:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "readListener"    # Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;->mReadListener:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;

    .line 233
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;->mContext:Landroid/content/Context;

    .line 234
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 12
    .param p1, "parameters"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 238
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v11, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->access$100(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;

    move-result-object v2

    .line 240
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 241
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 242
    const-string v2, "EmojiUsageFrequency"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 245
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 249
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 251
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;->mReadListener:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;->onDataReady(Ljava/util/Map;)V

    .line 257
    return-void
.end method
