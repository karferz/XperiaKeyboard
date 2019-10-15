.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->clearSyncedUserData()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object p1
.end method

.method private clearDeviceSyncMessageDatabase()V
    .locals 6

    .prologue
    .line 1485
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v2

    .line 1486
    .local v2, "settingsEditor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOldBackupAndSyncDataExists(Z)V

    .line 1487
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 1491
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    if-eqz v3, :cond_0

    .line 1502
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 1503
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .line 1505
    :cond_0
    new-instance v3, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$1;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;)V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .line 1514
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->registerListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 1517
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    move-result-object v1

    .line 1518
    .local v1, "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    if-eqz v1, :cond_1

    .line 1519
    new-instance v3, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "reinitialize"

    invoke-direct {v3, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 1525
    :goto_1
    return-void

    .line 1492
    .end local v1    # "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1521
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->setJobResult(Z)V

    .line 1522
    const-string v3, "No glue exists"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->setFailureMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 1523
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->jobComplete()V

    goto :goto_1
.end method


# virtual methods
.method protected dispose()V
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-nez v0, :cond_0

    .line 1544
    :goto_0
    return-void

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$1100(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSettings(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 1475
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->clearSyncedUserData(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V

    .line 1477
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->clearDeviceSyncMessageDatabase()V

    .line 1478
    return-void
.end method
