.class public Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
.super Landroid/widget/RelativeLayout;
.source "GuideListItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;,
        Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mListener:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;

.field private mOnclickListener:Landroid/view/View$OnClickListener;

.field private mPrimaryTextView:Landroid/widget/TextView;

.field private mSecondaryTextView:Landroid/widget/TextView;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSupportedSetting:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

.field private mSwitch:Landroid/widget/Switch;

.field private mTextContainer:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSupportedSetting:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mListener:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030016

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mView:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mView:Landroid/view/View;

    const v2, 0x7f0f0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mTextContainer:Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mView:Landroid/view/View;

    const v2, 0x7f0f008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mPrimaryTextView:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mView:Landroid/view/View;

    const v2, 0x7f0f008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSecondaryTextView:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mView:Landroid/view/View;

    const v2, 0x7f0f008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSwitch:Landroid/widget/Switch;

    .line 65
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mIsEnabled:Z

    .line 67
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mOnclickListener:Landroid/view/View$OnClickListener;

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method private initializeSupportedSetting(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V
    .locals 2
    .param p1, "setting"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "You need to initialize an ISettings instance in order to handle settings"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$2;->$SwitchMap$com$sonyericsson$textinput$uxp$view$settings$GuideListItemView$SupportedSettings:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have added an setting that could not be initialized. Please update the initialize setting method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSmileyKeyEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 185
    :goto_0
    return-void

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isVoiceInputEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSecondaryPrintsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isNumericKeysEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setChildViewsEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 280
    .local v2, "numberOfViewGroupChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 281
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 283
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 284
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setChildViewsEnabled(Landroid/view/ViewGroup;Z)V

    .line 280
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    return-void
.end method


# virtual methods
.method public enableView(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mIsEnabled:Z

    .line 263
    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setChildViewsEnabled(Landroid/view/ViewGroup;Z)V

    .line 270
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "primaryText"    # Ljava/lang/String;
    .param p3, "secondaryText"    # Ljava/lang/String;
    .param p4, "supportedSetting"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 132
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setPrimaryText(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setSecondaryText(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setSupportedSetting(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 135
    return-void
.end method

.method public setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mListener:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;

    .line 254
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSecondaryTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSecondaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSecondaryTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    goto :goto_0
.end method

.method public setSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 144
    return-void
.end method

.method public setSupportedSetting(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V
    .locals 0
    .param p1, "setting"    # Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSupportedSetting:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .line 154
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initializeSupportedSetting(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 155
    return-void
.end method

.method public showSecondaryText(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 229
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSecondaryTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 232
    .local v1, "paddingTop":I
    move v0, v1

    .line 241
    .local v0, "paddingBottom":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mTextContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mTextContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mTextContainer:Landroid/view/View;

    .line 242
    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    .line 241
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 243
    return-void

    .line 235
    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingTop":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mSecondaryTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 238
    .restart local v1    # "paddingTop":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .restart local v0    # "paddingBottom":I
    goto :goto_0
.end method
