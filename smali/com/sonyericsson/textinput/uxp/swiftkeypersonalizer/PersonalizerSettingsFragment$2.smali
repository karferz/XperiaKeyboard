.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$2;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 110
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->startParsing()V

    .line 117
    :cond_0
    return-void
.end method
