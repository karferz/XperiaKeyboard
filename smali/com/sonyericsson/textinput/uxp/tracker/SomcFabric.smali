.class public final Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;
.super Ljava/lang/Object;
.source "SomcFabric.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static volatile sCrashlyticsExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile sDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->TAG:Ljava/lang/String;

    .line 27
    sput-object v2, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->sDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    sput-object v2, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->sCrashlyticsExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->sCrashlyticsExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->sDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static enableWrappedCrashlytics(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->sDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    const/4 v1, 0x0

    new-instance v2, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 39
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->sCrashlyticsExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 46
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 63
    return-void
.end method

.method private static isCrashlyticsInitialized()Z
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->sCrashlyticsExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logNonFatalEvent(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 88
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->isCrashlyticsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->logException(Ljava/lang/Throwable;)V

    .line 93
    :cond_0
    return-void
.end method

.method public static logNonFatalEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "eventDescription"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->isCrashlyticsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->logException(Ljava/lang/Throwable;)V

    .line 80
    :cond_0
    return-void
.end method
