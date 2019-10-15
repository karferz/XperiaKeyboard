.class Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker$1;
.super Ljava/lang/Object;
.source "AnalyticsTracker.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSettingsSnapshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker$1;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberOfDaysBetweenSnapshotsData(I)V
    .locals 6
    .param p1, "days"    # I

    .prologue
    .line 489
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker$1;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    iget-object v5, v5, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    .line 490
    .local v4, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDaysActiveCounter()I

    move-result v0

    .line 491
    .local v0, "activeDays":I
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastSnapshotActiveDay()I

    move-result v3

    .line 492
    .local v3, "lastSnapshotActiveDay":I
    sub-int v1, v0, v3

    .line 493
    .local v1, "calculatedDays":I
    if-ge v1, p1, :cond_0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 494
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker$1;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    invoke-static {v5, v4}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->access$000(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 495
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v2

    .line 496
    .local v2, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v2, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastSnapshotActiveDay(I)V

    .line 497
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 499
    .end local v2    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_1
    return-void
.end method
