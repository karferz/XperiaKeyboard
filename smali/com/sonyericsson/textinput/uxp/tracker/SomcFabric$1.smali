.class final Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric$1;
.super Ljava/lang/Object;
.source "SomcFabric.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->enableWrappedCrashlytics(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readSomcGaSetting(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 54
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->access$000()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
