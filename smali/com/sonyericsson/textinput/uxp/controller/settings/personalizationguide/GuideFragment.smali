.class public abstract Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
.super Landroid/app/Fragment;
.source "GuideFragment.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
.implements Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;


# static fields
.field private static final ANIMATION_ATTRIBUTES_STAYING_GLOW:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;

.field private static final PAGE_INDEX_UNINITIALIZED:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

.field private mCurrentPageIndex:I

.field private mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mNextImageButton:Landroid/widget/Button;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceHolder:Landroid/view/ViewGroup;

.field private mPrevImageButton:Landroid/widget/Button;

.field private mScrollview:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;

    const v1, 0x7f0200d4

    const v4, 0x49742400    # 1000000.0f

    const/4 v6, 0x0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;-><init>(IFFFFI)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->ANIMATION_ATTRIBUTES_STAYING_GLOW:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPages:Ljava/util/ArrayList;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    .line 63
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mScrollview:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    return-object v0
.end method

.method private bind(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 222
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->bind(Landroid/view/inputmethod/EditorInfo;)V

    .line 223
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->getKeyboardView()Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-result-object v0

    .line 225
    .local v0, "keyboardView":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->showKeyboard()Z

    move-result v1

    .line 226
    .local v1, "showKeyboard":Z
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->getObjectBinder()Lcom/sonyericsson/collaboration/ObjectBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->postBind(Lcom/sonyericsson/collaboration/ObjectBinder;)V

    .line 230
    if-eqz v1, :cond_0

    .line 231
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->getGlowingKeys()[I

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->ANIMATION_ATTRIBUTES_STAYING_GLOW:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;

    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->glowKeys(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;[ILcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;)V

    .line 234
    :cond_0
    return-void

    .line 226
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private forwardToNextAvailablePage()Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    .locals 4

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "page":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    const/4 v1, 0x0

    .line 270
    .local v1, "shallShow":Z
    :goto_0
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 271
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "page":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    .line 273
    .restart local v0    # "page":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->shallBeShown()Z

    move-result v1

    goto :goto_0

    .line 275
    :cond_0
    if-eqz v1, :cond_1

    .end local v0    # "page":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    :goto_1
    return-object v0

    .restart local v0    # "page":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getIntrinsicDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "drawableResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    return-object v0
.end method

.method private glowKeys(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;[ILcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;)V
    .locals 3
    .param p1, "keyboardView"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p2, "keysToGlow"    # [I
    .param p3, "animationAttributes"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;

    .prologue
    .line 238
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    .line 239
    .local v0, "meta":I
    invoke-virtual {p1, v0, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->addMetaKeyIndicator(ILcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "meta":I
    :cond_0
    return-void
.end method

.method private setSetupWizardShown()V
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 298
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setSetupWizardShown()V

    .line 299
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 300
    return-void
.end method

.method private showPage(Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;)V
    .locals 3
    .param p1, "page"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->onDestroyView()V

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 167
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushAppView(Ljava/lang/String;)V

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPlaceHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 172
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->hasBeenFullyShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mScrollview:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->setScrollBottomChangeListener(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;)V

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPlaceHolder:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 179
    new-instance v1, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v1}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->bind(Landroid/view/inputmethod/EditorInfo;)V

    .line 180
    return-void

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->updateDirectionButtons(Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;)V

    goto :goto_0
.end method

.method private updateDirectionButtons(Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;)V
    .locals 4
    .param p1, "newPage"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 185
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPrevImageButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPrevImageButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->hasBeenFullyShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mNextImageButton:Landroid/widget/Button;

    const v1, 0x7f020026

    .line 200
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getIntrinsicDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mNextImageButton:Landroid/widget/Button;

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 212
    :goto_1
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPrevImageButton:Landroid/widget/Button;

    const v1, 0x7f020028

    .line 191
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getIntrinsicDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPrevImageButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPrevImageButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mNextImageButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mNextImageButton:Landroid/widget/Button;

    const v1, 0x7f020024

    .line 209
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getIntrinsicDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mNextImageButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->setRetainInstance(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mContext:Landroid/content/Context;

    .line 103
    new-instance v1, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "personalization-guide"

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 108
    .local v0, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 109
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 110
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->init(Landroid/content/Context;)V

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->setupPages(Ljava/util/ArrayList;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->onCreateView(Landroid/view/View;)V

    .line 122
    const v1, 0x7f0f007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPlaceHolder:Landroid/view/ViewGroup;

    .line 123
    const v1, 0x7f0f007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mScrollview:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    .line 125
    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPrevImageButton:Landroid/widget/Button;

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPrevImageButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v1, 0x7f0f007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mNextImageButton:Landroid/widget/Button;

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mNextImageButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->onDestroy()V

    .line 252
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 253
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->onDestroyView()V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->onDestroyView()V

    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 139
    return-void
.end method

.method public onNextPage()V
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->onPageChange()V

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->forwardToNextAvailablePage()Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    move-result-object v0

    .line 287
    .local v0, "page":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    if-eqz v0, :cond_2

    .line 288
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->showPage(Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;)V

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->setSetupWizardShown()V

    .line 292
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onPreviousPage()V
    .locals 4

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "page":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    const/4 v1, 0x0

    .line 306
    .local v1, "shallShow":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->onPageChange()V

    .line 310
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    if-lez v2, :cond_1

    if-nez v1, :cond_1

    .line 311
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    .line 312
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "page":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    .line 313
    .restart local v0    # "page":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->shallBeShown()Z

    move-result v1

    goto :goto_0

    .line 316
    :cond_1
    if-eqz v1, :cond_2

    .line 317
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->showPage(Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;)V

    .line 322
    :goto_1
    return-void

    .line 319
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    .line 320
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 144
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->forwardToNextAvailablePage()Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    move-result-object v0

    .line 149
    .local v0, "showPage":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    :goto_0
    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->showPage(Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;)V

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 153
    return-void

    .line 147
    .end local v0    # "showPage":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mPages:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPageIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    .restart local v0    # "showPage":Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
    goto :goto_0
.end method

.method public onScrollBottomChange(ZZ)V
    .locals 2
    .param p1, "isInitial"    # Z
    .param p2, "isScrollAtBottom"    # Z

    .prologue
    .line 86
    if-eqz p2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mScrollview:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->setScrollBottomChangeListener(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->setHasBeenFullyShown()V

    .line 90
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mCurrentPage:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->updateDirectionButtons(Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;)V

    .line 93
    :cond_2
    return-void
.end method

.method public onSettingUpdated()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->bind(Landroid/view/inputmethod/EditorInfo;)V

    .line 258
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->mStandAloneKeyboardViewManager:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->onStop()V

    .line 246
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 247
    return-void
.end method

.method protected abstract setupPages(Ljava/util/ArrayList;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;",
            ">;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;",
            ")V"
        }
    .end annotation
.end method
