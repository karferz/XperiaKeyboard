.class Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$8;
.super Ljava/lang/Object;
.source "AbstractAnalyticsTracker.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->getNumberOfDaysBetweenSnapshot(Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

.field final synthetic val$listener:Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$8;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$8;->val$listener:Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGaGtmUtilsInitialized(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 2
    .param p1, "gaGtmUtils"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$8;->val$listener:Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;->onNumberOfDaysBetweenSnapshotsData(I)V

    .line 335
    return-void
.end method
