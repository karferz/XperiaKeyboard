.class public final Lcom/touchtype_fluency/util/SwiftKeySession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MODELS_NGRAM_ORDER:I = 0x4

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/util/LiveLanguagePack;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/touchtype_fluency/Session;

.field private g:Lcom/touchtype_fluency/util/PredictionsListener;

.field private h:Lcom/touchtype_fluency/util/ExclusionPattern;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/touchtype_fluency/util/LoadProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/touchtype_fluency/Session;)V
    .locals 1
    .param p1, "session"    # Lcom/touchtype_fluency/Session;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    .line 103
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    .line 104
    invoke-static {}, Lcom/touchtype_fluency/util/ExclusionPattern;->createDefault()Lcom/touchtype_fluency/util/ExclusionPattern;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->h:Lcom/touchtype_fluency/util/ExclusionPattern;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    .line 110
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LanguagePack;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LiveLanguagePack;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lcom/touchtype_fluency/Predictor;Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1481
    if-eqz p2, :cond_0

    .line 1482
    invoke-interface {p0, p2}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel(Ljava/lang/String;)Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v1

    .line 1483
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kpm"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".im"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1489
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1491
    :try_start_0
    invoke-interface {v1, v0}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    :goto_1
    return-void

    .line 1486
    :cond_0
    invoke-interface {p0}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v1

    .line 1487
    new-instance v0, Ljava/io/File;

    const-string v2, "kpm.im"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 1492
    :catch_0
    move-exception v0

    .line 1496
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception thrown while writing KPM ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string p2, "default"

    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;Lcom/touchtype_fluency/Predictions;Ljava/io/File;)V
    .locals 17

    .prologue
    .line 1516
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1517
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_a

    .line 1521
    :cond_0
    if-eqz p0, :cond_1

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/touchtype_fluency/TouchHistory;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 1527
    :goto_0
    if-eqz p1, :cond_2

    .line 1528
    invoke-virtual/range {p1 .. p1}, Lcom/touchtype_fluency/Sequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 1533
    :goto_1
    if-eqz p2, :cond_3

    .line 1534
    invoke-virtual/range {p2 .. p2}, Lcom/touchtype_fluency/Sequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1539
    :goto_2
    if-eqz p3, :cond_4

    .line 1540
    invoke-virtual/range {p3 .. p3}, Lcom/touchtype_fluency/ResultsFilter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1544
    :goto_3
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1546
    if-eqz p4, :cond_b

    .line 1547
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1548
    const/4 v2, 0x0

    move v4, v2

    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-ge v4, v2, :cond_9

    .line 1549
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v12

    .line 1550
    invoke-virtual {v12}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const-string v2, "\t"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {v12}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1553
    const-string v2, "\t["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-virtual {v12}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v5

    .line 1555
    const/4 v2, 0x1

    .line 1556
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v5, v2

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1557
    if-eqz v5, :cond_5

    .line 1558
    const/4 v5, 0x0

    .line 1562
    :goto_6
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1524
    :cond_1
    const-string v2, "TouchHistory is null"

    move-object v8, v2

    goto :goto_0

    .line 1530
    :cond_2
    const-string v2, "(Pre-)Sequence is null"

    move-object v7, v2

    goto :goto_1

    .line 1536
    :cond_3
    const-string v2, "Post-Sequence is null"

    move-object v6, v2

    goto :goto_2

    .line 1542
    :cond_4
    const-string v2, "ResultsFilter is null"

    move-object v3, v2

    goto :goto_3

    .line 1560
    :cond_5
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1564
    :cond_6
    const-string v2, "]\tterm breaks: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    invoke-virtual {v12}, Lcom/touchtype_fluency/Prediction;->getTermBreaks()[Ljava/lang/Integer;

    move-result-object v12

    .line 1566
    const/4 v5, 0x1

    .line 1567
    array-length v13, v12

    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v5

    move/from16 v5, v16

    :goto_7
    if-ge v5, v13, :cond_8

    aget-object v14, v12, v5

    .line 1568
    if-eqz v2, :cond_7

    .line 1569
    const/4 v2, 0x0

    .line 1573
    :goto_8
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1567
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1571
    :cond_7
    const-string v15, ","

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1575
    :cond_8
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_4

    .line 1577
    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1581
    :goto_9
    const-string v4, "TouchHistory: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    const-string v4, "(Pre-) Sequence: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    const-string v4, "Post-Sequence: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    const-string v4, "ResultsFilter: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    const-string v3, "Predictions: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    :cond_a
    :try_start_0
    const-string v2, "predictionstate.txt"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    :goto_a
    return-void

    .line 1579
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Predictions are null"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 1601
    :catch_0
    move-exception v2

    .line 1602
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error writing predictionstate.txt: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 48
    .line 5715
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5716
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    .line 5717
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 5718
    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v5, v4}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 5717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5720
    :cond_0
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->c()V

    .line 5721
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->d()V

    .line 5725
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->getTags(Lcom/touchtype_fluency/TagSelector;)[Ljava/lang/String;

    move-result-object v1

    .line 5726
    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    .line 5727
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent static models (still loaded/reloaded by another thread):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5729
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 5730
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5731
    invoke-virtual {v4}, Lcom/touchtype_fluency/ModelSetDescription;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5729
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5733
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1423
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1425
    new-instance v1, Ljava/io/File;

    const-string v0, "punctuator_rules"

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1428
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1429
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1430
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1433
    :try_start_0
    invoke-static {v3, v4}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1434
    :catch_0
    move-exception v3

    .line 1435
    sget-object v5, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error copying "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1441
    :cond_0
    return-void
.end method

.method private a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 472
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;)Ljava/lang/String;

    move-result-object v5

    .line 473
    if-nez v5, :cond_0

    .line 474
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not loaded - can\'t be removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 515
    :goto_0
    return v0

    .line 479
    :cond_0
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v6

    .line 480
    const/4 v0, 0x0

    .line 481
    if-eqz v6, :cond_5

    .line 482
    invoke-direct {p0, v6}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 487
    :goto_1
    if-nez p2, :cond_3

    move v0, v3

    .line 488
    :goto_2
    if-eqz p3, :cond_1

    if-eq v0, v3, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 490
    :cond_1
    if-eqz v1, :cond_4

    .line 491
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-direct {p0, p1, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    .line 493
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "keeping "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 496
    invoke-direct {p0, v6, v4}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "keeping "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    move v0, v2

    .line 515
    goto :goto_0

    .line 487
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_2

    .line 500
    :cond_4
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v5}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 501
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unloaded "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v4}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 506
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unloaded "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 512
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private a(Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z
    .locals 6

    .prologue
    .line 636
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 637
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    .line 638
    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_0

    .line 643
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 646
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;)Ljava/lang/String;

    move-result-object v2

    .line 647
    if-eqz v2, :cond_3

    .line 648
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v2}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 649
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unloaded "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    .line 663
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 665
    invoke-virtual {p0, v0, p4}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/Runnable;)Z

    move-result v2

    .line 666
    if-nez v2, :cond_0

    .line 667
    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLiveLanguageBroken(Lcom/touchtype_fluency/util/LiveLanguagePack;)V

    .line 668
    const/4 v0, 0x0

    .line 673
    :goto_1
    return v0

    .line 652
    :cond_3
    :try_start_1
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Live LM path not found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 659
    :catch_0
    move-exception v2

    goto :goto_0

    .line 673
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 738
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    if-nez v2, :cond_0

    .line 775
    :goto_0
    return v1

    .line 744
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_5

    .line 774
    :goto_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->e()V

    move v1, v0

    .line 775
    goto :goto_0

    :catch_0
    move-exception v2

    .line 750
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    .line 751
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 752
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 754
    :cond_1
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    sget-object v6, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v4, v5, v2, v6}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 766
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 764
    :catch_3
    move-exception v0

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v2, "impossible - loading a dynamic model doesn\'t throw!"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 772
    goto :goto_1

    :catch_4
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 770
    :catch_5
    move-exception v0

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v2, "impossible - loading a dynamic model doesn\'t throw!"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 343
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 940
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 944
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    :goto_0
    monitor-exit p0

    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 948
    :try_start_2
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lost possible training data, but proceeding with personalization merge "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 951
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/SwiftKeySession;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    return v0
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    monitor-exit p0

    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1445
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Predictor;->getLayoutFilter()Lcom/touchtype_fluency/LayoutFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/LayoutFilter;->get()Ljava/util/List;

    move-result-object v0

    .line 1446
    if-eqz v0, :cond_0

    .line 1447
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1448
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/CodepointRange;

    .line 1449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/touchtype_fluency/CodepointRange;->getBegin()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/touchtype_fluency/CodepointRange;->getEnd()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1454
    :cond_0
    :try_start_0
    const-string v0, "layoutfilter.txt"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    :goto_1
    return-void

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing layoutfilter.txt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/SwiftKeySession;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    return v0
.end method

