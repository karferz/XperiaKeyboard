.class Lcom/crashlytics/android/core/CrashlyticsController$6;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$thread:Ljava/lang/Thread;

.field final synthetic val$time:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/CrashlyticsController;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->val$time:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->val$thread:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsController$6;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v3}, Lcom/crashlytics/android/core/CrashlyticsController;->access$300(Lcom/crashlytics/android/core/CrashlyticsController;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsCore;->createCrashMarker()V

    .line 292
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget-object v4, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->val$time:Ljava/util/Date;

    iget-object v5, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->val$thread:Ljava/lang/Thread;

    iget-object v6, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->val$ex:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5, v6}, Lcom/crashlytics/android/core/CrashlyticsController;->access$400(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 294
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v1

    .line 295
    .local v1, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    if-eqz v1, :cond_2

    iget-object v0, v1, Lio/fabric/sdk/android/services/settings/SettingsData;->sessionData:Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    .line 298
    .local v0, "sessionSettings":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    :goto_0
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/core/CrashlyticsController;->doCloseSessions(Lio/fabric/sdk/android/services/settings/SessionSettingsData;)V

    .line 299
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v3}, Lcom/crashlytics/android/core/CrashlyticsController;->access$500(Lcom/crashlytics/android/core/CrashlyticsController;)V

    .line 301
    if-eqz v0, :cond_0

    .line 302
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget v4, v0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCompleteSessionsCount:I

    invoke-virtual {v3, v4}, Lcom/crashlytics/android/core/CrashlyticsController;->trimSessionFiles(I)V

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v3, v1}, Lcom/crashlytics/android/core/CrashlyticsController;->access$600(Lcom/crashlytics/android/core/CrashlyticsController;Lio/fabric/sdk/android/services/settings/SettingsData;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v3, v1}, Lcom/crashlytics/android/core/CrashlyticsController;->access$700(Lcom/crashlytics/android/core/CrashlyticsController;Lio/fabric/sdk/android/services/settings/SettingsData;)V

    .line 308
    :cond_1
    return-object v2

    .end local v0    # "sessionSettings":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    :cond_2
    move-object v0, v2

    .line 295
    goto :goto_0
.end method
