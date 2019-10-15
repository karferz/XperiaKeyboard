.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;
.super Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$1;

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getTestHook()Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v0

    return-object v0
.end method

.method private getMainHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->mHandler:Landroid/os/Handler;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getTestHook()Lcom/sonyericsson/textinput/uxp/test/TestHook;
    .locals 2

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;-><init>()V

    .line 616
    .local v0, "testHookFactory":Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;->createInstanceWithOldParameters()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/test/TestHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 615
    .end local v0    # "testHookFactory":Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private waitForDictionaries(Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;)V
    .locals 6
    .param p1, "job"    # Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;

    .prologue
    .line 800
    const/4 v1, 0x0

    .line 802
    .local v1, "tryCount":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 803
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 804
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->access$600(Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tryCount":I
    .local v2, "tryCount":I
    const/16 v3, 0x14

    if-ge v1, v3, :cond_0

    .line 806
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 811
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    move v1, v2

    .end local v2    # "tryCount":I
    .restart local v1    # "tryCount":I
    goto :goto_0

    .line 807
    .end local v1    # "tryCount":I
    .restart local v2    # "tryCount":I
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v1, v2

    .line 813
    .end local v2    # "tryCount":I
    .restart local v1    # "tryCount":I
    :cond_1
    return-void
.end method


# virtual methods
.method public activateBackupAndSync()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1354
    const-string v2, "activateBackupAndSync"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$800(Ljava/lang/String;)V

    .line 1356
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V

    .line 1415
    .local v1, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1417
    const v2, 0xc350

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete(I)Z

    move-result v0

    .line 1419
    .local v0, "isSuccessful":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateBackupAndSync isSuccessful:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1421
    if-nez v0, :cond_0

    .line 1422
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->getFailureMessage()Ljava/lang/String;

    move-result-object v2

    .line 1424
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public activateLearning(Ljava/lang/String;)V
    .locals 7
    .param p1, "learningType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1562
    const-string v4, "activateLearning"

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$800(Ljava/lang/String;)V

    .line 1564
    const-string v4, "TI_TestService"

    const-string v5, "activateLearning"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 1575
    new-instance v4, Landroid/os/RemoteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown learningType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1567
    :sswitch_0
    const-string v5, "GMail"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "SMS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 1569
    :pswitch_0
    const/4 v2, 0x2

    .line 1578
    .local v2, "serviceId":I
    :goto_1
    move v3, v2

    .line 1580
    .local v3, "serviceIdToTest":I
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;I)V

    .line 1655
    .local v1, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1656
    const v4, 0xea60

    invoke-virtual {v1, v4}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete(I)Z

    move-result v0

    .line 1658
    .local v0, "isSuccessful":Z
    const-string v4, "activateLearning"

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1660
    if-nez v0, :cond_1

    .line 1661
    new-instance v4, Landroid/os/RemoteException;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->getFailureMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1572
    .end local v0    # "isSuccessful":Z
    .end local v1    # "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    .end local v2    # "serviceId":I
    .end local v3    # "serviceIdToTest":I
    :pswitch_1
    const/4 v2, 0x5

    .line 1573
    .restart local v2    # "serviceId":I
    goto :goto_1

    .line 1664
    .restart local v0    # "isSuccessful":Z
    .restart local v1    # "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    .restart local v3    # "serviceIdToTest":I
    :cond_1
    return-void

    .line 1567
    nop

    :sswitch_data_0
    .sparse-switch
        0x14139 -> :sswitch_1
        0x40cfe9e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public activateMeasurements(Z)V
    .locals 0
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1668
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->setMeasurementActive(Z)V

    .line 1669
    return-void
.end method

.method public addActiveLanguageLayout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "layout"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 661
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$3;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 676
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addActiveLanguageLayout language:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " layout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public clearActiveLanguageLayouts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 703
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$5;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V

    .line 715
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 716
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 717
    const-string v1, "clearActiveLanguageLayouts"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public clearDevicePredictionData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1429
    const-string v1, "clearDevicePredictionData"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$800(Ljava/lang/String;)V

    .line 1431
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$31;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$31;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V

    .line 1439
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1440
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1441
    const-string v1, "clearDevicePredictionData"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1442
    return-void
