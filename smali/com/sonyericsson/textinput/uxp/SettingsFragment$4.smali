.class Lcom/sonyericsson/textinput/uxp/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/SettingsFragment;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$screen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$4;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$4;->val$screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 238
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$4;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$000(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$4;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$100(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isTraceEnabled()Z

    move-result v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$4;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$000(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushGestureInputEnabledEvent(Z)V

    .line 265
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
