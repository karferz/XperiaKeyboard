.class Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$2;
.super Ljava/lang/Object;
.source "AbstractAnalyticsTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->getGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

.field final synthetic val$listener:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$2;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$2;->val$listener:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$2;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$2;->val$listener:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$2;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->access$000(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;)Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;->onGaGtmUtilsInitialized(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