.end method

.method public clearEmojiUsageDatabase()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1446
    const-string v1, "clearEmojiUsageDatabase"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$800(Ljava/lang/String;)V

    .line 1447
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$32;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$32;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V

    .line 1455
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1456
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1457
    const-string v1, "clearEmojiUsageDatabase"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1458
    return-void
.end method

.method public clearSharedPreferences(Z)V
    .locals 2
    .param p1, "disablePopups"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1211
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1212
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$24;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$24;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Z)V

    .line 1228
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1229
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1230
    const-string v1, "clearSharedPreferences"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method public clearSyncedUserData()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1462
    const-string v2, "clearSyncedUserData"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$800(Ljava/lang/String;)V

    .line 1464
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V

    .line 1547
    .local v1, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1548
    const v2, 0xc350

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete(I)Z

    move-result v0

    .line 1550
    .local v0, "isSuccessful":Z
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->cancelCancelableTasks()V

    .line 1552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSyncedUserData isSuccessful:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1554
    if-nez v0, :cond_0

    .line 1555
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->getFailureMessage()Ljava/lang/String;

    move-result-object v2

    .line 1557
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getCandidateLayout()[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1001
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1002
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1005
    .local v2, "mainHandler":Landroid/os/Handler;
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Landroid/os/Handler;Ljava/util/List;)V

    .line 1039
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1040
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1041
    const-string v3, "getCandidateLayout"

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1042
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sonyericsson/textinput/uxp/test/TestKey;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/textinput/uxp/test/TestKey;

    return-object v3
.end method

.method public getEmojiBottomRow()[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 895
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/util/List;)V

    .line 924
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 925
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 926
    const-string v2, "getEmojiBottomRow"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 927
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sonyericsson/textinput/uxp/test/TestKey;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/textinput/uxp/test/TestKey;

    return-object v2
.end method

.method public getEmojiLayout()[Lcom/sonyericsson/textinput/uxp/test/TestEmoji;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 818
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/test/TestEmoji;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$10;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$10;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/util/ArrayList;)V

    .line 849
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 850
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 852
    const-string v2, "getEmojiLayout"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sonyericsson/textinput/uxp/test/TestEmoji;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/textinput/uxp/test/TestEmoji;

    return-object v2
.end method

.method public getEmojiTabs()[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 859
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$11;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$11;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/util/List;)V

    .line 886
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 887
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 888
    const-string v2, "getEmojiTabs"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 889
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sonyericsson/textinput/uxp/test/TestKey;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/textinput/uxp/test/TestKey;

    return-object v2
.end method

.method public getKeyboardConstraints()Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1314
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V

    .line 1316
    .local v1, "keyboardConstraints":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<Landroid/graphics/Rect;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$28;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$28;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;)V

    .line 1327
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1328
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyboardConstraints value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1330
    iget-object v2, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    return-object v2
.end method

.method public getKeyboardLayout()[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 723
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$6;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$6;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/util/ArrayList;)V

    .line 735
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->waitForDictionaries(Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;)V

    .line 737
    const-string v2, "getKeyboardLayout"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sonyericsson/textinput/uxp/test/TestKey;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/textinput/uxp/test/TestKey;

    return-object v2
.end method

