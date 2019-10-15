.class public final Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncTrigger;
.super Ljava/lang/Object;
.source "BackupAndSyncTrigger.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static createMessageSyncController(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "unsyncedMessagesDatabase"    # Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
    .param p3, "syncParameter"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController$Factory;-><init>()V

    .line 48
    .local v0, "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    const-string v2, "sync-messages-with-cloud"

    invoke-virtual {v0, v2, p3}, Lcom/sonyericsson/collaboration/ObjectFactory;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/sonyericsson/collaboration/ObjectFactory;->createInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;

    .line 51
    .local v1, "messageSyncController":Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;
    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 52
    const-class v2, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    invoke-virtual {v1, p2, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 53
    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 54
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->init()V

    .line 55
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->initOptional()V

    .line 56
    return-object v1
.end method

.method private static createUnsyncedMessagesDatabase()Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;-><init>()V

    .line 29
    .local v0, "unsyncedMessagesDatabase":Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->init()V

    .line 30
    return-object v0
.end method

.method public static triggerBackupAndSync(Lcom/sonyericsson/textinput/uxp/TextInputApplication;)V
    .locals 4
    .param p0, "application"    # Lcom/sonyericsson/textinput/uxp/TextInputApplication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    .line 70
    .local v1, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasNetworkConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncTrigger;->createUnsyncedMessagesDatabase()Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    move-result-object v2

    .line 74
    .local v2, "unsyncedMessagesDatabase":Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
    const-string v3, "sync"

    .line 75
    invoke-static {p0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncTrigger;->createMessageSyncController(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;

    move-result-object v0

    .line 76
    .local v0, "messageSyncController":Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncTrigger;->unbindMessageSyncController(Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;)V

    .line 77
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncTrigger;->unbindUnsyncedMessagesDatabase(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;)V

    .line 79
    .end local v0    # "messageSyncController":Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;
    .end local v2    # "unsyncedMessagesDatabase":Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
    :cond_0
    return-void
.end method

.method private static unbindMessageSyncController(Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;)V
    .locals 0
    .param p0, "messageSyncController"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->dispose()V

    .line 61
    return-void
.end method

.method private static unbindUnsyncedMessagesDatabase(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;)V
    .locals 0
    .param p0, "unsyncedMessagesDatabase"    # Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->dispose()V

    .line 39
    return-void
.end method
