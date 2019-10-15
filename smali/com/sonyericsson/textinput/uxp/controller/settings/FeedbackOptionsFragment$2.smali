.class Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$2;
.super Ljava/lang/Object;
.source "FeedbackOptionsFragment.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;


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
    .line 50
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->setVolume(I)V

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->playSound()V

    .line 55
    return-void
.end method
