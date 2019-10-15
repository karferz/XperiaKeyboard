.class Lcom/sonyericsson/textinput/uxp/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$5;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$5;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 279
    const/4 v0, 0x0

    return v0
.end method
