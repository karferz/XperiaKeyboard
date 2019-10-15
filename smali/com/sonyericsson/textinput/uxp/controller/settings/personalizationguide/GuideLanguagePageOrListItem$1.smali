.class Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem$1;
.super Ljava/lang/Object;
.source "GuideLanguagePageOrListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 72
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->newIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->newIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x7f0f0081
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
