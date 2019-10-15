.class final Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmojiUsageDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseCustodian"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "EmojiUsageFrequency"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE EmojiUsageFrequency ( emoji string primary key not null, usage integer)"

.field private static final SQL_DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS EmojiUsageFrequency"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    const-string v0, "EmojiUsageFrequency"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 169
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;->mContext:Landroid/content/Context;

    .line 170
    return-void
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDirectBootUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Creating the database failed!"

    invoke-direct {v2, v3, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 203
    :cond_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error creating the database during direct boot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 175
    :try_start_0
    const-string v1, "CREATE TABLE EmojiUsageFrequency ( emoji string primary key not null, usage integer)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 184
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS EmojiUsageFrequency"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    const-string v1, "CREATE TABLE EmojiUsageFrequency ( emoji string primary key not null, usage integer)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
