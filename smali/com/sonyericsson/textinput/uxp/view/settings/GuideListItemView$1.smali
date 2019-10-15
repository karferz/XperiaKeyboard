.class Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;
.super Ljava/lang/Object;
.source "GuideListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$000(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$100(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Landroid/content/Context;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 73
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$200(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->toggle()V

    .line 74
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$200(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    .line 75
    .local v1, "checkedState":Z
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$300(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    if-nez v3, :cond_0

    .line 76
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    const-string v4, "You need to initialize an ISettings instance in order to handle click events"

    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$300(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v2

    .line 80
    .local v2, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$2;->$SwitchMap$com$sonyericsson$textinput$uxp$view$settings$GuideListItemView$SupportedSettings:[I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$400(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 107
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The setting you added is not supported by the OnClickListener. Please add it"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :pswitch_0
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setSmileyKeyEnabled(Z)V

    .line 83
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSmileyKeyEnabledEvent(Z)V

    .line 110
    :cond_1
    :goto_0
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 111
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$500(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$500(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->access$400(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;->onCheckedStateChanged(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;Z)V

    .line 115
    .end local v0    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    .end local v1    # "checkedState":Z
    .end local v2    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_2
    return-void

    .line 88
    .restart local v0    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    .restart local v1    # "checkedState":Z
    .restart local v2    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :pswitch_1
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setVoiceInputEnabled(Z)V

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushGoogleVoiceEnabledEvent(Z)V

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setShowSecondaryPrints(Z)V

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSecondaryPrintsEnabledEvent(Z)V

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setNumericKeysEnabled(Z)V

    .line 102
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushNumericRowEnabledEvent(Z)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