.method public static create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 2
    .param p0, "license"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {p0}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;-><init>(Lcom/touchtype_fluency/Session;)V

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 1

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    monitor-exit p0

    return-void

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->b()V

    return-void
.end method

.method private d(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 1463
    new-instance v1, Ljava/io/File;

    const-string v0, "kpm"

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1465
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v2

    .line 1466
    invoke-interface {v2}, Lcom/touchtype_fluency/Predictor;->listKeyPressModels()[Ljava/lang/String;

    move-result-object v3

    .line 1467
    if-eqz v3, :cond_0

    .line 1468
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 1469
    invoke-static {v2, v1, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/Predictor;Ljava/io/File;Ljava/lang/String;)V

    .line 1468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1474
    :cond_0
    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/Predictor;Ljava/io/File;Ljava/lang/String;)V

    .line 1475
    return-void
.end method

.method static synthetic e(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/LoadProgressListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicTemporary(I[Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 801
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Impossible - loading a temporary dynamic model doesn\'t throw IOException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 793
    :catch_1
    move-exception v0

    .line 794
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Impossible - loading a temporary dynamic model doesn\'t throw InvalidDataException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 797
    :catch_2
    move-exception v0

    .line 798
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Impossible - loading a temporary dynamic model doesn\'t throw LicenseException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private e(Ljava/io/File;)V
    .locals 19

    .prologue
    .line 1608
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1609
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v10

    .line 1611
    invoke-interface {v10}, Lcom/touchtype_fluency/ParameterSet;->getTargets()[Ljava/lang/String;

    move-result-object v11

    .line 1612
    array-length v12, v11

    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v12, :cond_6

    aget-object v13, v11, v7

    .line 1613
    invoke-interface {v10, v13}, Lcom/touchtype_fluency/ParameterSet;->getProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1614
    array-length v15, v14

    const/4 v2, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v15, :cond_5

    aget-object v16, v14, v6

    .line 1615
    move-object/from16 v0, v16

    invoke-interface {v10, v13, v0}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v3

    .line 1616
    invoke-interface {v3}, Lcom/touchtype_fluency/Parameter;->getValueType()Ljava/lang/Class;

    move-result-object v5

    .line 1617
    invoke-interface {v3}, Lcom/touchtype_fluency/Parameter;->defaultValue()Ljava/lang/Object;

    move-result-object v2

    .line 1618
    invoke-interface {v3}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    const/4 v4, 0x0

    .line 1622
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v17

    const-class v18, Ljava/lang/Float;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1623
    check-cast v2, [Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v2, v3

    .line 1624
    check-cast v2, [Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1625
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1626
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1627
    invoke-interface {v5, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1651
    :goto_2
    if-nez v2, :cond_0

    .line 1652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    :cond_0
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    .line 1628
    :cond_1
    const-class v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_2

    .line 1629
    check-cast v2, Ljava/lang/Integer;

    .line 1630
    check-cast v3, Ljava/lang/Integer;

    .line 1631
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1632
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1633
    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object v3, v4

    move-object v4, v5

    .line 1634
    goto :goto_2

    :cond_2
    const-class v17, Ljava/lang/Float;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_3

    .line 1635
    check-cast v2, Ljava/lang/Float;

    .line 1636
    check-cast v3, Ljava/lang/Float;

    .line 1637
    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1638
    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1639
    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object v3, v4

    move-object v4, v5

    .line 1640
    goto :goto_2

    :cond_3
    const-class v17, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_4

    .line 1641
    check-cast v2, Ljava/lang/Boolean;

    .line 1642
    check-cast v3, Ljava/lang/Boolean;

    .line 1643
    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1644
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1645
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object v3, v4

    move-object v4, v5

    .line 1646
    goto/16 :goto_2

    .line 1647
    :cond_4
    const-string v5, "Unknown type for "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1649
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_2

    .line 1612
    :cond_5
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_0

    .line 1660
    :cond_6
    :try_start_0
    const-string v2, "changedparameters.txt"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    :goto_3
    return-void

    .line 1662
    :catch_0
    move-exception v2

    .line 1663
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error writing changedparameters.txt: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private declared-synchronized f()Lcom/touchtype_fluency/util/PredictionsListener;
    .locals 1

    .prologue
    .line 935
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->g:Lcom/touchtype_fluency/util/PredictionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    .line 6298
    monitor-enter p0

    .line 6299
    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 6301
    if-eqz v0, :cond_1

    .line 6302
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 6315
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6317
    if-eqz v0, :cond_0

    .line 6321
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LoadProgressListener;->onComplete(Z)V

    .line 48
    :cond_0
    return-void

    .line 6311
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    .line 6313
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    goto :goto_0

    .line 6315
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 1669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1670
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1671
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    .line 1672
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    aget-object v4, v3, v0

    .line 1675
    invoke-virtual {v4}, Lcom/touchtype_fluency/ModelSetDescription;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1679
    :cond_0
    :try_start_0
    const-string v0, "languagemodels.txt"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    :goto_1
    return-void

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing languagemodels.txt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/Session;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method private g(Ljava/io/File;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x1

    .line 1688
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    .line 1690
    :try_start_0
    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    :goto_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    .line 1696
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    .line 4721
    :try_start_1
    invoke-virtual {v5}, Lcom/touchtype_fluency/ModelSetDescription;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4722
    if-eqz v0, :cond_7

    .line 4725
    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 4726
    if-eq v6, v9, :cond_7

    .line 4729
    add-int/lit8 v6, v6, 0x1

    .line 4730
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 4731
    if-eq v7, v9, :cond_0

    if-le v6, v7, :cond_4

    :cond_0
    move-object v0, v1

    .line 1699
    :cond_1
    :goto_2
    if-eqz v0, :cond_3

    .line 1700
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1701
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1704
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 1706
    :cond_2
    invoke-static {v0, v7}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1696
    :cond_3
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1691
    :catch_0
    move-exception v0

    .line 1692
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error writing dynamic language models: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4734
    :cond_4
    :try_start_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4735
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 4736
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4737
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_5

    .line 4738
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Path does not specify a directory for ModelSetDescription loaded at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1709
    :catch_1
    move-exception v0

    .line 1710
    sget-object v6, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error processing ModelSetDescription "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/touchtype_fluency/ModelSetDescription;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4741
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 4742
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Directory does not exist for ModelSetDescription loaded at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4745
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4746
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Directory cannot be read for ModelSetDescription loaded at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-object v0, v1

    .line 4751
    goto/16 :goto_2

    .line 1714
    :cond_8
    return-void
.end method

.method public static getFilteredPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .param p0, "predictions"    # Lcom/touchtype_fluency/Predictions;
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1243
    invoke-static {}, Lcom/touchtype_fluency/util/i;->a()Lcom/touchtype_fluency/util/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/touchtype_fluency/util/i;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFilteredZhuyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .param p0, "predictions"    # Lcom/touchtype_fluency/Predictions;
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1265
    invoke-static {}, Lcom/touchtype_fluency/util/m;->a()Lcom/touchtype_fluency/util/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/touchtype_fluency/util/m;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/PredictionsListener;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->f()Lcom/touchtype_fluency/util/PredictionsListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 806
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 809
    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 810
    invoke-direct {p0, p1, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    .line 811
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loaded by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 812
    const/4 v0, 0x1

    .line 826
    :goto_0
    return v0

    .line 814
    :catch_0
    move-exception v2

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " broken - re-download it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :catch_1
    move-exception v2

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " broken - re-download it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :catch_2
    move-exception v2

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is a morpheme language pack and cannot be loaded without a valid license key"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :cond_0
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " missing - download it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/Runnable;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 833
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 834
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v2}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 837
    invoke-direct {p0, p1, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/String;)V

    .line 838
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loaded by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 839
    const/4 v0, 0x1

    .line 857
    :goto_0
    return v0

    .line 840
    :catch_0
    move-exception v1

    .line 841
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " broken - re-download it. Encountered IOException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :catch_1
    move-exception v1

    .line 846
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " broken - re-download it. Encountered InvalidDataException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/touchtype_fluency/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 851
    :catch_2
    move-exception v1

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is a morpheme language pack and cannot be loaded without a valid license key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_0
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " missing - download it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "messageType"    # Lcom/touchtype_fluency/Sequence$Type;

    .prologue
    const/4 v0, 0x0

    .line 1180
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method public final addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "messageType"    # Lcom/touchtype_fluency/Sequence$Type;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "fieldHint"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1203
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v3

    .line 1205
    if-eqz v3, :cond_3

    .line 1206
    const/4 v0, 0x1

    .line 1207
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->h:Lcom/touchtype_fluency/util/ExclusionPattern;

    invoke-virtual {v2, p1}, Lcom/touchtype_fluency/util/ExclusionPattern;->a(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 1208
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 1209
    iget-object v7, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v6

    .line 1210
    if-eqz v0, :cond_0

    .line 1211
    invoke-virtual {v6, p2}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    move v0, v1

    .line 1214
    :cond_0
    if-eqz p3, :cond_1

    .line 1215
    invoke-virtual {v6, p3}, Lcom/touchtype_fluency/Sequence;->setContact(Ljava/lang/String;)V

    .line 1217
    :cond_1
    if-eqz p4, :cond_2

    .line 1218
    invoke-virtual {v6, p4}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    .line 1220
    :cond_2
    invoke-interface {v3, v6}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    .line 1208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    :cond_3
    return-void
.end method

.method public final clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)Z
    .locals 5
    .param p1, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v0

    .line 1105
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v1, v2, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    .line 1108
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 1109
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v1

    .line 1110
    if-nez v1, :cond_0

    .line 1111
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v2, "Did not delete dynamic LM. Probably means there wasn\'t one there"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    .line 1114
    if-eqz v1, :cond_1

    .line 1115
    invoke-interface {v1}, Lcom/touchtype_fluency/Trainer;->resetLearnedParameters()V

    .line 1117
    :cond_1
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;)Z

    .line 1118
    const/4 v0, 0x1

    return v0
.end method

.method public final createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 5
    .param p1, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    .line 1138
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v0, v2, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    .line 1142
    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2, v0}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1154
    :goto_0
    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->b(Ljava/io/File;)V

    .line 1155
    return-void

    .line 1143
    :catch_0
    move-exception v0

    .line 1145
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got IOException loading model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1146
    :catch_1
    move-exception v0

    .line 1148
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got InvalidDataException loading model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1151
    :catch_2
    move-exception v0

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v2, "impossible - loading a dynamic model doesn\'t throw!"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->dispose()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    .line 131
    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    .line 114
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    return-void
.end method

.method public final get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .param p1, "predictions"    # Lcom/touchtype_fluency/Predictions;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1273
    invoke-virtual {p0, p1, p2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getFiltered12KeyZhuyinsPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFiltered12KeyPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .param p1, "predictions"    # Lcom/touchtype_fluency/Predictions;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1254
    invoke-static {}, Lcom/touchtype_fluency/util/i;->a()Lcom/touchtype_fluency/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/i;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFiltered12KeyZhuyinsPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .param p1, "predictions"    # Lcom/touchtype_fluency/Predictions;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/touchtype_fluency/util/m;->a(Lcom/touchtype_fluency/Session;)Lcom/touchtype_fluency/util/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/m;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "context"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "current"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "filter"    # Lcom/touchtype_fluency/ResultsFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Sequence;",
            "Lcom/touchtype_fluency/TouchHistory;",
            "Lcom/touchtype_fluency/ResultsFilter;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/touchtype_fluency/Predictions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 880
    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession$8;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final getSession()Lcom/touchtype_fluency/Session;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method public final loadEnabledLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .param p1, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 163
    return-void
.end method

.method public final declared-synchronized loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 2
    .param p2, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/touchtype_fluency/util/SwiftKeySession$1;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;

    .line 209
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V
    .locals 4
    .param p2, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "listener"    # Lcom/touchtype_fluency/util/LoadProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v0, 0x0

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    if-eqz v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    .line 234
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    if-eqz v0, :cond_1

    .line 238
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LoadProgressListener;->onComplete(Z)V

    .line 241
    :cond_1
    monitor-enter p0

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 243
    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    .line 246
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$2;

    invoke-direct {v1, p0, p2}, Lcom/touchtype_fluency/util/SwiftKeySession$2;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_2
    if-eqz p1, :cond_3

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    .line 261
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    new-instance v3, Lcom/touchtype_fluency/util/SwiftKeySession$3;

    invoke-direct {v3, p0, v0, p2}, Lcom/touchtype_fluency/util/SwiftKeySession$3;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 234
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 285
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$4;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/SwiftKeySession$4;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 291
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public final mergeDynamicLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 7
    .param p1, "newModel"    # Ljava/io/File;
    .param p2, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "listener"    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 1018
    iget-boolean v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    if-nez v1, :cond_0

    .line 1019
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should not merge dynamic models when dynamic models are disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1022
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1024
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new dynamic language model File is null or its parent is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_2
    invoke-virtual {p2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    .line 1035
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v2, v6, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    .line 1038
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    sget-object v5, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v3, v6, v4, v5}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    .line 1045
    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->b(Ljava/io/File;)V

    .line 1047
    sget-object v4, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v5, "Unloading existing dynamic model"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v4, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v4, v2}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 1052
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/touchtype_fluency/ModelSetDescription;->merge(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    .line 1057
    if-eqz v1, :cond_3

    .line 1062
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v3, "Successfully merged user models"

    invoke-static {v1, v3}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/touchtype_fluency/CountOverflowException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1065
    const/4 v0, 0x1

    .line 1085
    :cond_3
    :goto_0
    invoke-interface {p3, v0}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    .line 1086
    return-void

    .line 1068
    :catch_0
    move-exception v1

    .line 1069
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got illegal state when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :catch_1
    move-exception v1

    .line 1072
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got invalid data when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/touchtype_fluency/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :catch_2
    move-exception v1

    .line 1075
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got IOException when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :catch_3
    move-exception v1

    .line 1078
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got CountOverflowException when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/touchtype_fluency/CountOverflowException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1082
    :catch_4
    move-exception v1

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v2, "impossible - loading a dynamic model doesn\'t throw!"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final mergeLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 0
    .param p1, "newModel"    # Ljava/io/File;
    .param p2, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "listener"    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 983
    invoke-virtual {p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->mergeDynamicLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 984
    return-void
.end method

.method public final preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .param p2, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "toPreserve":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V

    .line 397
    return-void
.end method

.method public final declared-synchronized preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V
    .locals 7
    .param p2, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "listener"    # Lcom/touchtype_fluency/util/PreservationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/PreservationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "toPreserve":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 423
    iget-object v6, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$5;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/SwiftKeySession$5;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/util/List;Ljava/util/Set;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    monitor-exit p0

    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .param p3, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .local p2, "toAdd":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 531
    return-void
.end method

.method public final declared-synchronized replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 7
    .param p3, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p4, "listener"    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .local p2, "toAdd":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v6, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/SwiftKeySession$6;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    monitor-exit p0

    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetTemporaryModel()V
    .locals 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicTemporary(I[Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 784
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->e()V

    .line 785
    return-void
.end method

.method public final setDynamicModelsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    .line 362
    return-void
.end method

.method public final setExclusionPattern(Lcom/touchtype_fluency/util/ExclusionPattern;)V
    .locals 0
    .param p1, "pattern"    # Lcom/touchtype_fluency/util/ExclusionPattern;

    .prologue
    .line 1162
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->h:Lcom/touchtype_fluency/util/ExclusionPattern;

    .line 1164
    return-void
.end method

.method public final setLiveLanguageModelsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    .line 380
    return-void
.end method

.method public final declared-synchronized setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
    .locals 1
    .param p1, "predictionsListener"    # Lcom/touchtype_fluency/util/PredictionsListener;

    .prologue
    .line 918
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->g:Lcom/touchtype_fluency/util/PredictionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    monitor-exit p0

    return-void

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized storeDebugInfo(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;Lcom/touchtype_fluency/Predictions;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "history"    # Lcom/touchtype_fluency/TouchHistory;
    .param p2, "preSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p3, "postSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p4, "filter"    # Lcom/touchtype_fluency/ResultsFilter;
    .param p5, "predictions"    # Lcom/touchtype_fluency/Predictions;
    .param p7, "outputDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TouchHistory;",
            "Lcom/touchtype_fluency/Sequence;",
            "Lcom/touchtype_fluency/Sequence;",
            "Lcom/touchtype_fluency/ResultsFilter;",
            "Lcom/touchtype_fluency/Predictions;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1345
    .local p6, "punctuatorRulesPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    if-nez p7, :cond_0

    .line 1346
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputDirectory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1348
    :cond_0
    if-nez p6, :cond_1

    .line 1349
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "punctuatorRulesPathList is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_1
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Storing debug info in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2776
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2777
    invoke-static {v0}, Lcom/touchtype_fluency/util/b;->a(Ljava/io/File;)V

    .line 2778
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 2779
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2780
    invoke-static {v5}, Lcom/touchtype_fluency/util/b;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1365
    :try_start_3
    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->f(Ljava/io/File;)V

    .line 1366
    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->g(Ljava/io/File;)V

    .line 3408
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->getBlacklist()Ljava/lang/String;

    move-result-object v0

    .line 3409
    if-eqz v0, :cond_2

    .line 3410
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3411
    new-instance v2, Ljava/io/File;

    const-string v3, "blacklist.txt"

    invoke-direct {v2, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3413
    :try_start_4
    invoke-static {v1, v2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1372
    :cond_2
    :goto_0
    :try_start_5
    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->d(Ljava/io/File;)V

    .line 3503
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/InputMapper;->summariseMappings()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 3505
    :try_start_6
    const-string v1, "mappings.txt"

    invoke-static {v1, v5, v0}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1378
    :goto_1
    :try_start_7
    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->e(Ljava/io/File;)V

    .line 1381
    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->c(Ljava/io/File;)V

    .line 3755
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 3756
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 3757
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3759
    const-string v4, "SDK Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3760
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3761
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3762
    const-string v0, "LanguagePackManager Version: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3763
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3764
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3766
    :try_start_8
    const-string v0, "versions.txt"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1387
    :goto_2
    :try_start_9
    invoke-static {v5, p6}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;Ljava/util/List;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 1391
    invoke-static/range {v0 .. v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;Lcom/touchtype_fluency/Predictions;Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1398
    :try_start_a
    invoke-static {v5}, Lcom/touchtype_fluency/util/b;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    .line 1404
    monitor-exit p0

    return-object v0

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    :try_start_b
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error setting up the output directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    throw v0

    .line 3414
    :catch_1
    move-exception v1

    .line 3415
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Error copying "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3507
    :catch_2
    move-exception v0

    .line 3508
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing mappings.txt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3768
    :catch_3
    move-exception v0

    .line 3769
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing versions.txt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1399
    :catch_4
    move-exception v0

    .line 1400
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error zipping files in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public final submitTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 906
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method

.method public final declared-synchronized updateLiveLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 2
    .param p1, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p2, "listener"    # Lcom/touchtype_fluency/util/CompletionListener;

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/touchtype_fluency/util/SwiftKeySession$7;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    monitor-exit p0

    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final writeDynamicModel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    .line 1233
    if-eqz v0, :cond_0

    .line 1234
    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->write()V

    .line 1236
    :cond_0
    return-void
.end method
