.class Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium$1;
.super Ljava/lang/Object;
.source "GuideLanguagePageMedium.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedStateChanged(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;Z)V
    .locals 2
    .param p1, "supportedSetting"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;
    .param p2, "state"    # Z

    .prologue
    .line 64
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium$2;->$SwitchMap$com$sonyericsson$textinput$uxp$view$settings$GuideListItemView$SupportedSettings:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;)Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;->onSettingUpdated()V

    .line 82
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;

    invoke-static {v0, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->access$002(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;Z)Z

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->access$102(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;Z)Z

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
