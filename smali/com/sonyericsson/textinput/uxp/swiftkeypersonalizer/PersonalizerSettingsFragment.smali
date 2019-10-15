.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;
.super Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;,
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;
    }
.end annotation


# static fields
.field private static final ESSENTIAL_PERMISSIONS_GMAIL:[Ljava/lang/String;

.field private static final ESSENTIAL_PERMISSIONS_SMS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static final WATCHER_WAIT:J = 0x1f4L


# instance fields
.field private final mAlertDialogManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;

.field private final mBackupAndSyncPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

.field private mContext:Landroid/content/Context;

.field private mEnableGooglePreference:Z

.field private mGmailPreference:Landroid/preference/Preference;

.field private final mMyWordsPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

.field private mPermissionManagerGmail:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

.field private mPermissionManagerSms:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

.field private mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSmsPreference:Landroid/preference/Preference;

.field private mTimedTask:Ljava/lang/Runnable;

.field private mUseRestrictedSessionType:Z

.field private mWatcherHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->ESSENTIAL_PERMISSIONS_SMS:[Ljava/lang/String;

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->ESSENTIAL_PERMISSIONS_GMAIL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mAlertDialogManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;

    .line 50
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mBackupAndSyncPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    .line 52
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mMyWordsPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mSmsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mGmailPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerGmail:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerSms:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->setPersonalizerPreferenceState()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkAccountAvailability()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 167
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isMarshmallowOrNewer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.GET_ACCOUNTS"

    .line 168
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->getDeviceGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 171
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v2, v0

    if-lez v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mEnableGooglePreference:Z

    .line 181
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :goto_1
    return-void

    .line 171
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 178
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mEnableGooglePreference:Z

    goto :goto_1
.end method

.method private getPersonalizerPreferences()Ljava/util/Vector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 384
    .local v9, "prefs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 385
    .local v10, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    .line 387
    .local v8, "preferenceCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_3

    .line 388
    invoke-virtual {v10, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 389
    .local v6, "preference":Landroid/preference/Preference;
    instance-of v11, v6, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    if-eqz v11, :cond_1

    move-object v5, v6

    .line 390
    check-cast v5, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    .line 391
    .local v5, "pref":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;
    invoke-virtual {v9, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v5    # "pref":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    :cond_1
    instance-of v11, v6, Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_0

    move-object v7, v6

    .line 393
    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 394
    .local v7, "preferenceCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    .line 395
    .local v2, "categoryPreferenceCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 396
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 397
    .local v1, "categoryPreference":Landroid/preference/Preference;
    instance-of v11, v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    if-eqz v11, :cond_2

    move-object v0, v1

    .line 398
    check-cast v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    .line 400
    .local v0, "catPref":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;
    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v0    # "catPref":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 405
    .end local v1    # "categoryPreference":Landroid/preference/Preference;
    .end local v2    # "categoryPreferenceCount":I
    .end local v4    # "j":I
    .end local v6    # "preference":Landroid/preference/Preference;
    .end local v7    # "preferenceCategory":Landroid/preference/PreferenceCategory;
    :cond_3
    return-object v9
.end method

.method private removeBackupAndSyncPreferences(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 197
    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07017a

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 200
    .local v1, "personalizerPreference":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070162

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 205
    .local v0, "backupAndSyncPreference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    .end local v0    # "backupAndSyncPreference":Landroid/preference/Preference;
    .end local v1    # "personalizerPreference":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private setPersonalizerPreferenceState()V
    .locals 10

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 301
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 373
    :cond_0
    return-void

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getPersonalizerPreferences()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    .line 306
    .local v4, "preference":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 308
    .local v7, "summaryResId":I
    const/4 v1, 0x1

    .line 311
    .local v1, "enabled":Z
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->isActive()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 312
    const/4 v6, 0x0

    .line 313
    .local v6, "state":I
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getPersonalizer()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 317
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getPersonalizer()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    move-result-object v3

    .line 318
    .local v3, "personalizer":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->getServiceId()I

    move-result v5

    .line 319
    .local v5, "serviceId":I
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->getPersonalizerState(I)I

    move-result v6

    .line 330
    .end local v3    # "personalizer":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    .end local v5    # "serviceId":I
    :cond_2
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 356
    :goto_2
    :pswitch_0
    const v8, 0x7f070178

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mEnableGooglePreference:Z

    if-nez v8, :cond_3

    .line 358
    const v7, 0x7f0700f3

    .line 360
    const/4 v1, 0x0

    .line 363
    :cond_3
    invoke-virtual {v4, v7}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->updateSummary(I)V

    .line 364
    invoke-virtual {v4, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->setEnabled(Z)V

    goto :goto_0

    .line 323
    :cond_4
    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getPersonalizerKeyToIdTable(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v8

    .line 325
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 326
    .restart local v5    # "serviceId":I
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->getPersonalizerState(I)I

    move-result v6

    goto :goto_1

    .line 336
    .end local v5    # "serviceId":I
    :pswitch_1
    const v7, 0x7f0700f0

    .line 338
    const/4 v1, 0x0

    .line 339
    goto :goto_2

    .line 342
    :pswitch_2
    const v7, 0x7f0700f9

    .line 344
    goto :goto_2

    .line 347
    :pswitch_3
    const v7, 0x7f0700f4

    .line 349
    goto :goto_2

    .line 370
    .end local v6    # "state":I
    :cond_5
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->clearSummary()V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setupGmailSettings(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 215
    .local v0, "preferenceCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070178

    .line 216
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mGmailPreference:Landroid/preference/Preference;

    .line 217
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mGmailPreference:Landroid/preference/Preference;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$3;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 234
    return-void
.end method

.method private setupMessagingSettings(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 239
    .local v0, "preferenceCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070179

    .line 240
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mSmsPreference:Landroid/preference/Preference;

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasSmsCapabilities(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mSmsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mSmsPreference:Landroid/preference/Preference;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$4;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private setupPersonalizerPreferences(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->setupGmailSettings(Landroid/preference/PreferenceScreen;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->setupMessagingSettings(Landroid/preference/PreferenceScreen;)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mBackupAndSyncPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mUseRestrictedSessionType:Z

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->setupPreferences(Landroid/preference/PreferenceScreen;Z)V

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mMyWordsPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mUseRestrictedSessionType:Z

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->setupPreferences(Landroid/preference/PreferenceScreen;Z)V

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->allowedToLearnWritingStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->removeBackupAndSyncPreferences(Landroid/preference/PreferenceScreen;)V

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAlertDialog(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mAlertDialogManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;->createAlertDialog(Landroid/app/AlertDialog;)V

    .line 77
    return-void
.end method

.method protected dismissAlertDialog()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mAlertDialogManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;->dismissAlertDialog()V

    .line 73
    return-void
.end method

.method protected getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mBackupAndSyncPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mMyWordsPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 132
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->setupPersonalizerPreferences(Landroid/preference/PreferenceScreen;)V

    .line 133
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 416
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerSms:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    if-nez v7, :cond_2

    move v1, v6

    .line 419
    .local v1, "handledByPermissionManager":Z
    :goto_0
    if-nez v1, :cond_0

    .line 420
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerGmail:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    if-nez v7, :cond_3

    move v1, v6

    .line 424
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 472
    :cond_1
    :goto_2
    return-void

    .line 416
    .end local v1    # "handledByPermissionManager":Z
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerSms:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    .line 417
    invoke-virtual {v7, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    goto :goto_0

    .line 420
    .restart local v1    # "handledByPermissionManager":Z
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerGmail:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    .line 421
    invoke-virtual {v7, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    goto :goto_1

    .line 428
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getPersonalizerPreferences()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    .line 430
    .local v3, "preference":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getPersonalizer()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    move-result-object v2

    .line 431
    .local v2, "personalizer":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getPersonalizer()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->getServiceId()I

    move-result v8

    if-ne v8, p1, :cond_5

    .line 434
    packed-switch p2, :pswitch_data_0

    .line 464
    :cond_6
    :goto_3
    :pswitch_0
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->onPersonalizerLogin(Landroid/content/Context;IILandroid/content/Intent;)V

    goto :goto_2

    .line 439
    :pswitch_1
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->getServiceId()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_6

    .line 441
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700f0

    .line 442
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 441
    invoke-virtual {v3, v6}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 453
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700f4

    .line 454
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getPersonalizer()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "serviceName":Ljava/lang/String;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v6

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 434
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v1, 0x7f05015a

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mBackupAndSyncPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->init(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mMyWordsPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->init(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V

    .line 91
    new-instance v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getPersonalizerPreferences()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    .line 93
    .local v0, "preference":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->setPersonalizationStarter(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference$IPersonalizationCreator;)V

    goto :goto_0

    .line 95
    .end local v0    # "preference":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;
    :cond_0
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->ESSENTIAL_PERMISSIONS_SMS:[Ljava/lang/String;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    new-instance v5, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerSms:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerSms:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->setPermissionManagerId(I)V

    .line 108
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->ESSENTIAL_PERMISSIONS_GMAIL:[Ljava/lang/String;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    new-instance v5, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$2;

    invoke-direct {v5, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$2;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerGmail:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerGmail:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->setPermissionManagerId(I)V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mBackupAndSyncPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->onDestroy()V

    .line 150
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onDestroy()V

    .line 151
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mContext:Landroid/content/Context;

    .line 144
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onDetach()V

    .line 145
    return-void
.end method

.method public onPersonalizerManagerActivation()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->setPersonalizerPreferenceState()V

    .line 271
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerSms:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerSms:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerGmail:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPermissionManagerGmail:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 265
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 266
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->checkAccountAvailability()V

    .line 139
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mBackupAndSyncPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mMyWordsPreferencesHandler:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onStart()V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->setPersonalizerManagerListener(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;)V

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->bindToService(Landroid/content/Context;)V

    .line 279
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    .line 280
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onStop()V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->setPersonalizerManagerListener(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;)V

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->unbindFromService(Landroid/content/Context;)V

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mAlertDialogManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$AlertDialogManager;->dismissAlertDialog()V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method public resetAllStoredStates()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->resetAllStoredStates()V

    .line 156
    return-void
.end method

.method public setSessionType(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionType"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "restricted-personalization"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->mUseRestrictedSessionType:Z

    .line 69
    return-void
.end method