.method public getKeyboardShiftState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1336
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V

    .line 1337
    .local v0, "currentShiftState":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$29;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$29;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;)V

    .line 1346
    .local v1, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1347
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyboardShiftState value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1349
    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getLanguages()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 932
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 933
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v1, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$13;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$13;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/util/List;)V

    .line 948
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 949
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 950
    const-string v2, "getLanguages"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 951
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getLayouts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 956
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 957
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;Ljava/util/List;)V

    .line 972
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 973
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 974
    const-string v2, "getLayouts"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 975
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getPreviewShowTime()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1673
    new-instance v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V

    .line 1675
    .local v2, "measureTime":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x1e

    if-gt v0, v3, :cond_0

    .line 1676
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$35;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$35;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;)V

    .line 1684
    .local v1, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1685
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1690
    .end local v1    # "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    :cond_0
    const-string v3, "getPreviewShowTime"

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1691
    iget-object v3, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4

    .line 1688
    .restart local v1    # "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    :cond_1
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPrimaryLanguageIso3()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V

    .line 765
    .local v1, "languageIso3Value":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<Ljava/lang/String;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$8;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$8;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;)V

    .line 775
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 776
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 778
    iget-object v2, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getPrimaryLayoutId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 743
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V

    .line 745
    .local v1, "layoutIdValue":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<Ljava/lang/String;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$7;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$7;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;)V

    .line 755
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 756
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 758
    iget-object v2, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getSharedPreferenceInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1235
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1236
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V

    .line 1237
    .local v1, "sharedPreferenceValue":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$25;

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$25;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;Ljava/lang/String;)V

    .line 1252
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1253
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSharedPreferenceInt key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1256
    iget-object v2, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getSharedPreferenceLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1261
    const-string v2, "getSharedPreferenceLong"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$800(Ljava/lang/String;)V

    .line 1262
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V

    .line 1263
    .local v1, "sharedPreferenceValue":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<Ljava/lang/Long;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$26;

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$26;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;Ljava/lang/String;)V

    .line 1278
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1279
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSharedPreferenceLong key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1282
    iget-object v2, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public getSharedPreferenceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1287
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1288
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V

    .line 1289
    .local v1, "sharedPreferenceValue":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<Ljava/lang/String;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;Ljava/lang/String;)V

    .line 1304
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1305
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSharedPreferenceString key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1308
    iget-object v2, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public isCandidateBarHidden()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 639
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 640
    const/4 v2, 0x1

    new-array v1, v2, [Z

    aput-boolean v4, v1, v4

    .line 641
    .local v1, "result":[Z
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$2;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$2;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;[Z)V

    .line 651
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 652
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCandidateBarShown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-boolean v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 654
    aget-boolean v2, v1, v4

    return v2
.end method

.method public isInputViewShown()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 622
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$1;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V

    .line 631
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    move-result v1

    .line 633
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInputViewShown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 634
    return v1
.end method

.method public reInitializeTextInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1081
    const-string v1, "reInitializeTextInput"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$800(Ljava/lang/String;)V

    .line 1082
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$18;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$18;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V

    .line 1092
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->waitForDictionaries(Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;)V

    .line 1093
    const-string v1, "reInitializeTextInput"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method public removeLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 683
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$4;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$4;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;)V

    .line 695
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLanguage language:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method public setInputMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 980
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 981
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$15;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$15;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;)V

    .line 994
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 995
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 996
    const-string v1, "setInputMode"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public setPrimaryLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "languageIso3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 784
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$9;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$9;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;)V

    .line 794
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimaryLanguage language:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public setSetupWizardDisabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1099
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$19;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$19;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V

    .line 1112
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1113
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1114
    const-string v1, "setSetupWizardDisabled"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1115
    return-void
.end method

.method public setSharedPreference(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1120
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1121
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$20;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;Z)V

    .line 1135
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1136
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1137
    const-string v1, "setSharedPreference"

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public setSharedPreferenceInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1144
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$21;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;I)V

    .line 1158
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1159
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSharedPreferenceInt key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1161
    return-void
.end method

.method public setSharedPreferenceLong(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1167
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$22;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$22;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;J)V

    .line 1181
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1182
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSharedPreferenceLong key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1184
    return-void
.end method

.method public setSharedPreferenceString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1189
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1190
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$23;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1205
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSharedPreferenceString key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method public waitForPendingPredictions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$100()V

    .line 1049
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1050
    .local v1, "mainHandler":Landroid/os/Handler;
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Landroid/os/Handler;)V

    .line 1073
    .local v0, "job":Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1074
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;->waitForJobToComplete()Z

    .line 1075
    const-string v2, "waitForPendingPredictions"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$200(Ljava/lang/String;)V

    .line 1076
    return-void
.end method
