.class Lcom/touchtype_fluency/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/touchtype_fluency/util/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype_fluency/util/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/File;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 16
    if-eqz v5, :cond_5

    .line 17
    array-length v6, v5

    move v4, v2

    move v3, v1

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v7, v5, v4

    .line 21
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_2

    move v0, v1

    .line 22
    :goto_1
    if-eqz v0, :cond_0

    .line 23
    sget-object v8, Lcom/touchtype_fluency/util/a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "empty file for: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    and-int/2addr v0, v3

    .line 27
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    invoke-static {v7}, Lcom/touchtype_fluency/util/a;->a(Ljava/io/File;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 17
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 21
    goto :goto_1

    :cond_3
    move v0, v2

    .line 26
    goto :goto_2

    :cond_4
    move v2, v3

    .line 37
    :cond_5
    return v2
.end method
