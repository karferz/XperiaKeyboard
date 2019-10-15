.class Lcom/sonyericsson/textinput/uxp/test/TestService$EmojiUsageDatabaseHelper;
.super Ljava/lang/Object;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiUsageDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x1

.field private static final EMOJI_COLUMN_NAME:Ljava/lang/String; = "emoji"

.field private static final EMOJI_USAGE_DATABASE_NAME:Ljava/lang/String; = "EmojiUsageFrequency"

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE EmojiUsageFrequency ( emoji string primary key not null, usage integer)"

.field private static final SQL_DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS EmojiUsageFrequency"

.field private static final TABLE_NAME:Ljava/lang/String; = "EmojiUsageFrequency"

.field private static final USAGE_COLUMN_NAME:Ljava/lang/String; = "usage"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetDatabase(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 337
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$EmojiUsageDatabaseHelper$1;

    const-string v2, "EmojiUsageFrequency"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/test/TestService$EmojiUsageDatabaseHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 351
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$EmojiUsageDatabaseHelper$1;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 352
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DROP TABLE IF EXISTS EmojiUsageFrequency"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v1, "CREATE TABLE EmojiUsageFrequency ( emoji string primary key not null, usage integer)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 355
    return-void
.end method
