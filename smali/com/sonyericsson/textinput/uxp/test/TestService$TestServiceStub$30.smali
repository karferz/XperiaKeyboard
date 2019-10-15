.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->activateBackupAndSync()Ljava/lang/String;
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
    .line 1356
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    return-object p1
.end method


# virtual methods
.method protected dispose()V
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-nez v0, :cond_0

    .line 1412
    :goto_0
    return-void

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$1100(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1364
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSettings(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 1365
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->jobComplete()V

    .line 1393
    :goto_0
    return-void

    .line 1375
    :cond_0
    new-instance v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$1;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .line 1383
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->mSettingListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->registerListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 1386
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1387
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    const-class v3, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1388
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1390
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "BackupAndSyncLoginActivity_Skip_User_Input"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1391
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1392
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
