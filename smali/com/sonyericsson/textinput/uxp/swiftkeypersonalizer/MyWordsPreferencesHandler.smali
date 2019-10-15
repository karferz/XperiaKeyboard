.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;
.super Ljava/lang/Object;
.source "MyWordsPreferencesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;
    }
.end annotation


# static fields
.field private static final ALERT_DIALOG_STATE:Ljava/lang/String; = "KEY_ALERT_DIALOG_STATE"


# instance fields
.field private mAlertDialogState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

.field private mContext:Landroid/app/Activity;

.field private mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

.field private mResources:Landroid/content/res/Resources;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;->NONE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mAlertDialogState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mAlertDialogState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->createClearUserDataFromDeviceDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->getNumberOfConnectedDevices()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->createClearUserDataFromServerDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->clearUserDataFromCloudServer()V

    return-void
.end method

.method private clearUserDataFromCloudServer()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->deleteUserData(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method private createClearUserDataFromDeviceDialog()V
    .locals 4

    .prologue
    .line 97
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->dismissAlertDialog()V

    .line 99
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 102
    const v2, 0x7f0700c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const v2, 0x7f070013

    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$3;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$3;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    const v2, 0x7f0700be

    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$4;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$4;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    new-instance v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$5;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 140
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 141
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->createAlertDialog(Landroid/app/AlertDialog;)V

    .line 142
    return-void
.end method

.method private createClearUserDataFromServerDialog()V
    .locals 4

    .prologue
    .line 150
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->dismissAlertDialog()V

    .line 152
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0700bc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 156
    const v2, 0x7f0700bd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 159
    const v2, 0x7f0700ae

    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$6;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$6;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    const v2, 0x7f0700ad

    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$7;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    new-instance v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$8;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 186
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 187
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->createAlertDialog(Landroid/app/AlertDialog;)V

    .line 188
    return-void
.end method

.method private getNumberOfConnectedDevices()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCurrentNumberOfDevices()I

    move-result v0

    return v0
.end method


# virtual methods
.method public init(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V
    .locals 1
    .param p1, "personalizerSettingsFragment"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mFragment:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mContext:Landroid/app/Activity;

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mResources:Landroid/content/res/Resources;

    .line 45
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;->values()[Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    move-result-object v0

    const-string v1, "KEY_ALERT_DIALOG_STATE"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;->NONE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    .line 197
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;->ordinal()I

    move-result v2

    .line 196
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mAlertDialogState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    .line 199
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    const-string v0, "KEY_ALERT_DIALOG_STATE"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mAlertDialogState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method public setupPreferences(Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "isRestrictedSession"    # Z

    .prologue
    .line 48
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070172

    .line 49
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 51
    .local v2, "preferenceCategory":Landroid/preference/PreferenceCategory;
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070171

    .line 55
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 56
    .local v1, "myWordsPreference":Landroid/preference/Preference;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$1;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070164

    .line 71
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 73
    .local v0, "clearLanguageDataPreference":Landroid/preference/Preference;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$2;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V

    .line 74
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    sget-object v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$9;->$SwitchMap$com$sonyericsson$textinput$uxp$swiftkeypersonalizer$MyWordsPreferencesHandler$AlertDialogState:[I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->mAlertDialogState:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->createClearUserDataFromDeviceDialog()V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->createClearUserDataFromServerDialog()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
