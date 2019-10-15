.class Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$2;
.super Ljava/lang/Object;
.source "PrivacyPolicyAndLoginSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->doCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

.field final synthetic val$googleLoginButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$2;->val$googleLoginButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->access$102(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;Z)Z

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$2;->val$googleLoginButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->access$100(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->access$200(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;Landroid/widget/Button;Z)V

    .line 110
    return-void
.end method
