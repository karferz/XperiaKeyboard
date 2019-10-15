.class final Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;
.super Landroid/os/AsyncTask;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->checkAndStoreThemeInfo(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$analyticsTracker:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$performSkinAutoSwitch:Z

.field final synthetic val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;ZLcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$performSkinAutoSwitch:Z

    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$analyticsTracker:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .locals 1
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->access$000(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)V
    .locals 4
    .param p1, "newThemeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 110
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCurrentThemeInfo()Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    move-result-object v1

    .line 112
    .local v1, "oldThemeInfo":Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$performSkinAutoSwitch:Z

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$analyticsTracker:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-static {v1, p1, v2, v3, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;)V

    .line 117
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    :cond_1
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCurrentThemeInfo(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)V

    .line 121
    :cond_2
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 122
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->onPostExecute(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)V

    return-void
.end method
