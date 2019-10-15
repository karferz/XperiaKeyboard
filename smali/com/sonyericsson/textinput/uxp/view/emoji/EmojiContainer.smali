.class public Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;
.super Landroid/widget/LinearLayout;
.source "EmojiContainer.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$TabPositionChangeListener;
    }
.end annotation


# static fields
.field private static final BORDER_COLOR_ALPHA_FACTOR:F = 0.1f

.field private static final CELL_INDICATOR_COLOR_ALPHA_FACTOR:F = 0.3f

.field private static final FREQUENTLY_USED_EMOJIS_PAGE_IDENTIFIER:Ljava/lang/String; = "usage_frequency"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

.field private mContext:Landroid/content/Context;

.field private mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

.field private mEmojiContentView:Landroid/view/View;

.field private mEmojiGridAndButtons:Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;

.field private mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

.field private mEmojiSelectionHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;

.field private mEmojiTabContainerView:Landroid/view/View;

.field private mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

.field private mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

.field private mIsEmojiPresentationDirty:Z

.field private mIsInitialized:Z

.field private mIsOneHandedKeyboard:Z

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mLatestTabPosition:I

.field private mMaximumNumberOfFrequentlyUsedEmojis:I

.field private mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

.field private mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mLatestTabPosition:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsEmojiPresentationDirty:Z

    .line 104
    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsEmojiPresentationDirty:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mLatestTabPosition:I

    return v0
.end method

.method private getPhonepadLayout()I
    .locals 4
    .annotation build Landroid/support/annotation/XmlRes;
    .end annotation

    .prologue
    .line 260
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "language":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 301
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isUnicode8EmojiSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 302
    const v1, 0x7f050057

    .line 308
    .local v1, "layout":I
    :goto_1
    return v1

    .line 262
    .end local v1    # "layout":I
    :sswitch_0
    const-string v3, "ara"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "fas"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "tha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "hin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "pan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "heb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "hye"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    .line 265
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isUnicode8EmojiSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    const v1, 0x7f050058

    .restart local v1    # "layout":I
    goto :goto_1

    .line 268
    .end local v1    # "layout":I
    :cond_1
    const v1, 0x7f05005f

    .line 270
    .restart local v1    # "layout":I
    goto :goto_1

    .line 272
    .end local v1    # "layout":I
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isUnicode8EmojiSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    const v1, 0x7f05005c

    .restart local v1    # "layout":I
    goto :goto_1

    .line 275
    .end local v1    # "layout":I
    :cond_2
    const v1, 0x7f050063

    .line 277
    .restart local v1    # "layout":I
    goto :goto_1

    .line 280
    .end local v1    # "layout":I
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isUnicode8EmojiSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    const v1, 0x7f05005b

    .restart local v1    # "layout":I
    goto :goto_1

    .line 283
    .end local v1    # "layout":I
    :cond_3
    const v1, 0x7f050062

    .line 285
    .restart local v1    # "layout":I
    goto :goto_1

    .line 287
    .end local v1    # "layout":I
    :pswitch_3
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isUnicode8EmojiSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    const v1, 0x7f05005a

    .restart local v1    # "layout":I
    goto :goto_1

    .line 290
    .end local v1    # "layout":I
    :cond_4
    const v1, 0x7f050061

    .line 292
    .restart local v1    # "layout":I
    goto :goto_1

    .line 294
    .end local v1    # "layout":I
    :pswitch_4
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isUnicode8EmojiSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 295
    const v1, 0x7f050059

    .restart local v1    # "layout":I
    goto/16 :goto_1

    .line 297
    .end local v1    # "layout":I
    :cond_5
    const v1, 0x7f050060

    .line 299
    .restart local v1    # "layout":I
    goto/16 :goto_1

    .line 304
    .end local v1    # "layout":I
    :cond_6
    const v1, 0x7f05005e

    .restart local v1    # "layout":I
    goto/16 :goto_1

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x17a50 -> :sswitch_0
        0x18b18 -> :sswitch_1
        0x19305 -> :sswitch_5
        0x1938d -> :sswitch_3
        0x19574 -> :sswitch_6
        0x1b09d -> :sswitch_4
        0x1c06d -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initializeBindableComponents()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    if-nez v0, :cond_0

    .line 316
    const v0, 0x7f0f0068

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiSelectionHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiSelectionHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;

    .line 321
    :cond_1
    return-void
