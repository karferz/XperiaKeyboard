.class public final Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySDKDiagnostics;
.super Ljava/lang/Object;
.source "SwiftKeySDKDiagnostics.java"


# static fields
.field private static final NLONG_DEBUG:I = 0xfa0

.field public static final TAG:Ljava/lang/String; = "TI_SKSDK_Diag"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static getCharLayout(Lcom/touchtype_fluency/Session;)Ljava/lang/String;
    .locals 10
    .param p0, "session"    # Lcom/touchtype_fluency/Session;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/InputMapper;->getLayout()Ljava/util/Map;

    move-result-object v2

    .line 103
    .local v2, "layout":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 104
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "{"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "character":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 109
    .local v5, "variants":[Ljava/lang/String;
    array-length v8, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v4, v5, v6

    .line 110
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 113
    .end local v4    # "string":Ljava/lang/String;
    :cond_0
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 115
    .end local v1    # "character":Ljava/lang/String;
    .end local v5    # "variants":[Ljava/lang/String;
    :cond_1
    const-string v6, "}"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getKeyPressModel(Lcom/touchtype_fluency/Session;)Ljava/lang/String;
    .locals 6
    .param p0, "session"    # Lcom/touchtype_fluency/Session;

    .prologue
    .line 147
    :try_start_0
    const-string v3, "SKSDK_Diag"

    const-string v4, ".json"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 148
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 149
    invoke-interface {p0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V

    .line 150
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySDKDiagnostics;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 156
    .end local v2    # "tmp":Ljava/io/File;
    :goto_0
    return-object v3

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 153
    const-string v3, "!ERROR!"

    goto :goto_0

    .line 154
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e2":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 156
    const-string v3, "!ERROR!"

    goto :goto_0
.end method

.method public static getPredictions(Lcom/touchtype_fluency/Session;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
    .locals 2
    .param p0, "session"    # Lcom/touchtype_fluency/Session;
    .param p1, "context"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "input"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "filter"    # Lcom/touchtype_fluency/ResultsFilter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogConditional"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method should not be called from a release build"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static logNonDefaultParameters(Lcom/touchtype_fluency/Session;)V
    .locals 15
    .param p0, "session"    # Lcom/touchtype_fluency/Session;

    .prologue
    .line 129
    invoke-interface {p0}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v1

    .line 130
    .local v1, "params":Lcom/touchtype_fluency/ParameterSet;
    invoke-interface {v1}, Lcom/touchtype_fluency/ParameterSet;->getTargets()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 131
    .local v3, "target":Ljava/lang/String;
    invoke-interface {v1, v3}, Lcom/touchtype_fluency/ParameterSet;->getProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_1

    aget-object v2, v8, v4

    .line 132
    .local v2, "property":Ljava/lang/String;
    invoke-interface {v1, v3, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 133
    .local v0, "p":Lcom/touchtype_fluency/Parameter;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 134
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->defaultValue()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 136
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    .line 133
    invoke-static {v10, v11}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 138
    const-string v10, "TI_SKSDK_Diag"

    const-string v11, "PARAMETER: %s:%s %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    .line 139
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    .line 138
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "p":Lcom/touchtype_fluency/Parameter;
    .end local v2    # "property":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 143
    .end local v3    # "target":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static logPerModelTags(Lcom/touchtype_fluency/Session;)V
    .locals 7
    .param p0, "session"    # Lcom/touchtype_fluency/Session;

    .prologue
    .line 120
    invoke-interface {p0}, Lcom/touchtype_fluency/Session;->getTags()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 121
    .local v0, "tag":Ljava/lang/String;
    const-string v4, "file:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    const-string v4, "TI_SKSDK_Diag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MODEL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v6

    invoke-interface {p0, v6}, Lcom/touchtype_fluency/Session;->getTags(Lcom/touchtype_fluency/TagSelector;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "tag":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static longDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogConditional"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    add-int/lit16 v1, v0, 0xfa0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    add-int/lit16 v0, v0, 0xfa0

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 163
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 164
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 165
    .local v6, "bb":Ljava/nio/MappedByteBuffer;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 167
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    return-object v1

    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local v6    # "bb":Ljava/nio/MappedByteBuffer;
    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v1
.end method
