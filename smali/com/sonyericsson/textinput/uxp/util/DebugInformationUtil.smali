.class public final Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;
.super Ljava/lang/Object;
.source "DebugInformationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    }
.end annotation


# static fields
.field private static final ONE_MEGA_BYTE:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;->ONE_MEGA_BYTE:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static varargs createFileInfo([Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "fi":Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    array-length v1, p0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 108
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;

    .end local v0    # "fi":Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    aget-object v1, p0, v3

    aget-object v2, p0, v4

    aget-object v3, p0, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v5, p0, v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$1;)V

    .line 113
    .restart local v0    # "fi":Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    array-length v1, p0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 110
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;

    .end local v0    # "fi":Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    aget-object v1, p0, v3

    aget-object v2, p0, v4

    aget-object v3, p0, v5

    aget-object v4, p0, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, p0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, p0, v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$1;)V

    .restart local v0    # "fi":Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
    goto :goto_0
.end method

.method public static getAllFileInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v4, 0x0

    .line 44
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 45
    .local v3, "process":Ljava/lang/Process;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "fileInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ls -l "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 48
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 49
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 52
    const-string v6, "\\s+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;->createFileInfo([Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 55
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 56
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 61
    :cond_0
    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v1

    .line 54
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    if-eqz v5, :cond_3

    .line 59
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 61
    :cond_3
    if-eqz v3, :cond_6

    .line 62
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 58
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_4

    .line 59
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 61
    :cond_4
    if-eqz v3, :cond_5

    .line 62
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_5
    throw v6

    .line 58
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 55
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_6
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getAppUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 79
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "system/bin/sh"

    aput-object v7, v0, v8

    const/4 v7, 0x1

    const-string v8, "-c"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ps | grep "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 80
    .local v0, "cmd":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 81
    .local v4, "reader":Ljava/io/BufferedReader;
    const-string v6, ""

    .line 82
    .local v6, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 84
    .local v3, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 85
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 86
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 89
    const-string v7, "\\s+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 91
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    if-eqz v5, :cond_1

    .line 96
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 98
    :cond_1
    if-eqz v3, :cond_6

    .line 99
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    move-object v4, v5

    .line 102
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-object v6

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    if-eqz v4, :cond_3

    .line 96
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 98
    :cond_3
    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_4

    .line 96
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 98
    :cond_4
    if-eqz v3, :cond_5

    .line 99
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_5
    throw v7

    .line 95
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 92
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_6
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public static getFreeDiskSpace()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 122
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "statFs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;->ONE_MEGA_BYTE:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public static getTotalDiskSpace()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 132
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "statFs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;->ONE_MEGA_BYTE:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method
