.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideActivityLarge;
.super Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideActivity;
.source "GuideActivityLarge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideActivityLarge;->getExistingFragment()Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    move-result-object v0

    .line 19
    .local v0, "fragment":Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFragmentLarge;

    .end local v0    # "fragment":Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFragmentLarge;-><init>()V

    .line 22
    .restart local v0    # "fragment":Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideActivityLarge;->addFragment(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)V

    .line 23
    return-void
.end method
