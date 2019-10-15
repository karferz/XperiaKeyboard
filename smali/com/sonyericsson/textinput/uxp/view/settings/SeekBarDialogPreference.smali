.class public Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarDialogPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;,
        Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;
    }
.end annotation


# instance fields
.field private mDefaultValue:I

.field private mListener:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

.field private mMaxValue:I

.field private mMinValue:I

.field private mSeekBarView:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->SeekBarDialogPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->applyStyledAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return-void

    .line 43
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->SeekBarDialogPreference:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->applyStyledAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private applyStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "styledAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mMinValue:I

    .line 70
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mMaxValue:I

    .line 72
    const/4 v2, 0x2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    .line 74
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->xmlValue()I

    move-result v3

    .line 72
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 76
    .local v0, "dialogAccentColorXmlValue":I
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->fromXmlValue(I)Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    move-result-object v1

    .line 78
    .local v1, "dialogIconAccentColor":Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;
    if-nez v1, :cond_0

    .line 79
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    .line 83
    :cond_0
    invoke-super {p0}, Landroid/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$settings$SeekBarDialogPreference$DialogIconAccentColor:[I

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 86
    :pswitch_0
    invoke-super {p0}, Landroid/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 87
    invoke-super {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getDarkAccentColor(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 86
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 92
    :pswitch_1
    invoke-super {p0}, Landroid/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 93
    invoke-super {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getLightAccentColor(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 92
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 105
    const v3, 0x7f0f00da

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 106
    .local v1, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 107
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mMaxValue:I

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mMinValue:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 108
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 109
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mDefaultValue:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, "progress":I
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mMinValue:I

    sub-int v3, v0, v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 113
    .end local v0    # "progress":I
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mSeekBarView:Landroid/widget/SeekBar;

    .line 114
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mSeekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mMinValue:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->persistInt(I)Z

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mSeekBarView:Landroid/widget/SeekBar;

    .line 128
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 118
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mDefaultValue:I

    .line 119
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mDefaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 140
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mListener:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mListener:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mMinValue:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;->onProgressChanged(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public setOnSeekParPreferenceListener(Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->mListener:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

    .line 132
    return-void
.end method