.end method

.method private saveTabPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 178
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastUsedEmojiTabPosition(I)V

    .line 179
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 180
    return-void
.end method

.method private setPaddingForChildren(Landroid/graphics/Rect;ZZ)V
    .locals 5
    .param p1, "keyboardAndKeysAreaPadding"    # Landroid/graphics/Rect;
    .param p2, "isOneHandedKeyboard"    # Z
    .param p3, "isSplitKeyboard"    # Z

    .prologue
    const/4 v4, 0x0

    .line 415
    if-eqz p2, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiContentView:Landroid/view/View;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridAndButtons:Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v1, v4, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->setPadding(IIII)V

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->setButtonPadding(IIII)V

    .line 431
    :goto_0
    return-void

    .line 420
    :cond_0
    if-eqz p3, :cond_1

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiContentView:Landroid/view/View;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridAndButtons:Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->setPadding(IIII)V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->setButtonPadding(IIII)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiContentView:Landroid/view/View;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridAndButtons:Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->setPadding(IIII)V

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->setButtonPadding(IIII)V

    goto :goto_0
.end method

.method private updateDynamicContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 522
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsEmojiPresentationDirty:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .line 523
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->hasUpdatedUsageData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->frequentlyUsedEmojisAsCells()Ljava/util/List;

    move-result-object v0

    .line 526
    .local v0, "frequentlyUsedEmojis":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Cell;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mMaximumNumberOfFrequentlyUsedEmojis:I

    if-le v1, v2, :cond_1

    .line 527
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mMaximumNumberOfFrequentlyUsedEmojis:I

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    const-string v2, "usage_frequency"

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setDynamicPageCells(Ljava/lang/String;Ljava/util/List;)V

    .line 533
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsEmojiPresentationDirty:Z

    .line 535
    .end local v0    # "frequentlyUsedEmojis":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Cell;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 114
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mContext:Landroid/content/Context;

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_2

    .line 116
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    goto :goto_0

    .line 117
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-ne p2, v0, :cond_3

    .line 118
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    goto :goto_0

    .line 119
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    if-ne p2, v0, :cond_4

    .line 120
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    goto :goto_0

    .line 121
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_5

    .line 122
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 123
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    if-ne p2, v0, :cond_6

    .line 124
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    goto :goto_0

    .line 125
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_6
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-ne p2, v0, :cond_7

    .line 126
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    goto :goto_0

    .line 127
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_7
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    if-ne p2, v0, :cond_8

    .line 128
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    goto :goto_0

    .line 129
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_8
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    if-ne p2, v0, :cond_0

    .line 130
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->removeCellEventListeners()V

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->removePageEventListener(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->dispose()V

    .line 163
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabContainerView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabContainerView:Landroid/view/View;

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->dispose()V

    .line 172
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsInitialized:Z

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsEmojiPresentationDirty:Z

    .line 174
    return-void
.end method

.method public findCellCenterCoordinates(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->findCellCenterCoordinates(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getBindableComponents()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->initializeBindableComponents()V

    .line 436
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiSelectionHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getEmojiTabView()Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    return-object v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsInitialized:Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsEmojiPresentationDirty:Z

    .line 148
    return-void
.end method

.method public initOptional()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isOneHandedKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsOneHandedKeyboard:Z

    .line 153
    return-void
.end method

.method public initialize()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 183
    new-instance v9, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    invoke-direct {v9}, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;-><init>()V

    .line 184
    .local v9, "touchLockManager":Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;
    invoke-super {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mMaximumNumberOfFrequentlyUsedEmojis:I

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastUsedEmojiTabPosition()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mLatestTabPosition:I

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    const-string v1, "candidate_bar_height"

    .line 188
    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Ljava/lang/String;)I

    move-result v6

    .line 189
    .local v6, "candidateBarHeightPx":I
    const v0, 0x7f0f0065

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 191
    .local v7, "emojiFrameContainer":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 193
    .local v8, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isUnicode8EmojiSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const v0, 0x7f030008

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabContainerView:Landroid/view/View;

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabContainerView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 199
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 201
    const v0, 0x7f0f0064

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiContentView:Landroid/view/View;

    .line 202
    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    invoke-virtual {v0, v9}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->setTouchLockManager(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;)V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$TabPositionChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$TabPositionChangeListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$1;)V

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->initViews(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->requestLayout()V

    .line 209
    const v0, 0x7f0f0066

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridAndButtons:Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;

    .line 211
    const v0, 0x7f0f0067

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPortraitKeyboardMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->getPhonepadLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setContentAttribute(I)V

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0, v9}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setTouchLockManager(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiSelectionHandler:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->addCellEventListener(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->addPageEventListener(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$PageEventListener;)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mLatestTabPosition:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setDefaultPageIndex(I)V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 228
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 227
    invoke-static {v5, v10}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->getFloatingKeyboardMode(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v5

    .line 226
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->initResources(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-super {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->initialize(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;)V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->addCellEventListener(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;)V

    .line 253
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->initializeBindableComponents()V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsInitialized:Z

    .line 256
    return-void

    .line 196
    :cond_0
    const v0, 0x7f030007

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabContainerView:Landroid/view/View;

    goto/16 :goto_0

    .line 216
    :cond_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isUnicode8EmojiSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setContentAttribute(I)V

    goto :goto_1

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    const v1, 0x7f05005d

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setContentAttribute(I)V

    goto :goto_1
.end method

.method public onPageChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "startPageIndex"    # I
    .param p2, "endPageIndex"    # I
    .param p3, "startPageIdentifier"    # Ljava/lang/String;
    .param p4, "endPageIdentifier"    # Ljava/lang/String;

    .prologue
    .line 489
    if-ne p1, p2, :cond_0

    .line 490
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mLatestTabPosition:I

    .line 491
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mLatestTabPosition:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->saveTabPosition(I)V

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    .line 493
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;->fromXmlValue(I)Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    move-result-object v1

    .line 492
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->onChangeTabPosition(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;)V

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->updateDynamicContent()V

    .line 496
    return-void
.end method

.method public onPageScrollChanged(IF)V
    .locals 1
    .param p1, "leftmostVisiblePage"    # I
    .param p2, "pageScrolledPercentage"    # F

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->scrollToPosition(IF)V

    .line 501
    return-void
.end method

.method public onUsageDataReady()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->updateDynamicContent()V

    .line 506
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 512
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    if-eqz v0, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->updateDynamicContent()V

    .line 515
    :cond_0
    return-void
.end method

.method public persistUsageData()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->persistUsageData()V

    .line 484
    :cond_0
    return-void
.end method

.method public staticCellsInPage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->staticCellsInPage()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public updateAppearance(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;IIIZZI)V
    .locals 24
    .param p1, "toggleKey"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "deleteKey"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p3, "keyBackground"    # Landroid/graphics/drawable/Drawable;
    .param p4, "keyBackgroundPressed"    # Landroid/graphics/drawable/Drawable;
    .param p5, "keyBackgroundShadow"    # Landroid/graphics/drawable/Drawable;
    .param p6, "keyboardBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p7, "keyboardAndKeysAreaPadding"    # Landroid/graphics/Rect;
    .param p8, "textColor"    # I
    .param p9, "fadingEdgeHeight"    # I
    .param p10, "overscrollHeight"    # I
    .param p11, "isOneHandedKeyboard"    # Z
    .param p12, "isSplitKeyboard"    # Z
    .param p13, "emojiGridVariantSelectorYOffset"    # I

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsInitialized:Z

    if-nez v4, :cond_0

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->initialize()V

    .line 357
    :cond_0
    if-eqz p12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0900b5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v9, v4

    .line 359
    .local v9, "splitHalfWidth":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mContext:Landroid/content/Context;

    const v7, 0x7f02001c

    invoke-static {v4, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 361
    .local v5, "tabItemBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v7, 0x7f0d010d

    invoke-interface {v4, v7}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 363
    .local v6, "itemBackgroundColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiTabView:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsOneHandedKeyboard:Z

    invoke-virtual/range {v4 .. v10}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->initializeTabs(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;IZ)V

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v4, v9}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setSplitHalfWidth(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v7, 0x7f0d004e

    .line 368
    invoke-interface {v4, v7}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v4

    const v7, 0x3f666666    # 0.9f

    .line 367
    invoke-static {v4, v7}, Lcom/sonyericsson/ned/util/ColorUtil;->getColorWithModifiedBrightness(IF)I

    move-result v13

    .line 370
    .local v13, "cellBackgroundColor":I
    const v4, 0x3dcccccd    # 0.1f

    move/from16 v0, p8

    invoke-static {v0, v4}, Lcom/sonyericsson/ned/util/ColorUtil;->getColorWithModifiedAlpha(IF)I

    move-result v14

    .line 372
    .local v14, "borderColor":I
    const v4, 0x3e99999a    # 0.3f

    move/from16 v0, p8

    invoke-static {v0, v4}, Lcom/sonyericsson/ned/util/ColorUtil;->getColorWithModifiedAlpha(IF)I

    move-result v15

    .line 374
    .local v15, "cellIndicatorColor":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v7, 0x7f0d004e

    invoke-interface {v4, v7}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v11

    move/from16 v12, p8

    invoke-virtual/range {v10 .. v15}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setColors(IIIII)V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-virtual {v4, v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->updateSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setFadingEdgeHeight(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v8, 0x7f02001f

    invoke-interface {v7, v8}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setFadingEdgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setOverScrollHeight(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setIsOneHandedKeyboard(Z)V

    .line 385
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 388
    .local v22, "popupXAdjustment":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v23, 0x0

    .line 391
    .local v23, "touchAbsoluteYOffset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridView:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    sub-int v7, p13, v23

    move/from16 v0, v22

    invoke-virtual {v4, v0, v7}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->setPopupOffset(II)V

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p11

    move/from16 v3, p12

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->setPaddingForChildren(Landroid/graphics/Rect;ZZ)V

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridAndButtons:Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->setSplitableBackground(Landroid/graphics/drawable/Drawable;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiGridAndButtons:Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;

    invoke-virtual {v4, v9}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->setSplitHalfWidth(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    invoke-virtual/range {v16 .. v21}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->updateKeys(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 400
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mIsEmojiPresentationDirty:Z

    .line 401
    return-void

    .line 357
    .end local v5    # "tabItemBackground":Landroid/graphics/drawable/Drawable;
    .end local v6    # "itemBackgroundColor":Landroid/content/res/ColorStateList;
    .end local v9    # "splitHalfWidth":I
    .end local v13    # "cellBackgroundColor":I
    .end local v14    # "borderColor":I
    .end local v15    # "cellIndicatorColor":I
    .end local v22    # "popupXAdjustment":I
    .end local v23    # "touchAbsoluteYOffset":I
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 388
    .restart local v5    # "tabItemBackground":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "itemBackgroundColor":Landroid/content/res/ColorStateList;
    .restart local v9    # "splitHalfWidth":I
    .restart local v13    # "cellBackgroundColor":I
    .restart local v14    # "borderColor":I
    .restart local v15    # "cellIndicatorColor":I
    .restart local v22    # "popupXAdjustment":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    const-string v7, "candidate_bar_height"

    .line 389
    invoke-interface {v4, v7}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Ljava/lang/String;)I

    move-result v23

    goto :goto_1
.end method
