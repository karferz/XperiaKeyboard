.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;
.super Ljava/lang/Object;
.source "HttpCloudConnectionUtil.java"


# static fields
.field private static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final BASEURI:Ljava/lang/String; = "https://xperiakeyboard.sonymobile.com/api/"

.field private static final BASIC:Ljava/lang/String; = "Basic "

.field private static final BOUNDARY:Ljava/lang/String; = "*****"

.field public static final CLEAR_SYNCED_DATA:Ljava/lang/String; = "/clearSyncedData/"

.field private static final CONNECTION:Ljava/lang/String; = "Connection"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field private static final DEBUG:Z = false

.field public static final DELETE_USER_DATA_CALL:Ljava/lang/String; = "/deleteUserData/"

.field public static final EMPTY_ACCESS_TOKEN:Ljava/lang/String; = "EMPTY"

.field private static final ENCTYPE:Ljava/lang/String; = "ENCTYPE"

.field private static final GET:Ljava/lang/String; = "GET"

.field public static final GET_DELTA_SINCE_CALL:Ljava/lang/String; = "/getDeltaSince/"

.field public static final GET_DELTA_SINCE_CONT_CALL:Ljava/lang/String; = "/getDeltaSinceCont/"

.field public static final GET_DEVICE_LIST_CALL:Ljava/lang/String; = "/getOtherDevices/"

.field public static final GET_DYNAMIC_MODEL_CALL:Ljava/lang/String; = "/getDynamicModel/"

.field public static final GET_REFRESH_TOKEN_CALL:Ljava/lang/String; = "/renewRefreshToken/"

.field public static final GET_TOKEN_CALL:Ljava/lang/String; = "/generateTokensV2/"

.field private static final KEEP_ALIVE:Ljava/lang/String; = "Keep-Alive"

.field private static final MAX_REQUEST_TIME:I = 0x11170

.field private static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final MULTIPART_FORM_DATA_BOUNTARY:Ljava/lang/String; = "multipart/form-data;boundary="

.field private static final POST:Ljava/lang/String; = "POST"

.field public static final POST_DYNAMIC_MODEL_CALL:Ljava/lang/String; = "/postDynamicModel/"

.field public static final POST_MESSAGES_CALL:Ljava/lang/String; = "/postMessages/"

.field private static final PUT:Ljava/lang/String; = "PUT"

.field public static final RENEW_ACCESS_TOKEN_CALL:Ljava/lang/String; = "/renewAccessToken/"

.field private static final SERVICE_PASSWORD:Ljava/lang/String; = "4EBA3ObcLy6XyiI2YnrXw"

.field private static final SERVICE_USER:Ljava/lang/String; = "W5wFuuFTbpn5LEeqUTDow"

.field private static final TAG:Ljava/lang/String; = "TI_HttpConnectionUtil"

.field public static final UNREGISTER_DEVICE_CALL:Ljava/lang/String; = "/unregisterDevice/"

.field public static final UNREGISTER_USER_CALL:Ljava/lang/String; = "/unregisterUser/"

.field private static final UPLOADED_FILE:Ljava/lang/String; = "uploaded_file"

