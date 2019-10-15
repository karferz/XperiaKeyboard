.class Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$1;
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


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Google:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->access$000(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V

    .line 100
    return-void
.end method
