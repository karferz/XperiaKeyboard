.class Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;
.super Ljava/lang/Object;
.source "FeedbackOptionsFragment.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingsChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->setEnabled(Z)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSoundFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->setEnabled(Z)V

    goto :goto_0
.end method
