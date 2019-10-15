.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$3;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->setupGmailSettings(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    .line 221
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getPersonalizer()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    move-result-object v0

    .line 222
    .local v0, "personalizer":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->checkPermissions()V

    .line 231
    :cond_1
    :goto_0
    return v3

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700f2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->makeToastIfNeededAndShow(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0
.end method
