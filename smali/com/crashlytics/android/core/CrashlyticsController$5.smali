.class Lcom/crashlytics/android/core/CrashlyticsController$5;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$CrashListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->enableExceptionHandling(Ljava/lang/Thread$UncaughtExceptionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/CrashlyticsController;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$5;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$5;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsController;->handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method
