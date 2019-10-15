.class Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$3;
.super Ljava/lang/Object;
.source "NpamRemovedVisualisation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->createSetupVisualisation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$3;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$3;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->access$100(Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;)V

    .line 131
    return-void
.end method
