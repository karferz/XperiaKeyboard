.class public Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;
.super Ljava/lang/Object;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedPreferencesUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearSharedPreferences(Landroid/content/SharedPreferences;Z)V
    .locals 8
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "disablePopups"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 407
    const-class v5, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v5

    :try_start_0
    const-string v4, "key_last_search_swiftkey_verify"

    const-wide/16 v6, 0x0

    invoke-interface {p0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 409
    .local v2, "verifyTimestamp":J
    const-string v4, "key_last_search_swiftkey_updates"

    const-wide/16 v6, 0x0

    invoke-interface {p0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 412
    .local v0, "refreshTimestamp":J
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    const-string v4, "key_last_search_swiftkey_verify"

    invoke-static {p0, v4, v2, v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 416
    const-string v4, "key_last_search_swiftkey_updates"

    invoke-static {p0, v4, v0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 418
    if-eqz p1, :cond_0

    .line 419
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_HAS_SHOWN_CLOUD_NUDGE:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {p0, v4, v6}, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 420
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_DOWNLOAD_SHOWN_POPUP:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {p0, v4, v6}, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 421
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SETUP_WIZARD_SHOWN:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {p0, v4, v6}, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    monitor-exit v5

    return-void

    .line 407
    .end local v0    # "refreshTimestamp":J
    .end local v2    # "verifyTimestamp":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized getSharedPreferenceInt(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 2
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 391
    const-class v0, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSharedPreferenceLong(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .locals 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 395
    const-class v0, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v0

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-interface {p0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSharedPreferenceString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 400
    const-class v1, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v1

    :try_start_0
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSetupWizardVisibility(Landroid/content/SharedPreferences;Z)V
    .locals 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "shouldShow"    # Z

    .prologue
    .line 362
    const-class v1, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "setup-wizard-shown"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit v1

    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 2
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 372
    const-class v1, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit v1

    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 2
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 377
    const-class v1, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit v1

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 367
    const-class v1, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit v1

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSharedPreferenceStringRes(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 382
    const-class v1, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit v1

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSharedPreferenceStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 387
    const-class v1, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit v1

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
