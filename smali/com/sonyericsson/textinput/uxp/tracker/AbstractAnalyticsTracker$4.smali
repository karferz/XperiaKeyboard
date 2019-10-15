.class Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;
.super Ljava/lang/Object;
.source "AbstractAnalyticsTracker.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$category:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$label:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$value:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGaGtmUtilsInitialized(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 6
    .param p1, "gaGtmUtils"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$category:Ljava/lang/String;

    const-string v1, "SnapshotSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$action:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$label:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->access$200(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$category:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$label:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;->val$value:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
