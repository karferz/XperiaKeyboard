.class Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$6;
.super Ljava/lang/Object;
.source "AbstractAnalyticsTracker.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->pushAppView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$6;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGaGtmUtilsInitialized(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 1
    .param p1, "gaGtmUtils"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$6;->val$name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushAppView(Ljava/lang/String;)V

    .line 290
    return-void
.end method
