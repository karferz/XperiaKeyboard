.class Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->showInputOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

.field final synthetic val$actionList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->val$actionList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)Landroid/content/Context;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 254
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->val$actionList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 292
    .end local v0    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :cond_0
    :goto_0
    return-void

    .line 256
    .restart local v0    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :pswitch_0
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;->POPUP:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSettingsOpenedEvent(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;)V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    .line 261
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    .line 265
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    goto :goto_0

    .line 268
    :pswitch_2
    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->POPUP:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    .line 270
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushKeyboardHeightPickerLaunchedEvent(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;)V

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .line 273
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 274
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    goto :goto_0

    .line 277
    :pswitch_3
    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;->POPUP:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;

    .line 279
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushMyWordsOpenedEvent(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;)V

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    goto :goto_0

    .line 285
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$600(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    .line 286
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$700(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
