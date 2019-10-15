.class Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;
.super Ljava/lang/Object;
.source "AbstractAnalyticsTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->initGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V
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
    .line 109
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;->val$listener:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 113
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->enable(Z)V

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->enableExceptionParsing(Landroid/content/Context;)V

    .line 117
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    .line 126
    .local v0, "gaGtmUtils":Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "GTM-KGWRW7"

    const v3, 0x7f060002

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-instance v6, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1$1;

    invoke-direct {v6, p0}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1$1;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IIILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;->val$listener:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;->val$listener:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;->onGaGtmUtilsInitialized(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 173
    :cond_0
    return-void
.end method
