.class Lcom/sonyericsson/textinput/uxp/SettingsFragment$2;
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


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 183
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ec

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 186
    .local v1, "isPhonepad":Z
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    .line 188
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 189
    .local v0, "application":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v2

    check-cast p2, Ljava/lang/String;

    .line 191
    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushPortraitKeyboardLayoutEvent(Ljava/lang/String;)V

    .line 198
    .end local v0    # "application":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-static {v2, v1}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$200(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Z)V

    .line 199
    const/4 v2, 0x1

    return v2
.end method
