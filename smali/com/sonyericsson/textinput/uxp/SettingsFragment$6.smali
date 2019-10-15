.class Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;
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
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;->val$screen:Landroid/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;->val$screen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$300(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$400(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/preference/PreferenceScreen;Z)V

    .line 293
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$000(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$000(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .line 296
    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSmartLanguageDetectionEnabledEvent(Z)V

    .line 302
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
