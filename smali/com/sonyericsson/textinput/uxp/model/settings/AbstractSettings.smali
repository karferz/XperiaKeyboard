.class public abstract Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;
.super Ljava/lang/Object;
.source "AbstractSettings.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->mListeners:Ljava/util/ArrayList;

    .line 43
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->reloadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static getSharedPreferenceMode()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method static getSharedPreferenceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reloadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 56
    .local v0, "manager":Landroid/os/UserManager;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->getSharedPreferenceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->getSharedPreferenceMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->getSharedPreferenceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->getSharedPreferenceMode()I

    move-result v2

    .line 69
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public deleteLegacyKeys(Ljava/lang/String;)V
    .locals 5
    .param p1, "legacyPrefix"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 129
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 134
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public registerListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
