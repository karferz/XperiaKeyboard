.class public final Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
.super Ljava/lang/Object;
.source "UnsyncedMessagesDatabase.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;,
        Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;,
        Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseClearer;,
        Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCloser;,
        Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCustodian;,
        Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$Factory;
    }
.end annotation


# static fields
.field private static final DATE_COLUMN_NAME:Ljava/lang/String; = "date"

.field private static final ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final MAXIMUM_NUMBER_OF_ROWS:Ljava/lang/String; = "2000"

.field private static final MESSAGE_COLUMN_NAME:Ljava/lang/String; = "message"

.field private static final SQL_INSERT_FORMAT_STRING:Ljava/lang/String; = "INSERT INTO UnsyncedMessages (message, date) VALUES (?, ?);"

.field private static final TABLE_NAME:Ljava/lang/String; = "UnsyncedMessages"

.field private static final TAG:Ljava/lang/String;

.field private static volatile sDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static final sDatabaseExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mInsertStatement:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->TAG:Ljava/lang/String;

    .line 74
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabaseExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->closeDatabase()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->clearDatabaseInternal(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->getInsertStatement(Landroid/content/Context;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private clearDatabaseInternal(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "DELETE FROM UnsyncedMessages"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/database/SQLException;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private closeDatabase()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    :cond_0
    return-void
.end method

.method private getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCustodian;

    invoke-direct {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCustodian;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCustodian;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private getInsertStatement(Landroid/content/Context;)Landroid/database/sqlite/SQLiteStatement;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "INSERT INTO UnsyncedMessages (message, date) VALUES (?, ?);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/database/SQLException;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->TAG:Ljava/lang/String;

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
    .line 84
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
    .line 89
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public clearDatabase(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabaseExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseClearer;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseClearer;-><init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabaseExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCloser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCloser;-><init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    return-void
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
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public read(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;-><init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)V

    .line 155
    .local v0, "databaseReader":Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabaseExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseReader;->waitForResult()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public write(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->sDatabaseExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseWriter;-><init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    :cond_0
    return-void
.end method
