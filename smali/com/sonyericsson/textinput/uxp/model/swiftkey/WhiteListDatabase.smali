.class public final Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;
.super Ljava/lang/Object;
.source "WhiteListDatabase.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseClearer;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$Factory;
    }
.end annotation


# static fields
.field private static final SQL_INSERT_FORMAT_STRING:Ljava/lang/String; = "INSERT INTO WhiteList (word) VALUES (?);"

.field private static final TABLE_NAME:Ljava/lang/String; = "WhiteList"

.field private static final TAG:Ljava/lang/String; = "TI_WhiteListDatabase"

.field private static final WORD_COLUMN_NAME:Ljava/lang/String; = "word"

.field private static sDatabase:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;

.field private static final sDatabaseExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mInsertStatement:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->sDatabaseExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->clearDatabaseInternal(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;Landroid/content/Context;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->getInsertStatement(Landroid/content/Context;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method private clearDatabaseInternal(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->getDatabase(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "DELETE FROM WhiteList"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "TI_WhiteListDatabase"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static declared-synchronized getDatabase(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 74
    const-class v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->sDatabase:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->sDatabase:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;

    .line 77
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->sDatabase:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getInsertStatement(Landroid/content/Context;)Landroid/database/sqlite/SQLiteStatement;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 116
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->getDatabase(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "INSERT INTO WhiteList (word) VALUES (?);"

    .line 117
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "TI_WhiteListDatabase"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public clearDatabase(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->sDatabaseExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseClearer;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseClearer;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public getAllWords(Landroid/content/Context;)[Ljava/lang/String;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const/4 v10, 0x0

    .line 165
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 167
    .local v14, "whiteListedWords":[Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->getDatabase(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "WhiteList"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "word"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 169
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 170
    .local v13, "numberOfWords":I
    new-array v14, v13, [Ljava/lang/String;

    .line 171
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 172
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 173
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v12

    .line 174
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 180
    :cond_0
    if-eqz v10, :cond_1

    .line 181
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 184
    .end local v12    # "i":I
    .end local v13    # "numberOfWords":I
    :cond_1
    :goto_1
    return-object v14

    .line 177
    :catch_0
    move-exception v11

    .line 178
    .local v11, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "TI_WhiteListDatabase"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-eqz v10, :cond_1

    .line 181
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 180
    .end local v11    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 181
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasWord(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v10, 0x0

    .line 142
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->getDatabase(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseCustodian;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "WhiteList"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "word =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\';"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 144
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 149
    :goto_0
    if-eqz v10, :cond_0

    .line 150
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_0
    :goto_1
    return v0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v11

    .line 147
    .local v11, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "TI_WhiteListDatabase"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-eqz v10, :cond_2

    .line 150
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 149
    .end local v11    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    .line 150
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public putWord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;Ljava/lang/String;Landroid/content/Context;)V

    .line 159
    .local v0, "databaseWriter":Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseWriter;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->sDatabaseExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method
