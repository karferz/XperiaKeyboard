.class Lcom/crashlytics/android/core/SessionProtobufHelper;
.super Ljava/lang/Object;
.source "SessionProtobufHelper.java"


# static fields
.field private static final SIGNAL_DEFAULT:Ljava/lang/String; = "0"

.field private static final SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

.field private static final UNITY_PLATFORM_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "0"

    .line 23
    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    .line 25
    const-string v0, "Unity"

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/SessionProtobufHelper;->UNITY_PLATFORM_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBinaryImageSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I
    .locals 4
    .param p0, "packageNameBytes"    # Lcom/crashlytics/android/core/ByteString;
    .param p1, "optionalBuildIdBytes"    # Lcom/crashlytics/android/core/ByteString;

    .prologue
    const-wide/16 v2, 0x0

    .line 461
    const/4 v0, 0x0

    .line 463
    .local v0, "size":I
    const/4 v1, 0x1

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    const/4 v1, 0x3

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    if-eqz p1, :cond_0

    .line 467
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_0
    return v0
.end method

.method private static getDeviceIdentifierSize(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I
    .locals 3
    .param p0, "type"    # Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 426
    const/4 v1, 0x1

    iget v2, p0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->protobufIndex:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    .line 427
    .local v0, "size":I
    const/4 v1, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    return v0
.end method

.method private static getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 574
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    .line 575
    .local v0, "size":I
    const/4 v1, 0x2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 576
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    .line 575
    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 577
    return v0
.end method

.method private static getEventAppExecutionExceptionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;II)I
    .locals 13
    .param p0, "ex"    # Lcom/crashlytics/android/core/TrimmedThrowableData;
    .param p1, "chainDepth"    # I
    .param p2, "maxChainedExceptionsDepth"    # I

    .prologue
    const/4 v12, 0x1

    .line 605
    const/4 v6, 0x0

    .line 607
    .local v6, "size":I
    iget-object v7, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->className:Ljava/lang/String;

    .line 608
    invoke-static {v7}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v7

    .line 607
    invoke-static {v12, v7}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v7

    add-int/2addr v6, v7

    .line 611
    iget-object v4, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->localizedMessage:Ljava/lang/String;

    .line 612
    .local v4, "message":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 613
    const/4 v7, 0x3

    invoke-static {v4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v7

    add-int/2addr v6, v7

    .line 616
    :cond_0
    iget-object v8, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->stacktrace:[Ljava/lang/StackTraceElement;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v1, v8, v7

    .line 617
    .local v1, "element":Ljava/lang/StackTraceElement;
    invoke-static {v1, v12}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 618
    .local v3, "frameSize":I
    const/4 v10, 0x4

    invoke-static {v10}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v10

    .line 619
    invoke-static {v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    add-int/2addr v6, v10

    .line 616
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 624
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    .end local v3    # "frameSize":I
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

    .line 625
    .local v0, "cause":Lcom/crashlytics/android/core/TrimmedThrowableData;
    if-eqz v0, :cond_2

    .line 626
    if-ge p1, p2, :cond_3

    .line 627
    add-int/lit8 v7, p1, 0x1

    invoke-static {v0, v7, p2}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionExceptionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;II)I

    move-result v2

    .line 629
    .local v2, "exceptionSize":I
    const/4 v7, 0x6

    invoke-static {v7}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v7

    .line 630
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 644
    .end local v2    # "exceptionSize":I
    :cond_2
    :goto_1
    return v6

    .line 634
    :cond_3
    const/4 v5, 0x0

    .line 635
    .local v5, "overflowCount":I
    :goto_2
    if-eqz v0, :cond_4

    .line 636
    iget-object v0, v0, Lcom/crashlytics/android/core/TrimmedThrowableData;->cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

    .line 637
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 640
    :cond_4
    const/4 v7, 0x7

    invoke-static {v7, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1
.end method

.method private static getEventAppExecutionSignalSize()I
    .locals 4

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, "size":I
    const/4 v1, 0x1

    sget-object v2, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 651
    const/4 v1, 0x2

    sget-object v2, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 652
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 654
    return v0
.end method

.method private static getEventAppExecutionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I
    .locals 12
    .param p0, "exception"    # Lcom/crashlytics/android/core/TrimmedThrowableData;
    .param p1, "exceptionThread"    # Ljava/lang/Thread;
    .param p2, "exceptionStack"    # [Ljava/lang/StackTraceElement;
    .param p3, "otherThreads"    # [Ljava/lang/Thread;
    .param p5, "maxChainedExceptionDepth"    # I
    .param p6, "packageNameBytes"    # Lcom/crashlytics/android/core/ByteString;
    .param p7, "optionalBuildIdBytes"    # Lcom/crashlytics/android/core/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            ")I"
        }
    .end annotation

    .prologue
    .line 543
    .local p4, "otherStacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/StackTraceElement;>;"
    const/4 v6, 0x0

    .line 545
    .local v6, "size":I
    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-static {p1, p2, v9, v10}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v8

    .line 546
    .local v8, "threadSize":I
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 547
    invoke-static {v8}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v6, v9

    .line 549
    array-length v4, p3

    .line 550
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 551
    aget-object v7, p3, v3

    .line 552
    .local v7, "thread":Ljava/lang/Thread;
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/StackTraceElement;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v11}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v8

    .line 553
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 554
    invoke-static {v8}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v6, v9

    .line 550
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 557
    .end local v7    # "thread":Ljava/lang/Thread;
    :cond_0
    const/4 v9, 0x1

    move/from16 v0, p5

    invoke-static {p0, v9, v0}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionExceptionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;II)I

    move-result v2

    .line 559
    .local v2, "exceptionSize":I
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 560
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v2

    add-int/2addr v6, v9

    .line 562
    invoke-static {}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionSignalSize()I

    move-result v5

    .line 563
    .local v5, "signalSize":I
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 564
    invoke-static {v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    add-int/2addr v6, v9

    .line 566
    invoke-static/range {p6 .. p7}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getBinaryImageSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v1

    .line 567
    .local v1, "binaryImageSize":I
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 568
    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v1

    add-int/2addr v6, v9

    .line 570
    return v6
.end method

.method private static getEventAppSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 8
    .param p0, "exception"    # Lcom/crashlytics/android/core/TrimmedThrowableData;
    .param p1, "exceptionThread"    # Ljava/lang/Thread;
    .param p2, "exceptionStack"    # [Ljava/lang/StackTraceElement;
    .param p3, "otherThreads"    # [Ljava/lang/Thread;
    .param p5, "maxChainedExceptionsDepth"    # I
    .param p6, "packageNameBytes"    # Lcom/crashlytics/android/core/ByteString;
    .param p7, "optionalBuildIdBytes"    # Lcom/crashlytics/android/core/ByteString;
    .param p9, "runningAppProcessInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p10, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 511
    .local p4, "otherStacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/StackTraceElement;>;"
    .local p8, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 513
    .local v4, "size":I
    invoke-static/range {p0 .. p7}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v3

    .line 516
    .local v3, "executionSize":I
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 517
    invoke-static {v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 519
    if-eqz p8, :cond_0

    .line 520
    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 522
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 521
    invoke-static {v5, v6}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 523
    .local v2, "entrySize":I
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 524
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    .line 525
    goto :goto_0

    .line 529
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entrySize":I
    :cond_0
    if-eqz p9, :cond_1

    .line 530
    const/4 v6, 0x3

    move-object/from16 v0, p9

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-eq v5, v7, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v6, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 534
    :cond_1
    const/4 v5, 0x4

    move/from16 v0, p10

    invoke-static {v5, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 536
    return v4

    .line 530
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getEventDeviceSize(Ljava/lang/Float;IZIJJ)I
    .locals 4
    .param p0, "batteryLevel"    # Ljava/lang/Float;
    .param p1, "batteryVelocity"    # I
    .param p2, "proximityEnabled"    # Z
    .param p3, "orientation"    # I
    .param p4, "heapAllocatedSize"    # J
    .param p6, "diskUsed"    # J

    .prologue
    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, "size":I
    if-eqz p0, :cond_0

    .line 585
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 588
    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 590
    const/4 v1, 0x5

    invoke-static {v1, p4, p5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    const/4 v1, 0x6

    invoke-static {v1, p6, p7}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    return v0
.end method

.method private static getEventLogSize(Lcom/crashlytics/android/core/ByteString;)I
    .locals 1
    .param p0, "log"    # Lcom/crashlytics/android/core/ByteString;

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    return v0
.end method

.method private static getFrameSize(Ljava/lang/StackTraceElement;Z)I
    .locals 7
    .param p0, "element"    # Ljava/lang/StackTraceElement;
    .param p1, "isCrashedThread"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 658
    const/4 v0, 0x0

    .line 660
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v6, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 667
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v3

    .line 667
    invoke-static {v1, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 670
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 671
    const/4 v3, 0x3

    .line 672
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v4

    .line 671
    invoke-static {v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 675
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_1

    .line 677
    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 679
    :cond_1
    const/4 v3, 0x5

    if-eqz p1, :cond_3

    :goto_1
    invoke-static {v3, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 681
    return v0

    .line 664
    :cond_2
    const-wide/16 v4, 0x0

    invoke-static {v6, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 679
    goto :goto_1
.end method

.method private static getSessionAppOrgSize(Lcom/crashlytics/android/core/ByteString;)I
    .locals 2
    .param p0, "apiKey"    # Lcom/crashlytics/android/core/ByteString;

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "size":I
    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    return v0
.end method

.method private static getSessionAppSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;ILcom/crashlytics/android/core/ByteString;)I
    .locals 4
    .param p0, "packageName"    # Lcom/crashlytics/android/core/ByteString;
    .param p1, "apiKey"    # Lcom/crashlytics/android/core/ByteString;
    .param p2, "versionCode"    # Lcom/crashlytics/android/core/ByteString;
    .param p3, "versionName"    # Lcom/crashlytics/android/core/ByteString;
    .param p4, "installUuid"    # Lcom/crashlytics/android/core/ByteString;
    .param p5, "deliveryMechanism"    # I
    .param p6, "unityVersion"    # Lcom/crashlytics/android/core/ByteString;

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 390
    .local v1, "size":I
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    .line 391
    const/4 v2, 0x2

    invoke-static {v2, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    .line 392
    const/4 v2, 0x3

    invoke-static {v2, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    .line 393
    invoke-static {p1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionAppOrgSize(Lcom/crashlytics/android/core/ByteString;)I

    move-result v0

    .line 394
    .local v0, "orgSize":I
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 395
    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 396
    const/4 v2, 0x6

    invoke-static {v2, p4}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    .line 398
    if-eqz p6, :cond_0

    .line 399
    const/16 v2, 0x8

    sget-object v3, Lcom/crashlytics/android/core/SessionProtobufHelper;->UNITY_PLATFORM_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-static {v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    .line 400
    const/16 v2, 0x9

    invoke-static {v2, p6}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    .line 403
    :cond_0
    const/16 v2, 0xa

    invoke-static {v2, p5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 405
    return v1
.end method

.method private static getSessionDeviceSize(ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;IJJZLjava/util/Map;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I
    .locals 8
    .param p0, "arch"    # I
    .param p1, "clsDeviceID"    # Lcom/crashlytics/android/core/ByteString;
    .param p2, "model"    # Lcom/crashlytics/android/core/ByteString;
    .param p3, "availableProcessors"    # I
    .param p4, "totalRam"    # J
    .param p6, "diskSpace"    # J
    .param p8, "isEmulator"    # Z
    .param p10, "state"    # I
    .param p11, "manufacturer"    # Lcom/crashlytics/android/core/ByteString;
    .param p12, "modelClass"    # Lcom/crashlytics/android/core/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            ")I"
        }
    .end annotation

    .prologue
    .line 436
    .local p9, "ids":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 438
    .local v3, "size":I
    const/4 v4, 0x1

    invoke-static {v4, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    add-int/2addr v3, v4

    .line 439
    const/4 v4, 0x3

    invoke-static {v4, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 440
    if-nez p2, :cond_0

    const/4 v4, 0x0

    :goto_0
    add-int/2addr v3, v4

    .line 441
    const/4 v4, 0x5

    invoke-static {v4, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 442
    const/4 v4, 0x6

    invoke-static {v4, p4, p5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 443
    const/4 v4, 0x7

    invoke-static {v4, p6, p7}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 444
    const/16 v4, 0xa

    move/from16 v0, p8

    invoke-static {v4, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 445
    if-eqz p9, :cond_1

    .line 446
    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 447
    .local v1, "id":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getDeviceIdentifierSize(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v2

    .line 448
    .local v2, "idSize":I
    const/16 v4, 0xb

    invoke-static {v4}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 449
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 450
    goto :goto_1

    .line 440
    .end local v1    # "id":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    .end local v2    # "idSize":I
    :cond_0
    const/4 v4, 0x4

    invoke-static {v4, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    goto :goto_0

    .line 452
    :cond_1
    const/16 v4, 0xc

    move/from16 v0, p10

    invoke-static {v4, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 453
    if-nez p11, :cond_2

    const/4 v4, 0x0

    :goto_2
    add-int/2addr v3, v4

    .line 454
    if-nez p12, :cond_3

    const/4 v4, 0x0

    :goto_3
    add-int/2addr v3, v4

    .line 456
    return v3

    .line 453
    :cond_2
    const/16 v4, 0xd

    move-object/from16 v0, p11

    invoke-static {v4, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    goto :goto_2

    .line 454
    :cond_3
    const/16 v4, 0xe

    move-object/from16 v0, p12

    invoke-static {v4, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    goto :goto_3
.end method

.method private static getSessionEventSize(JLjava/lang/String;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/lang/Float;IZJJLcom/crashlytics/android/core/ByteString;)I
    .locals 17
    .param p0, "eventTime"    # J
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "exception"    # Lcom/crashlytics/android/core/TrimmedThrowableData;
    .param p4, "exceptionThread"    # Ljava/lang/Thread;
    .param p5, "exceptionStack"    # [Ljava/lang/StackTraceElement;
    .param p6, "otherThreads"    # [Ljava/lang/Thread;
    .param p8, "maxChainedExceptionsDepth"    # I
    .param p10, "runningAppProcessInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p11, "orientation"    # I
    .param p12, "packageNameBytes"    # Lcom/crashlytics/android/core/ByteString;
    .param p13, "optionalBuildIdBytes"    # Lcom/crashlytics/android/core/ByteString;
    .param p14, "batteryLevel"    # Ljava/lang/Float;
    .param p15, "batteryVelocity"    # I
    .param p16, "proximityEnabled"    # Z
    .param p17, "heapAllocatedSize"    # J
    .param p19, "diskUsed"    # J
    .param p21, "log"    # Lcom/crashlytics/android/core/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            "Ljava/lang/Float;",
            "IZJJ",
            "Lcom/crashlytics/android/core/ByteString;",
            ")I"
        }
    .end annotation

    .prologue
    .line 482
    .local p7, "otherStacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/StackTraceElement;>;"
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 484
    .local v16, "size":I
    const/4 v2, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int v16, v16, v2

    .line 485
    const/4 v2, 0x2

    invoke-static/range {p2 .. p2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v2

    add-int v16, v16, v2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 486
    invoke-static/range {v2 .. v12}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v13

    .line 489
    .local v13, "eventAppSize":I
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 490
    invoke-static {v13}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v13

    add-int v16, v16, v2

    move-object/from16 v2, p14

    move/from16 v3, p15

    move/from16 v4, p16

    move/from16 v5, p11

    move-wide/from16 v6, p17

    move-wide/from16 v8, p19

    .line 491
    invoke-static/range {v2 .. v9}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventDeviceSize(Ljava/lang/Float;IZIJJ)I

    move-result v14

    .line 493
    .local v14, "eventDeviceSize":I
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 494
    invoke-static {v14}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v14

    add-int v16, v16, v2

    .line 496
    if-eqz p21, :cond_0

    .line 497
    invoke-static/range {p21 .. p21}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventLogSize(Lcom/crashlytics/android/core/ByteString;)I

    move-result v15

    .line 498
    .local v15, "logSize":I
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 499
    invoke-static {v15}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v15

    add-int v16, v16, v2

    .line 502
    .end local v15    # "logSize":I
    :cond_0
    return v16
.end method

.method private static getSessionOSSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Z)I
    .locals 3
    .param p0, "release"    # Lcom/crashlytics/android/core/ByteString;
    .param p1, "codeName"    # Lcom/crashlytics/android/core/ByteString;
    .param p2, "isRooted"    # Z

    .prologue
    const/4 v2, 0x3

    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "size":I
    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    invoke-static {v2, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    const/4 v1, 0x4

    invoke-static {v1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    return v0
.end method

.method private static getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 7
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "stackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p2, "importance"    # I
    .param p3, "isCrashedThread"    # Z

    .prologue
    .line 686
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    .line 687
    .local v1, "size":I
    const/4 v3, 0x2

    invoke-static {v3, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 689
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, p1, v3

    .line 690
    .local v2, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-static {v2, p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v0

    .line 691
    .local v0, "frameSize":I
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 692
    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v0

    add-int/2addr v1, v5

    .line 689
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "frameSize":I
    .end local v2    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_0
    return v1
.end method

.method private static stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 699
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method public static writeBeginSession(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "generator"    # Ljava/lang/String;
    .param p3, "startedAtSeconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-static {p2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 32
    const/4 v0, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 33
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3, p4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 34
    return-void
.end method

.method private static writeFrame(Lcom/crashlytics/android/core/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V
    .locals 6
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "fieldIndex"    # I
    .param p2, "element"    # Ljava/lang/StackTraceElement;
    .param p3, "isCrashedThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p0, p1, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 331
    invoke-static {p2, p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 333
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v4, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 341
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    .line 341
    invoke-virtual {p0, v5, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 344
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 345
    const/4 v2, 0x3

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 350
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    if-lez v2, :cond_1

    .line 351
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 357
    :cond_1
    const/4 v2, 0x5

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 358
    return-void

    .line 338
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 357
    goto :goto_1
.end method

.method public static writeSessionApp(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "installUuid"    # Ljava/lang/String;
    .param p6, "deliveryMechanism"    # I
    .param p7, "unityVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    .line 40
    .local v0, "packageNameBytes":Lcom/crashlytics/android/core/ByteString;
    invoke-static {p2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    .line 41
    .local v1, "apiKeyBytes":Lcom/crashlytics/android/core/ByteString;
    invoke-static {p3}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    .line 42
    .local v2, "versionCodeBytes":Lcom/crashlytics/android/core/ByteString;
    invoke-static {p4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v3

    .line 43
    .local v3, "versionNameBytes":Lcom/crashlytics/android/core/ByteString;
    invoke-static {p5}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v4

    .line 44
    .local v4, "installIdBytes":Lcom/crashlytics/android/core/ByteString;
    if-eqz p7, :cond_1

    .line 45
    invoke-static {p7}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v6

    .line 48
    .local v6, "unityVersionBytes":Lcom/crashlytics/android/core/ByteString;
    :goto_0
    const/4 v5, 0x7

    const/4 v7, 0x2

    invoke-virtual {p0, v5, v7}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    move v5, p6

    .line 49
    invoke-static/range {v0 .. v6}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionAppSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;ILcom/crashlytics/android/core/ByteString;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 51
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 52
    const/4 v5, 0x2

    invoke-virtual {p0, v5, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 53
    const/4 v5, 0x3

    invoke-virtual {p0, v5, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 56
    const/4 v5, 0x5

    const/4 v7, 0x2

    invoke-virtual {p0, v5, v7}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 57
    invoke-static {v1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionAppOrgSize(Lcom/crashlytics/android/core/ByteString;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 58
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 61
    const/4 v5, 0x6

    invoke-virtual {p0, v5, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 63
    if-eqz v6, :cond_0

    .line 64
    const/16 v5, 0x8

    sget-object v7, Lcom/crashlytics/android/core/SessionProtobufHelper;->UNITY_PLATFORM_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-virtual {p0, v5, v7}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 65
    const/16 v5, 0x9

    invoke-virtual {p0, v5, v6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 68
    :cond_0
    const/16 v5, 0xa

    invoke-virtual {p0, v5, p6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V

    .line 69
    return-void

    .line 45
    .end local v6    # "unityVersionBytes":Lcom/crashlytics/android/core/ByteString;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static writeSessionDevice(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "clsDeviceId"    # Ljava/lang/String;
    .param p2, "arch"    # I
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "availableProcessors"    # I
    .param p5, "totalRam"    # J
    .param p7, "diskSpace"    # J
    .param p9, "isEmulator"    # Z
    .param p11, "state"    # I
    .param p12, "manufacturer"    # Ljava/lang/String;
    .param p13, "modelClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    .local p10, "ids":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v5

    .line 88
    .local v5, "clsDeviceIDBytes":Lcom/crashlytics/android/core/ByteString;
    invoke-static/range {p3 .. p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v6

    .line 89
    .local v6, "modelBytes":Lcom/crashlytics/android/core/ByteString;
    invoke-static/range {p13 .. p13}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v16

    .line 90
    .local v16, "modelClassBytes":Lcom/crashlytics/android/core/ByteString;
    invoke-static/range {p12 .. p12}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v15

    .line 92
    .local v15, "manufacturerBytes":Lcom/crashlytics/android/core/ByteString;
    const/16 v4, 0x9

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    move/from16 v4, p2

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    .line 94
    invoke-static/range {v4 .. v16}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionDeviceSize(ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;IJJZLjava/util/Map;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 98
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 100
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V

    .line 101
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 102
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 103
    const/4 v4, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v4, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 104
    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-virtual {v0, v4, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 105
    const/16 v4, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    .line 107
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 108
    .local v17, "id":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    const/16 v4, 0xb

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 109
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getDeviceIdentifierSize(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 111
    const/4 v7, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    iget v4, v4, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->protobufIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V

    .line 112
    const/4 v7, 0x2

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    goto :goto_0

    .line 114
    .end local v17    # "id":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    :cond_0
    const/16 v4, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 116
    if-eqz v15, :cond_1

    .line 117
    const/16 v4, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 119
    :cond_1
    if-eqz v16, :cond_2

    .line 120
    const/16 v4, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 122
    :cond_2
    return-void
.end method

.method public static writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;JLjava/lang/String;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/crashlytics/android/core/LogFileManager;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V
    .locals 28
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "eventTime"    # J
    .param p3, "eventType"    # Ljava/lang/String;
    .param p4, "exception"    # Lcom/crashlytics/android/core/TrimmedThrowableData;
    .param p5, "exceptionThread"    # Ljava/lang/Thread;
    .param p6, "exceptionStack"    # [Ljava/lang/StackTraceElement;
    .param p7, "otherThreads"    # [Ljava/lang/Thread;
    .param p10, "logFileManager"    # Lcom/crashlytics/android/core/LogFileManager;
    .param p11, "runningAppProcessInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p12, "orientation"    # I
    .param p13, "packageName"    # Ljava/lang/String;
    .param p14, "buildId"    # Ljava/lang/String;
    .param p15, "batteryLevel"    # Ljava/lang/Float;
    .param p16, "batteryVelocity"    # I
    .param p17, "proximityEnabled"    # Z
    .param p18, "usedRamInBytes"    # J
    .param p20, "diskUsedInBytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "J",
            "Ljava/lang/String;",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/crashlytics/android/core/LogFileManager;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "IZJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    .local p8, "otherStacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/StackTraceElement;>;"
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p13 .. p13}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v17

    .line 161
    .local v17, "packageNameBytes":Lcom/crashlytics/android/core/ByteString;
    if-nez p14, :cond_1

    const/16 v18, 0x0

    .line 164
    .local v18, "optionalBuildIdBytes":Lcom/crashlytics/android/core/ByteString;
    :goto_0
    invoke-virtual/range {p10 .. p10}, Lcom/crashlytics/android/core/LogFileManager;->getByteStringForLog()Lcom/crashlytics/android/core/ByteString;

    move-result-object v26

    .line 166
    .local v26, "logByteString":Lcom/crashlytics/android/core/ByteString;
    if-nez v26, :cond_0

    .line 167
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    const-string v7, "No log data to include with this event."

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual/range {p10 .. p10}, Lcom/crashlytics/android/core/LogFileManager;->clearLog()V

    .line 177
    const/16 v4, 0x8

    .line 180
    .local v4, "maxChainedExceptionsDepth":I
    const/16 v5, 0xa

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 181
    const/16 v13, 0x8

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, p17

    move-wide/from16 v22, p18

    move-wide/from16 v24, p20

    invoke-static/range {v5 .. v26}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionEventSize(JLjava/lang/String;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/lang/Float;IZJJLcom/crashlytics/android/core/ByteString;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 186
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v5, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 187
    const/4 v5, 0x2

    invoke-static/range {p3 .. p3}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 189
    const/16 v16, 0x8

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p11

    move/from16 v21, p12

    invoke-static/range {v10 .. v21}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventApp(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    move-object/from16 v5, p0

    move-object/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    move/from16 v9, p12

    move-wide/from16 v10, p18

    move-wide/from16 v12, p20

    .line 192
    invoke-static/range {v5 .. v13}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventDevice(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Float;IZIJJ)V

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventLog(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/ByteString;)V

    .line 195
    return-void

    .line 161
    .end local v4    # "maxChainedExceptionsDepth":I
    .end local v18    # "optionalBuildIdBytes":Lcom/crashlytics/android/core/ByteString;
    .end local v26    # "logByteString":Lcom/crashlytics/android/core/ByteString;
    :cond_1
    const-string v5, "-"

    const-string v6, ""

    .line 162
    move-object/from16 v0, p14

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v18

    goto/16 :goto_0
.end method

.method private static writeSessionEventApp(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 3
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "exception"    # Lcom/crashlytics/android/core/TrimmedThrowableData;
    .param p2, "exceptionThread"    # Ljava/lang/Thread;
    .param p3, "exceptionStack"    # [Ljava/lang/StackTraceElement;
    .param p4, "otherThreads"    # [Ljava/lang/Thread;
    .param p6, "maxChainedExceptionsDepth"    # I
    .param p7, "packageNameBytes"    # Lcom/crashlytics/android/core/ByteString;
    .param p8, "optionalBuildIdBytes"    # Lcom/crashlytics/android/core/ByteString;
    .param p10, "runningAppProcessInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p11, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p5, "otherStacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/StackTraceElement;>;"
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x3

    .line 204
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 205
    invoke-static/range {p1 .. p11}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 209
    invoke-static/range {p0 .. p8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventAppExecution(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)V

    .line 213
    if-eqz p9, :cond_0

    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-static {p0, p9}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventAppCustomAttributes(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Map;)V

    .line 218
    :cond_0
    if-eqz p10, :cond_1

    .line 220
    iget v0, p10, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    .line 224
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p11}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 225
    return-void

    .line 220
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeSessionEventAppCustomAttributes(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Map;)V
    .locals 6
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x2

    .line 268
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v5, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 270
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    invoke-static {v2, v3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 273
    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    goto :goto_0

    .line 277
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private static writeSessionEventAppExecution(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)V
    .locals 6
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "exception"    # Lcom/crashlytics/android/core/TrimmedThrowableData;
    .param p2, "exceptionThread"    # Ljava/lang/Thread;
    .param p3, "exceptionStack"    # [Ljava/lang/StackTraceElement;
    .param p4, "otherThreads"    # [Ljava/lang/Thread;
    .param p6, "maxChainedExceptionsDepth"    # I
    .param p7, "packageNameBytes"    # Lcom/crashlytics/android/core/ByteString;
    .param p8, "optionalBuildIdBytes"    # Lcom/crashlytics/android/core/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    .local p5, "otherStacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/StackTraceElement;>;"
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 233
    invoke-static/range {p1 .. p8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 237
    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {p0, p2, p3, v3, v4}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeThread(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 241
    array-length v1, p4

    .line 242
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 243
    aget-object v2, p4, v0

    .line 244
    .local v2, "thread":Ljava/lang/Thread;
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeThread(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {p0, p1, v3, p6, v4}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventAppExecutionException(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;III)V

    .line 249
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 250
    invoke-static {}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionSignalSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 251
    const/4 v3, 0x1

    sget-object v4, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 252
    const/4 v3, 0x2

    sget-object v4, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 253
    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 255
    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 256
    invoke-static {p7, p8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getBinaryImageSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 257
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 258
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 259
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p7}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 260
    if-eqz p8, :cond_1

    .line 261
    const/4 v3, 0x4

    invoke-virtual {p0, v3, p8}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 263
    :cond_1
    return-void
.end method

.method private static writeSessionEventAppExecutionException(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;III)V
    .locals 9
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "exception"    # Lcom/crashlytics/android/core/TrimmedThrowableData;
    .param p2, "chainDepth"    # I
    .param p3, "maxChainedExceptionsDepth"    # I
    .param p4, "field"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 282
    const/4 v4, 0x2

    invoke-virtual {p0, p4, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 284
    invoke-static {p1, v8, p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionExceptionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;II)I

    move-result v4

    .line 283
    invoke-virtual {p0, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 286
    iget-object v4, p1, Lcom/crashlytics/android/core/TrimmedThrowableData;->className:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 287
    iget-object v2, p1, Lcom/crashlytics/android/core/TrimmedThrowableData;->localizedMessage:Ljava/lang/String;

    .line 288
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 289
    const/4 v4, 0x3

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 292
    :cond_0
    iget-object v5, p1, Lcom/crashlytics/android/core/TrimmedThrowableData;->stacktrace:[Ljava/lang/StackTraceElement;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 293
    .local v1, "element":Ljava/lang/StackTraceElement;
    const/4 v7, 0x4

    invoke-static {p0, v7, v1, v8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeFrame(Lcom/crashlytics/android/core/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    iget-object v0, p1, Lcom/crashlytics/android/core/TrimmedThrowableData;->cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

    .line 297
    .local v0, "cause":Lcom/crashlytics/android/core/TrimmedThrowableData;
    if-eqz v0, :cond_2

    .line 298
    if-ge p2, p3, :cond_3

    .line 299
    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x6

    invoke-static {p0, v0, v4, p3, v5}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventAppExecutionException(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;III)V

    .line 312
    :cond_2
    :goto_1
    return-void

    .line 304
    :cond_3
    const/4 v3, 0x0

    .line 305
    .local v3, "overflowCount":I
    :goto_2
    if-eqz v0, :cond_4

    .line 306
    iget-object v0, v0, Lcom/crashlytics/android/core/TrimmedThrowableData;->cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 309
    :cond_4
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    goto :goto_1
.end method

.method private static writeSessionEventDevice(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Float;IZIJJ)V
    .locals 5
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "batteryLevel"    # Ljava/lang/Float;
    .param p2, "batteryVelocity"    # I
    .param p3, "proximityEnabled"    # Z
    .param p4, "orientation"    # I
    .param p5, "heapAllocatedSize"    # J
    .param p7, "diskUsed"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 363
    invoke-virtual {p0, v3, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 364
    invoke-static/range {p1 .. p8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventDeviceSize(Ljava/lang/Float;IZIJJ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 366
    if-eqz p1, :cond_0

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeFloat(IF)V

    .line 369
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeSInt32(II)V

    .line 370
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    .line 371
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 372
    invoke-virtual {p0, v3, p5, p6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 373
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p7, p8}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 374
    return-void
.end method

.method private static writeSessionEventLog(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/ByteString;)V
    .locals 2
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "log"    # Lcom/crashlytics/android/core/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 378
    if-eqz p1, :cond_0

    .line 379
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 380
    invoke-static {p1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventLogSize(Lcom/crashlytics/android/core/ByteString;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 383
    :cond_0
    return-void
.end method

.method public static writeSessionOS(Lcom/crashlytics/android/core/CodedOutputStream;Z)V
    .locals 5
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "isRooted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 72
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    .line 73
    .local v1, "releaseBytes":Lcom/crashlytics/android/core/ByteString;
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    .line 75
    .local v0, "codeNameBytes":Lcom/crashlytics/android/core/ByteString;
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 76
    invoke-static {v1, v0, p1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionOSSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 77
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V

    .line 78
    invoke-virtual {p0, v3, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 79
    invoke-virtual {p0, v4, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 80
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    .line 81
    return-void
.end method

.method public static writeSessionUser(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 127
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "id":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    .line 128
    .local v1, "idBytes":Lcom/crashlytics/android/core/ByteString;
    invoke-static {p2}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    .line 129
    .local v2, "nameBytes":Lcom/crashlytics/android/core/ByteString;
    invoke-static {p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    .line 131
    .local v0, "emailBytes":Lcom/crashlytics/android/core/ByteString;
    const/4 v3, 0x0

    .line 132
    .local v3, "size":I
    invoke-static {v6, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    add-int/2addr v3, v4

    .line 133
    if-eqz p2, :cond_1

    .line 134
    invoke-static {v5, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    add-int/2addr v3, v4

    .line 136
    :cond_1
    if-eqz p3, :cond_2

    .line 137
    invoke-static {v7, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    add-int/2addr v3, v4

    .line 140
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 142
    invoke-virtual {p0, v6, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 143
    if-eqz p2, :cond_3

    .line 144
    invoke-virtual {p0, v5, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 146
    :cond_3
    if-eqz p3, :cond_4

    .line 147
    invoke-virtual {p0, v7, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 149
    :cond_4
    return-void
.end method

.method private static writeThread(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 5
    .param p0, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "stackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p3, "importance"    # I
    .param p4, "isCrashedThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 317
    invoke-virtual {p0, v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 318
    invoke-static {p1, p2, p3, p4}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 319
    .local v0, "s":I
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 320
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 321
    invoke-virtual {p0, v4, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 323
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p2, v2

    .line 324
    .local v1, "stackTraceElement":Ljava/lang/StackTraceElement;
    const/4 v4, 0x3

    invoke-static {p0, v4, v1, p4}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeFrame(Lcom/crashlytics/android/core/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method
