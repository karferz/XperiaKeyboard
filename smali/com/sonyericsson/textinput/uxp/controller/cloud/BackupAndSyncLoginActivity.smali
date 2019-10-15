.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;
.super Landroid/app/Activity;
.source "BackupAndSyncLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;,
        Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;
    }
.end annotation


# static fields
.field private static final ACCEPT_TERMS_REQUEST_CODE:I = 0x66

.field private static final DEBUG:Z = false

.field private static final KEY_MANAGER_STATE:Ljava/lang/String; = "KEY_BackupAndSyncLoginActivity_ManagerState"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_BackupAndSyncLoginActivity_State"

.field private static final KEY_TOKEN_DATA:Ljava/lang/String; = "KEY_BackupAndSyncLoginActivity_TokenData"

.field private static final KEY_TOKEN_TYPE:Ljava/lang/String; = "KEY_BackupAndSyncLoginActivity_TokenType"

.field private static final REQUEST_DIALOG_FAILURE:I = 0x65

.field public static final SKIP_USER_INPUT:Ljava/lang/String; = "BackupAndSyncLoginActivity_Skip_User_Input"

.field protected static final TAG:Ljava/lang/String; = "TI_SyncLogin"


# instance fields
.field private mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field private mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

.field private mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

.field private mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

.field private mIsActivityDestroyed:Z

.field private mManagerListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;

.field private mPermissionManager:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSkipUserInput:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIsActivityDestroyed:Z

    .line 72
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->activateBackupAndSync()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->showFailureDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIsActivityDestroyed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->requestCloudAccessToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->connectAndGetTicket()V

    return-void
.end method

