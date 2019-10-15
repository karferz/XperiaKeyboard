.class Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment$1;
.super Ljava/lang/Object;
.source "GuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Click is not handled!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->hasBeenFullyShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->onNextPage()V

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->scrollToBottom()V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->onPreviousPage()V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f007e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
