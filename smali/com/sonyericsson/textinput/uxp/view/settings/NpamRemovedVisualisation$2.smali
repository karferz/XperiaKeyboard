.class Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$2;
.super Ljava/lang/Object;
.source "NpamRemovedVisualisation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 121
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->access$000(Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;Z)V

    .line 125
    return-void
.end method
