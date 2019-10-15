.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;
.super Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;
.source "BackupAndSyncAboutFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEVICE_LAST_SYNC:Ljava/lang/String; = "lastSync"

.field private static final DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPersonalDataPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;-><init>()V

    return-void
.end method

.method private addSyncedDevicesPreferences(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/preference/PreferenceGroup;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p3, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 100
    .line 101
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f0700a3

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 105
    invoke-interface/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastSyncTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->getDeviceActivityTimeInfo(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 101
    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->createSyncedDevicePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 108
    invoke-interface/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getOtherDevicesInfo()Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "otherDevicesInfo":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 111
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 112
    .local v10, "jsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v9, v12, :cond_2

    .line 113
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 115
    .local v2, "deviceInfo":Lorg/json/JSONObject;
    const-string v12, "deviceName"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "deviceName":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 117
    const-string v12, "lastSync"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "deviceLastSyncString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 119
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 120
    .local v4, "deviceLastSync":J
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->getDeviceActivityTimeInfo(J)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "deviceListSyncInfo":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v7, v6}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->createSyncedDevicePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v3    # "deviceLastSyncString":Ljava/lang/String;
    .end local v4    # "deviceLastSync":J
    .end local v6    # "deviceListSyncInfo":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 119
    .restart local v3    # "deviceLastSyncString":Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 125
    .end local v2    # "deviceInfo":Lorg/json/JSONObject;
    .end local v3    # "deviceLastSyncString":Ljava/lang/String;
    .end local v7    # "deviceName":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 126
    .local v8, "e":Lorg/json/JSONException;
    sget-object v12, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method

.method private static createSyncedDevicePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lastSyncedInformation"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    return-object v0
.end method

.method private getDeviceActivityTimeInfo(J)Ljava/lang/String;
    .locals 9
    .param p1, "deviceLastSync"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 134
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0700a1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    move-wide v0, p1

    .line 136
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private openBenefitInfoAndPrivacyPolicyDialog()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "TI_FragmentPrivacyPolicyAbout"

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 60
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 62
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 63
    .local v6, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    .line 65
    .local v4, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    const v7, 0x7f050156

    invoke-virtual {p0, v7}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 68
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const v7, 0x7f07015f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->mPersonalDataPreference:Landroid/preference/Preference;

    .line 70
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->mPersonalDataPreference:Landroid/preference/Preference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 74
    .local v0, "accountPreference":Landroid/preference/Preference;
    invoke-static {v4, v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->getCloudLoginTypeSummary(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070161

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 80
    .local v5, "syncedDevicesGroup":Landroid/preference/PreferenceGroup;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 81
    invoke-direct {p0, v1, v4, v5}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->addSyncedDevicesPreferences(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/preference/PreferenceGroup;)V

    .line 82
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->mPersonalDataPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;->openBenefitInfoAndPrivacyPolicyDialog()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
