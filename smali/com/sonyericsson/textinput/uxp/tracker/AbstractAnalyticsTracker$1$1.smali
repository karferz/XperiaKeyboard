.class Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1$1;
.super Ljava/lang/Object;
.source "AbstractAnalyticsTracker.java"

# interfaces
.implements Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1$1;->this$1:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerLoaded(Z)V
    .locals 8
    .param p1, "success"    # Z

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 138
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    .line 140
    .local v1, "containerHolder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 143
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-eqz v0, :cond_1

    const-string v3, "crashlytics-enabled"

    .line 144
    invoke-virtual {v0, v3}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 149
    .local v2, "crashlyticsEnabled":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 157
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1$1;->this$1:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 158
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 157
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->enableWrappedCrashlytics(Landroid/content/Context;)V

    .line 164
    const-string v3, "BuildType"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    .end local v1    # "containerHolder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    .end local v2    # "crashlyticsEnabled":Z
    :cond_0
    return-void

    .line 144
    .restart local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    .restart local v1    # "containerHolder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