.field private static final USE_DEBUG_SERVER:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static buildCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static downloadFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)[B
    .locals 8
    .param p0, "httpConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 293
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 294
    .local v4, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 297
    .local v2, "downloadedFileAsByteArray":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 299
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 300
    .local v0, "b":I
    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 301
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 302
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 309
    if-eqz v4, :cond_1

    .line 310
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_1
    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    .end local v0    # "b":I
    :cond_2
    :goto_1
    return-object v2

    .line 315
    .restart local v0    # "b":I
    :catch_0
    move-exception v3

    .line 316
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "TI_HttpConnectionUtil"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 305
    .end local v0    # "b":I
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 306
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "TI_HttpConnectionUtil"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    if-eqz v4, :cond_3

    .line 310
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_3
    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 315
    :catch_2
    move-exception v3

    .line 316
    const-string v5, "TI_HttpConnectionUtil"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 308
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 309
    if-eqz v4, :cond_4

    .line 310
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_4
    if-eqz v1, :cond_5

    .line 313
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 317
    :cond_5
    :goto_2
    throw v5

    .line 315
    :catch_3
    move-exception v3

    .line 316
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "TI_HttpConnectionUtil"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getFileFromServerRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)[B
    .locals 6
    .param p0, "serverPath"    # Ljava/lang/String;
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "model":[B
    const/4 v1, 0x0

    .line 102
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v3, "GET"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->setHttpConnectionContraints(Ljava/lang/String;Ljava/lang/String;ZZLjavax/net/ssl/SSLContext;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 106
    const-string v3, ""

    invoke-static {v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->downloadFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 111
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 115
    :cond_0
    :goto_0
    return-object v2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 109
    :try_start_1
    const-string v3, "TI_HttpConnectionUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v3
.end method

.method public static isErrorResponse(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .prologue
    .line 460
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x257

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuccessResponse(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .prologue
    .line 449
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static postFileUploadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/StreamWriter;Ljavax/net/ssl/SSLContext;)Z
    .locals 8
    .param p0, "serverPath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "streamWriter"    # Lcom/sonyericsson/textinput/uxp/model/StreamWriter;
    .param p3, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 133
    .local v2, "success":Z
    :try_start_0
    const-string v5, "PUT"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {p0, v5, v6, v7, p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->setHttpConnectionContraints(Ljava/lang/String;Ljava/lang/String;ZZLjavax/net/ssl/SSLContext;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 134
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 135
    const-string v5, "Connection"

    const-string v6, "Keep-Alive"

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v5, "ENCTYPE"

    const-string v6, "multipart/form-data"

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v5, "Content-Type"

    const-string v6, "multipart/form-data;boundary=*****"

    .line 138
    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v5, "uploaded_file"

    invoke-virtual {v1, v5, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 143
    invoke-static {v1, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->uploadFile(Ljava/net/HttpURLConnection;Lcom/sonyericsson/textinput/uxp/model/StreamWriter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    move v2, v3

    .line 151
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 155
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v2, v4

    .line 144
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "TI_HttpConnectionUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "Failed to post file to server"

    :goto_2
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 148
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_2

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 152
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v3
.end method

.method private static read(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 10
    .param p0, "httpConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 377
    const/4 v4, 0x0

    .line 378
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 381
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 382
    .local v2, "inStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Lcom/sonyericsson/ned/util/SemcTextUtil;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    const-string v3, ""

    .line 385
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 386
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 389
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 390
    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v7, "TI_HttpConnectionUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    :try_start_3
    const-string v7, "TI_HttpConnectionUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "httpConnection read error, response code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 393
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 392
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    :goto_2
    if-eqz v4, :cond_0

    .line 399
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 405
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    return-object v6

    .line 388
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 397
    if-eqz v5, :cond_3

    .line 399
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v4, v5

    .line 402
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 400
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 401
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "TI_HttpConnectionUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 402
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 400
    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 401
    const-string v7, "TI_HttpConnectionUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 397
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_2

    .line 399
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 402
    :cond_2
    :goto_5
    throw v7

    .line 400
    :catch_3
    move-exception v1

    .line 401
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "TI_HttpConnectionUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 397
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 394
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_2

    .line 389
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    goto :goto_1

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static sendGetRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Landroid/util/Pair;
    .locals 8
    .param p0, "serverPath"    # Ljava/lang/String;
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLContext;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, "response":Ljava/lang/String;
    const/4 v4, 0x0

    .line 169
    .local v4, "resultCode":I
    const/4 v2, 0x0

    .line 171
    .local v2, "httpConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v5, "GET"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->setHttpConnectionContraints(Ljava/lang/String;Ljava/lang/String;ZZLjavax/net/ssl/SSLContext;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 174
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->read(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v3

    .line 175
    const/16 v5, 0xc8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 180
    const/4 v3, 0x0

    .line 183
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 195
    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 199
    :cond_1
    :goto_0
    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 186
    if-eqz v2, :cond_2

    .line 188
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 193
    :cond_2
    :goto_1
    :try_start_2
    const-string v5, "TI_HttpConnectionUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 189
    :catch_1
    move-exception v1

    .line 190
    .local v1, "e1":Ljava/io/IOException;
    :try_start_3
    const-string v5, "TI_HttpConnectionUtil"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 195
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 196
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v5
.end method

.method public static sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Z
    .locals 7
    .param p0, "serverPath"    # Ljava/lang/String;
    .param p1, "requestbody"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    const/4 v3, 0x1

    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 215
    .local v2, "success":Z
    :try_start_0
    const-string v4, "POST"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->setHttpConnectionContraints(Ljava/lang/String;Ljava/lang/String;ZZLjavax/net/ssl/SSLContext;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 216
    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 219
    invoke-static {p1, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->write(Ljava/lang/String;Ljava/net/HttpURLConnection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    move v2, v3

    .line 221
    :goto_0
    if-nez v2, :cond_0

    .line 228
    :cond_0
    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 232
    :cond_1
    :goto_1
    return v2

    .line 220
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "TI_HttpConnectionUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v3
.end method

.method public static sendPostRequestWithResponseBody(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Ljava/lang/String;
    .locals 6
    .param p0, "serverPath"    # Ljava/lang/String;
    .param p1, "requestbody"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, "response":Ljava/lang/String;
    const/4 v1, 0x0

    .line 248
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v3, "POST"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->setHttpConnectionContraints(Ljava/lang/String;Ljava/lang/String;ZZLjavax/net/ssl/SSLContext;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 249
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 251
    invoke-static {p1, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->write(Ljava/lang/String;Ljava/net/HttpURLConnection;)Z

    .line 252
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->read(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 258
    const/4 v2, 0x0

    .line 264
    :cond_0
    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 268
    :cond_1
    :goto_0
    return-object v2

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "TI_HttpConnectionUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v3
.end method

.method private static setHttpConnectionContraints(Ljava/lang/String;Ljava/lang/String;ZZLjavax/net/ssl/SSLContext;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p0, "serverPath"    # Ljava/lang/String;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p2, "doInput"    # Z
    .param p3, "doOutPut"    # Z
    .param p4, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0x11170

    .line 277
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 279
    .local v0, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 281
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 282
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 283
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 284
    const-string v2, "W5wFuuFTbpn5LEeqUTDow"

    const-string v3, "4EBA3ObcLy6XyiI2YnrXw"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->setRequestPropertyAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    move-object v2, v0

    .line 286
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v2, p4}, Lcom/sonyericsson/textinput/uxp/util/SSLUtils;->setSSL(Ljavax/net/ssl/HttpsURLConnection;Ljavax/net/ssl/SSLContext;)V

    .line 288
    return-object v0
.end method

.method private static setRequestPropertyAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 5
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "httpConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 353
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->buildCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "credential":Ljava/lang/String;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/ned/util/SemcTextUtil;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x2

    .line 354
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private static uploadFile(Ljava/net/HttpURLConnection;Lcom/sonyericsson/textinput/uxp/model/StreamWriter;)Z
    .locals 7
    .param p0, "httpConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "streamWriter"    # Lcom/sonyericsson/textinput/uxp/model/StreamWriter;

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "dataOutputStream":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .line 326
    .local v3, "success":Z
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .local v1, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-interface {p1, v1}, Lcom/sonyericsson/textinput/uxp/model/StreamWriter;->writeToOutputStream(Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 333
    if-eqz v1, :cond_0

    .line 334
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 335
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 341
    .end local v1    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    :cond_1
    :goto_0
    return v3

    .line 337
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v1    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "TI_HttpConnectionUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 340
    .end local v1    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    goto :goto_0

    .line 329
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 330
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    if-eqz v0, :cond_1

    .line 334
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 335
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 337
    :catch_2
    move-exception v2

    .line 338
    const-string v4, "TI_HttpConnectionUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 332
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 333
    :goto_2
    if-eqz v0, :cond_2

    .line 334
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 335
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 339
    :cond_2
    :goto_3
    throw v4

    .line 337
    :catch_3
    move-exception v2

    .line 338
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "TI_HttpConnectionUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 332
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 329
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v1    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method private static write(Ljava/lang/String;Ljava/net/HttpURLConnection;)Z
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "httpConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 416
    const/4 v2, 0x0

    .line 417
    .local v2, "writer":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 419
    .local v1, "success":Z
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .end local v2    # "writer":Ljava/io/OutputStream;
    .local v3, "writer":Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Lcom/sonyericsson/ned/util/SemcTextUtil;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 421
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 422
    const/4 v1, 0x1

    .line 431
    if-eqz v3, :cond_2

    .line 433
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 439
    .end local v3    # "writer":Ljava/io/OutputStream;
    .restart local v2    # "writer":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return v1

    .line 434
    .end local v2    # "writer":Ljava/io/OutputStream;
    .restart local v3    # "writer":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "TI_HttpConnectionUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 436
    .end local v3    # "writer":Ljava/io/OutputStream;
    .restart local v2    # "writer":Ljava/io/OutputStream;
    goto :goto_0

    .line 423
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 424
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "TI_HttpConnectionUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    :try_start_4
    const-string v4, "TI_HttpConnectionUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "httpConnection write error, response code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 427
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 426
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 431
    :goto_2
    if-eqz v2, :cond_0

    .line 433
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 434
    :catch_2
    move-exception v0

    .line 435
    const-string v4, "TI_HttpConnectionUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 431
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_1

    .line 433
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 436
    :cond_1
    :goto_4
    throw v4

    .line 434
    :catch_3
    move-exception v0

    .line 435
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "TI_HttpConnectionUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 431
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/OutputStream;
    .restart local v3    # "writer":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/OutputStream;
    .restart local v2    # "writer":Ljava/io/OutputStream;
    goto :goto_3

    .line 428
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    goto :goto_2

    .line 423
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/OutputStream;
    .restart local v3    # "writer":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/OutputStream;
    .restart local v2    # "writer":Ljava/io/OutputStream;
    goto :goto_1

    .end local v2    # "writer":Ljava/io/OutputStream;
    .restart local v3    # "writer":Ljava/io/OutputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/OutputStream;
    .restart local v2    # "writer":Ljava/io/OutputStream;
    goto :goto_0
.end method
