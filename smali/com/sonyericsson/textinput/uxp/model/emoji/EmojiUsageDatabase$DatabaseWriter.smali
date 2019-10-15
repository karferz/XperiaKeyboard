.class final Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseWriter;
.super Ljava/lang/Object;
.source "EmojiUsageDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseWriter"
.end annotation


# static fields
.field private static final SQL_REPLACE_FORMAT_STRING:Ljava/lang/String; = "INSERT OR REPLACE INTO EmojiUsageFrequency (emoji, usage) VALUES (\'%2$s\', %1$s);"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUsageData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "usageData":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseWriter;->mUsageData:Ljava/util/Map;

    .line 294
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseWriter;->mContext:Landroid/content/Context;

    .line 295
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 299
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseWriter;->mUsageData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/ned/model/CodePointString;

    .line 301
    .local v2, "emoji":Lcom/sonyericsson/ned/model/CodePointString;
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->access$100(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;

    move-result-object v4

    .line 302
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 303
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 304
    const-string v4, "INSERT OR REPLACE INTO EmojiUsageFrequency (emoji, usage) VALUES (\'%2$s\', %1$s);"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseWriter;->mUsageData:Ljava/util/Map;

    .line 305
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 304
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Landroid/database/SQLException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error writing to database"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 311
    .end local v1    # "e":Landroid/database/SQLException;
    .end local v2    # "emoji":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    return-void
.end method
