.class Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge$1;
.super Ljava/lang/Object;
.source "GuideFinishPageLarge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 53
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Click is not handled!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 39
    :pswitch_0
    const v4, 0x7f0f0092

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 41
    .local v2, "traceCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 42
    .local v1, "isTraceEnabled":Z
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;

    invoke-static {v4, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;Z)V

    .line 44
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 45
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setTraceEnabled(Z)V

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setTraceAutoAccept(Z)V

    .line 49
    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 50
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;)Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;->onSettingUpdated()V

    .line 55
    return-void

    .line 41
    .end local v0    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v1    # "isTraceEnabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0091
        :pswitch_0
    .end packed-switch
.end method
