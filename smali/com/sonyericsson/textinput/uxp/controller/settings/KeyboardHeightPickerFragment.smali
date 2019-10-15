.class public Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;
.super Landroid/app/Fragment;
.source "KeyboardHeightPickerFragment.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;


# instance fields
.field private mKeyboardHeightSelectorLayout:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

.field private mKeyboardSwitcher:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

.field private mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private bind()V
    .locals 5

    .prologue
    .line 78
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    new-instance v3, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v3}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->bind(Landroid/view/inputmethod/EditorInfo;)V

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->getObjectBinder()Lcom/sonyericsson/collaboration/ObjectBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/collaboration/ObjectBinder;->getObjects()[Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, "objects":[Ljava/lang/Object;
    array-length v4, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 81
    .local v0, "object":Ljava/lang/Object;
    instance-of v2, v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 82
    check-cast v2, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    .line 84
    :cond_0
    instance-of v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;

    if-eqz v2, :cond_1

    .line 85
    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;

    .end local v0    # "object":Ljava/lang/Object;
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mKeyboardSwitcher:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;

    .line 80
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mKeyboardHeightSelectorLayout:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    .line 89
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getDefaultKeyboardHeightPx()I

    move-result v3

    .line 88
    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->setKeyboardDefaultHeight(I)V

    .line 90
    return-void
.end method

.method private refreshAndReinflate()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->init()V

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->notifyKeyboardViewChanged()V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mKeyboardSwitcher:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->reinitOptional()V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mKeyboardHeightSelectorLayout:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->requestLayout()V

    .line 124
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->setRetainInstance(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 45
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 46
    .local v1, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 47
    new-instance v2, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    const-string v3, "height-picker"

    invoke-direct {v2, v0, v3}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->onCreateView(Landroid/view/View;)V

    .line 58
    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mKeyboardHeightSelectorLayout:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mKeyboardHeightSelectorLayout:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->setResizeListener(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;)V

    .line 61
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->onDestroy()V

    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 102
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->onDestroyView()V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mKeyboardHeightSelectorLayout:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->setResizeListener(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;)V

    .line 68
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 69
    return-void
.end method

.method public onResize(I)V
    .locals 2
    .param p1, "dy"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 107
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setKeyboardResizeHeightPxCurrent(I)V

    .line 108
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->refreshAndReinflate()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->bind()V

    .line 75
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->onStop()V

    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 96
    return-void
.end method
