.class public Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;
.super Ljava/lang/Object;
.source "FragmentActivityUtil.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static addFragment(Landroid/app/Activity;Landroid/app/Fragment;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "layoutId"    # I

    .prologue
    .line 26
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 29
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->applyThemedNavigationBar(Landroid/view/View;)V

    .line 31
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 35
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 36
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 46
    return-void
.end method

.method public static applyThemedNavigationBar(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isMarshmallowOrNewer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object v0

    .line 67
    .local v0, "systemUiVis":Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    invoke-virtual {v0, v2}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setLightBackground(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setRoundedCorners(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    .line 69
    .end local v0    # "systemUiVis":Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    :cond_0
    return-void
.end method

.method public static getPreferenceIntent(Landroid/content/Intent;Landroid/preference/PreferenceActivity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "superIntent"    # Landroid/content/Intent;
    .param p1, "activity"    # Landroid/preference/PreferenceActivity;
    .param p2, "fragmentClassName"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, ":android:show_fragment"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, ":android:show_fragment"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_0
    const-string v0, ":android:no_headers"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    return-object p0
.end method
