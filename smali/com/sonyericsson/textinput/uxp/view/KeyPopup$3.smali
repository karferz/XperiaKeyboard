.class Lcom/sonyericsson/textinput/uxp/view/KeyPopup$3;
.super Ljava/lang/Object;
.source "KeyPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->initViews()V
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
    .line 781
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$3;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$3;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->access$600(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V

    .line 785
    return-void
.end method
