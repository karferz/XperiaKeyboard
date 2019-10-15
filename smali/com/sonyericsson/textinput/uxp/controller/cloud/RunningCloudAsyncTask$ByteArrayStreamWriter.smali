.class final Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;
.super Ljava/lang/Object;
.source "RunningCloudAsyncTask.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/StreamWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArrayStreamWriter"
.end annotation


# instance fields
.field private mFileData:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "fileData"    # [B

    .prologue
    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1143
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;->mFileData:[B

    .line 1144
    return-void
.end method


# virtual methods
.method public writeToOutputStream(Ljava/io/OutputStream;)Z
    .locals 5
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v4, 0x0

    .line 1149
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;->mFileData:[B

    if-eqz v3, :cond_0

    .line 1150
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;->mFileData:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1151
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1152
    .local v0, "b":I
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1153
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1154
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 1162
    .end local v0    # "b":I
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_0
    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;->mFileData:[B

    .line 1164
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1157
    :catch_0
    move-exception v1

    .line 1158
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    const/4 v3, 0x0

    .line 1162
    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;->mFileData:[B

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;->mFileData:[B

    throw v3
.end method
