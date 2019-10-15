.class Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment$1;
.super Ljava/lang/Object;
.source "SimpleDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->createCustomDialogContent(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;

.field final synthetic val$menuOption:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment$1;->val$menuOption:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment$1;->val$menuOption:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;Ljava/lang/String;)V

    .line 105
    return-void
.end method