.method private activateBackupAndSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 420
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 421
    .local v0, "settingsEditor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setBackupAndSync(Z)V

    .line 422
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudNudgeShown()V

    .line 423
    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCurrentNumberOfDevices(I)V

    .line 424
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOldBackupAndSyncDataExists(Z)V

    .line 425
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 427
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-static {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->runSyncInit(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V

    .line 428
    return-void
.end method

.method private connectAndGetTicket()V
    .locals 3

    .prologue
    .line 178
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->CONNECT_AND_GET_TICKET:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 179
    invoke-direct {p0, p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->showProgressDialog(Landroid/content/Context;)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;->connectAndGetIdToken(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V

    .line 183
    :cond_0
    return-void
.end method

.method private continueConnectToCloudFlow()V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$BackupAndSyncLoginActivity$State:[I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    :pswitch_0
    return-void

    .line 139
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->launchTermsAndLoginSelector()V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->connectAndGetTicket()V

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->requestCloudAccessToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createManagers(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V
    .locals 4
    .param p1, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 249
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudLoginType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudLoginType in wrong state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mManagerListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    .line 256
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    .line 257
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;->getEssentialPermissions()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    .line 258
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;->getOptionalPermissions()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mManagerListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mPermissionManager:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    .line 260
    return-void

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 274
    :cond_0
    return-void
.end method

.method private static getActivityFlowStateFromSavedInstanceState(Landroid/os/Bundle;)Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;
    .locals 3
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    move-result-object v0

    const-string v1, "KEY_BackupAndSyncLoginActivity_State"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->ordinal()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getLoginManagerFlowStateFromSavedInstanceState(Landroid/os/Bundle;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    .locals 3
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    move-result-object v0

    const-string v1, "KEY_BackupAndSyncLoginActivity_ManagerState"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->NOT_CREATED:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    .line 83
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->ordinal()I

    move-result v2

    .line 82
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getStateFromIntentExtras()Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .local v0, "extrasBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "BackupAndSyncLoginActivity_Skip_User_Input"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mSkipUserInput:Z

    .line 168
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mSkipUserInput:Z

    if-eqz v1, :cond_1

    .line 169
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->CONNECT_AND_GET_TICKET:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 171
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    goto :goto_0
.end method

.method private handleAcceptTermsActivityResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 358
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_2

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    .line 383
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 366
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 367
    const-string v1, "cloud_login_type"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 369
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->ordinal()I

    move-result v2

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 367
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->safeGetValue(I)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->createManagers(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mPermissionManager:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->checkPermissions()V

    goto :goto_0

    .line 379
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    goto :goto_0
.end method

.method private launchTermsAndLoginSelector()V
    .locals 2

    .prologue
    .line 236
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->SHOWING_TERMS_AND_LOGIN_SELECTOR:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 238
    const-string v1, "TI_FragmentPrivacyPolicyAndLoginSelection"

    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    .local v0, "dialogIntent":Landroid/content/Intent;
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    return-void
.end method

.method private requestCloudAccessToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
    .locals 4
    .param p1, "idToken"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    const-string v0, "TI_SyncLogin"

    const-string v1, "requestCloudAccessToken with null id token"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    .line 414
    :goto_0
    return-void

    .line 396
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->REQUEST_CLOUD_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 397
    invoke-direct {p0, p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->showProgressDialog(Landroid/content/Context;)V

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getTokenData()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V

    .line 398
    invoke-static {v0, p0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->runCreateCloudAccessToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;)V

    goto :goto_0
.end method

.method private showFailureDialog()V
    .locals 2

    .prologue
    .line 281
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mSkipUserInput:Z

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    .line 287
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->SHOWING_FAILURE_DIALOG:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 288
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->dismissProgressDialog()V

    .line 290
    const v1, 0x7f0700e8

    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->newFailureDialogIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 292
    .local v0, "dialogIntent":Landroid/content/Intent;
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 293
    return-void
.end method

.method private showProgressDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->dismissProgressDialog()V

    .line 301
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->FINISHED:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 302
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 303
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 312
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    if-nez v2, :cond_2

    move v0, v1

    .line 315
    .local v0, "handledByManager":Z
    :goto_0
    if-nez v0, :cond_0

    .line 316
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mPermissionManager:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    if-nez v2, :cond_3

    move v0, v1

    .line 320
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 321
    packed-switch p1, :pswitch_data_0

    .line 332
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    .line 336
    :cond_1
    :goto_2
    return-void

    .line 312
    .end local v0    # "handledByManager":Z
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    .line 313
    invoke-interface {v2, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 316
    .restart local v0    # "handledByManager":Z
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mPermissionManager:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    .line 317
    invoke-virtual {v1, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_1

    .line 323
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->handleAcceptTermsActivityResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 326
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    goto :goto_2

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 92
    .local v2, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 93
    new-instance v3, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;

    invoke-direct {v3, p0, v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;)V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mManagerListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$ManagerListenerImpl;

    .line 95
    if-eqz p1, :cond_3

    .line 97
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->getActivityFlowStateFromSavedInstanceState(Landroid/os/Bundle;)Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 98
    const-string v3, "KEY_BackupAndSyncLoginActivity_TokenType"

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 99
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 98
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->safeGetValue(I)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 102
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->getLoginManagerFlowStateFromSavedInstanceState(Landroid/os/Bundle;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    move-result-object v1

    .line 103
    .local v1, "loginManagerFlowState":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->NOT_CREATED:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    if-eq v1, v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->createManagers(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V

    .line 106
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    invoke-interface {v3, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;->restoreState(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;)V

    .line 110
    :cond_0
    const-string v3, "KEY_BackupAndSyncLoginActivity_TokenData"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "idTokenData":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 112
    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    new-instance v3, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-direct {v3, v4, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .line 122
    .end local v0    # "idTokenData":Ljava/lang/String;
    .end local v1    # "loginManagerFlowState":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    if-nez v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->continueConnectToCloudFlow()V

    .line 134
    return-void

    .line 115
    .restart local v0    # "idTokenData":Ljava/lang/String;
    .restart local v1    # "loginManagerFlowState":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    :cond_2
    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    goto :goto_0

    .line 119
    .end local v0    # "idTokenData":Ljava/lang/String;
    .end local v1    # "loginManagerFlowState":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->getStateFromIntentExtras()Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIsActivityDestroyed:Z

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;->dispose()V

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->dismissProgressDialog()V

    .line 225
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;->dispose()V

    .line 210
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 341
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mPermissionManager:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mPermissionManager:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    const-string v0, "KEY_BackupAndSyncLoginActivity_State"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mActivityFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "KEY_BackupAndSyncLoginActivity_ManagerState"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginManager:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;->getFlowState()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    :goto_0
    const-string v0, "KEY_BackupAndSyncLoginActivity_TokenType"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "KEY_BackupAndSyncLoginActivity_TokenData"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->mIdToken:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getTokenData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void

    .line 191
    :cond_1
    const-string v0, "KEY_BackupAndSyncLoginActivity_ManagerState"

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->NOT_CREATED:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
