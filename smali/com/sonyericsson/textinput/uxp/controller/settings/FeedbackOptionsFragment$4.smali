.class Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$4;
.super Ljava/lang/Object;
.source "FeedbackOptionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->setupSwitchPreferences(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$4;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 125
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$4;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$600(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$4;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$600(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushVibrationEnabledEvent(Z)V

    .line 132
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
