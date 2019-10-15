.class Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;
.super Ljava/lang/Object;
.source "BackupAndSyncLoginActivity.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;
.implements Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V

    return-void
.end method


# virtual methods
.method public onFlowEnd(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "notifyUser"    # Z

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->access$300(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    if-eqz p2, :cond_1

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->access$200(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    goto :goto_0
.end method

.method public onPermissionResult(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 471
    if-eqz p1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->access$700(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    goto :goto_0
.end method

.method public onTokenReceived(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
    .locals 2
    .param p1, "idToken"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .prologue
    .line 460
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->access$300(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->access$402(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .line 462
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->access$500(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 463
    .local v0, "settingsEditor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudIdToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V

    .line 464
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 465
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->access$600(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V

    .line 467
    .end local v0    # "settingsEditor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_0
    return-void
.end method
