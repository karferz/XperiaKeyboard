.class Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge$1;
.super Ljava/lang/Object;
.source "CloudNudge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->createSetupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->access$000(Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;)V

    .line 104
    return-void
.end method
