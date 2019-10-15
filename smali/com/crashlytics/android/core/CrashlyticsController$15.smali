.class Lcom/crashlytics/android/core/CrashlyticsController$15;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->writeExternalCrashEvent(Lcom/crashlytics/android/core/internal/models/SessionEventData;)V
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

.field final synthetic val$crashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;Lcom/crashlytics/android/core/internal/models/SessionEventData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/CrashlyticsController;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$15;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$15;->val$crashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;

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
    .line 863
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsController$15;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$15;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->isHandlingException()Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$15;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsController$15;->val$crashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1400(Lcom/crashlytics/android/core/CrashlyticsController;Lcom/crashlytics/android/core/internal/models/SessionEventData;)V

    .line 869
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
