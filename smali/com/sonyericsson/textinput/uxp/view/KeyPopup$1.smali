.class Lcom/sonyericsson/textinput/uxp/view/KeyPopup$1;
.super Ljava/lang/Object;
.source "KeyPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->access$000(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V

    .line 192
    return-void
.end method
