.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;
.super Ljava/lang/Object;
.source "BackupAndSyncPreferencesHandler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;
    }
.end annotation


# static fields
.field private static final KEY_STATE:Ljava/lang/String; = "KEY_BackupAndSyncPreferencesHandler_State"

.field public static final SEN_ACCOUNT_TYPE:Ljava/lang/String; = "com.sony.snei.np.android.account"


# instance fields
.field private mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

.field private mBackupAndSyncAboutPreference:Landroid/preference/Preference;

.field private mBackupAndSyncPreference:Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

.field private mBackupAndSyncPreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

.field private mResources:Landroid/content/res/Resources;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->IDLE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->getNumberOfConnectedDevices()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->deactivateBackupAndSync()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->unregisterDeviceFromBackupServer()V

    return-void
.end method

.method static synthetic access$302(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->createDeactivatedDialog()V

    return-void
.end method

.method private authenticateBackupAndSyncAccount()V
    .locals 3

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method private createConfirmDeactivationDialog()V
    .locals 4

    .prologue
    .line 225
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->dismissAlertDialog()V

    .line 226
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 230
    const v2, 0x7f070015

    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    const v2, 0x7f070013

    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$2;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    new-instance v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$3;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 268
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 269
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->createAlertDialog(Landroid/app/AlertDialog;)V

    .line 270
    return-void
.end method

.method private createDeactivatedDialog()V
    .locals 4

    .prologue
    .line 273
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->dismissAlertDialog()V

    .line 275
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 278
    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 282
    const v2, 0x7f0700ae

    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$4;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$4;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    const v2, 0x7f0700ad

    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$5;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$5;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    new-instance v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$6;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$6;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 316
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 318
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->createAlertDialog(Landroid/app/AlertDialog;)V

    .line 319
    return-void
.end method

.method private deactivateBackupAndSync()V
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 219
    .local v0, "settingsEditor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setBackupAndSync(Z)V

    .line 220
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 221
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->cancelCancelableTasks()V

    .line 222
    return-void
.end method

.method public static getCloudLoginTypeSummary(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v0

    .line 58
    .local v0, "cloudLoginIdToken":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v1

    .line 60
    .local v1, "cloudLoginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :goto_0
    sget-object v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$7;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudLoginType:[I

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 69
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 59
    .end local v1    # "cloudLoginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    goto :goto_0

    .line 63
    .restart local v1    # "cloudLoginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :pswitch_0
    const v2, 0x7f0700b9

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 66
    :pswitch_1
    const v2, 0x7f0700b1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNumberOfConnectedDevices()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCurrentNumberOfDevices()I

    move-result v0

    return v0
.end method

.method private sendAnalyticsData()V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v0

    .line 152
    .local v0, "active":Z
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushBackupAndSyncEnabledEvent(Z)V

    .line 154
    .end local v0    # "active":Z
    :cond_0
    return-void
.end method

.method private setBackupAndSyncAboutPreferenceSummary(Z)V
    .locals 7
    .param p1, "isBackupAndSyncActive"    # Z

    .prologue
    const/4 v4, 0x1

    .line 194
    if-eqz p1, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->getNumberOfConnectedDevices()I

    move-result v0

    .line 196
    .local v0, "numberOfConnectedDevices":I
    if-ne v0, v4, :cond_0

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncAboutPreference:Landroid/preference/Preference;

    const v2, 0x7f0700b8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 207
    .end local v0    # "numberOfConnectedDevices":I
    :goto_0
    return-void

    .line 200
    .restart local v0    # "numberOfConnectedDevices":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncAboutPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0700b2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 200
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    .end local v0    # "numberOfConnectedDevices":I
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncAboutPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setBackupAndSyncPreferenceSummary(Z)V
    .locals 3
    .param p1, "isBackupAndSyncActive"    # Z

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreference:Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->getCloudLoginTypeSummary(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreference:Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private unregisterDeviceFromBackupServer()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->unregisterDevice(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V

    .line 215
    return-void
.end method


# virtual methods
.method public init(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->registerListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mResources:Landroid/content/res/Resources;

    .line 80
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->values()[Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    move-result-object v0

    const-string v1, "KEY_BackupAndSyncPreferencesHandler_State"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->IDLE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    .line 90
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 84
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreference:Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreference:Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->authenticateBackupAndSyncAccount()V

    .line 181
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0700f2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->makeToastIfNeededAndShow(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 176
    :cond_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->SHOWING_CONFIRM_DEACTIVATION_DIALOG:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    .line 177
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->createConfirmDeactivationDialog()V

    goto :goto_0

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const-string v0, "KEY_BackupAndSyncPreferencesHandler_State"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public onSettingsChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_BACKUP_AND_SYNC:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->sendAnalyticsData()V

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->refreshPreferences()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_NUMBER_OF_DEVICES:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->refreshPreferences()V

    goto :goto_0
.end method

.method public refreshPreferences()V
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreferenceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v0

    .line 127
    .local v0, "isBackupAndSyncEnabled":Z
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreference:Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;->setChecked(Z)V

    .line 128
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->setBackupAndSyncPreferenceSummary(Z)V

    .line 129
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->setBackupAndSyncAboutPreferenceSummary(Z)V

    .line 131
    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncAboutPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 137
    .end local v0    # "isBackupAndSyncEnabled":Z
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v0    # "isBackupAndSyncEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncAboutPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public setupPreferences(Landroid/preference/PreferenceScreen;Z)V
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "isRestrictedSession"    # Z

    .prologue
    const v1, 0x7f070162

    .line 97
    if-eqz p2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mResources:Landroid/content/res/Resources;

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mResources:Landroid/content/res/Resources;

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07015c

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreference:Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreference:Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreference:Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/PassiveSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07015d

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mBackupAndSyncAboutPreference:Landroid/preference/Preference;

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->refreshPreferences()V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->SHOWING_CONFIRM_DEACTIVATION_DIALOG:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    if-ne v0, v1, :cond_2

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->createConfirmDeactivationDialog()V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->mState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->SHOWING_DEACTIVATED_DIALOG:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    if-ne v0, v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->createDeactivatedDialog()V

    goto :goto_0
.end method
