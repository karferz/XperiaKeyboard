.class public Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;
.super Ljava/lang/Object;
.source "DirectBootConfig.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;


# static fields
.field private static final EXTENSIVE_DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mSharedPreferenceCredentialKeys:[Ljava/lang/String;


# instance fields
.field private mIsEnabled:Z

.field private mSecureSharedPrefs:Landroid/content/SharedPreferences;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cloud_id_token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSharedPreferenceCredentialKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mIsEnabled:Z

    .line 42
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mIsEnabled:Z

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "deviceProtectedContext":Landroid/content/Context;
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getSharedPreferenceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getSharedPreferenceMode()I

    move-result v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSecureSharedPrefs:Landroid/content/SharedPreferences;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 47
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1, p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->registerListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 49
    .end local v0    # "deviceProtectedContext":Landroid/content/Context;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSharedPreferences()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mIsEnabled:Z

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSecureSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public copySharedPreferences()V
    .locals 8

    .prologue
    .line 75
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mIsEnabled:Z

    if-nez v5, :cond_0

    .line 105
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    check-cast v5, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 79
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSecureSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 80
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 83
    .local v4, "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 84
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 85
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/util/Set;

    if-eqz v6, :cond_3

    .line 86
    check-cast v4, Ljava/util/Set;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 87
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 88
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 89
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_5

    .line 90
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 91
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_6

    .line 92
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 93
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 94
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 98
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_7
    sget-object v6, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSharedPreferenceCredentialKeys:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_8

    aget-object v3, v6, v5

    .line 99
    .restart local v3    # "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 101
    .end local v3    # "key":Ljava/lang/String;
    :cond_8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onSettingsChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 68
    :cond_0
    return-void
.end method
