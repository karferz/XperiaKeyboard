.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;
.super Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;
.source "KeyboardTemplateInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
    }
.end annotation


# static fields
.field private static final ROW_HEIGHT:I = 0x1

.field private static final TAG_CASE:Ljava/lang/String; = "Case"

.field private static final TAG_DEFAULT:Ljava/lang/String; = "Default"

.field private static final TAG_INCLUDE_XML:Ljava/lang/String; = "KeyboardTemplate_IncludeXML"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD_TEMPLATE:Ljava/lang/String; = "KeyboardTemplate"

.field private static final TAG_KEY_SET:Ljava/lang/String; = "KeySet"

.field private static final TAG_LINK_REFERENCE:Ljava/lang/String; = "LinkReference"

.field private static final TAG_PRE_PROCESS:Ljava/lang/String; = "PreProcess"

.field private static final TAG_RESERVED_KEY:Ljava/lang/String; = "ReservedKey"

.field private static final TAG_ROOTINCLUDE:Ljava/lang/String; = "RootInclude"

.field private static final TAG_ROW_TEMPLATE:Ljava/lang/String; = "RowTemplate"

.field private static final TAG_SWITCH:Ljava/lang/String; = "Switch"


# instance fields
.field private mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

.field private mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

.field private mFloatingKeyboardType:Ljava/lang/String;

.field private final mScalerX:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

.field private final mScalerY:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

.field private final mSwitchCaseRowTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchGapFromPreviousKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bottomRowSettings"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
    .param p3, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSwitchCaseRowTable:Ljava/util/HashMap;

    .line 87
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getDistributionScalerX()Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mScalerX:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    .line 88
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getDistributionScalerY()Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mScalerY:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    .line 89
    return-void
.end method

.method private createKeyTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Landroid/content/res/TypedArray;Z)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    .locals 7
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "keyAttributes"    # Landroid/content/res/TypedArray;
    .param p3, "isReserved"    # Z

    .prologue
    .line 591
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    .line 592
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->getRowWidthPx()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 593
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardPadding()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mScalerX:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;ILandroid/content/res/TypedArray;Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Z)V

    .line 595
    .local v0, "keyTemplate":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getTouchGapPx()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mTouchGapFromPreviousKey:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setTouchGapPx(I)V

    .line 596
    return-object v0
.end method

.method private createRowTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Landroid/content/res/Resources;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
    .locals 8
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "keyboardAttributes"    # Landroid/content/res/TypedArray;
    .param p4, "rowAttributes"    # Landroid/content/res/TypedArray;
    .param p5, "keyAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    .line 582
    const/4 v0, 0x0

    .line 583
    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "inheritFromId":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mScalerX:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->reset()V

    .line 585
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    return-object v0
.end method

.method private doesCaseConditionPass(Lorg/xmlpull/v1/XmlPullParser;I)Z
    .locals 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "keyboardMode"    # I

    .prologue
    .line 311
    iget-object v13, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 312
    .local v8, "resources":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mBottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    .line 313
    .local v9, "settings":Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    sget-object v14, Lcom/sonyericsson/textinput/uxp/R$styleable;->Keyboard_Switch_Case:[I

    invoke-virtual {v8, v13, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 315
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x7

    move/from16 v0, p2

    invoke-direct {p0, v1, v13, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->matchOrIntegers(Landroid/content/res/TypedArray;II)Z

    move-result v4

    .line 317
    .local v4, "keyboardModeMatched":Z
    const/4 v13, 0x1

    .line 319
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->getShowPeriodAndCommaKeys()Z

    move-result v14

    .line 317
    invoke-static {v1, v13, v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v7

    .line 320
    .local v7, "punctuationKeysMatched":Z
    const/4 v14, 0x2

    .line 322
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->hasLeftFunctionKeyContent()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->getShowSetupWizard()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const/4 v13, 0x1

    .line 320
    :goto_0
    invoke-static {v1, v14, v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v5

    .line 323
    .local v5, "leftFunctionKeyMatched":Z
    const/4 v13, 0x0

    .line 324
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->getShowXKey()Z

    move-result v14

    .line 323
    invoke-static {v1, v13, v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v12

    .line 325
    .local v12, "xKeyMatched":Z
    const/4 v13, 0x3

    .line 326
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->getShowSetupWizard()Z

    move-result v14

    .line 325
    invoke-static {v1, v13, v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v11

    .line 327
    .local v11, "wizardKeyMatched":Z
    const/16 v13, 0x8

    .line 328
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getCurrentOrientation()I

    move-result v14

    .line 327
    invoke-static {v1, v13, v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v6

    .line 329
    .local v6, "orientationMatched":Z
    const/4 v13, 0x4

    .line 330
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->getShowHandwritingKey()Z

    move-result v14

    .line 329
    invoke-static {v1, v13, v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v3

    .line 331
    .local v3, "handwritingMatched":Z
    const/4 v13, 0x5

    .line 332
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->isWebTabKeyUsed()Z

    move-result v14

    .line 331
    invoke-static {v1, v13, v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v10

    .line 333
    .local v10, "webTabKeyMatched":Z
    const/4 v13, 0x6

    .line 334
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->isEmailDotComKeyUsed()Z

    move-result v14

    .line 333
    invoke-static {v1, v13, v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v2

    .line 336
    .local v2, "emailDotComKeyMatched":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    if-eqz v12, :cond_2

    if-eqz v6, :cond_2

    if-eqz v11, :cond_2

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    if-eqz v10, :cond_2

    if-eqz v2, :cond_2

    const/4 v13, 0x1

    :goto_1
    return v13

    .line 322
    .end local v2    # "emailDotComKeyMatched":Z
    .end local v3    # "handwritingMatched":Z
    .end local v5    # "leftFunctionKeyMatched":Z
    .end local v6    # "orientationMatched":Z
    .end local v10    # "webTabKeyMatched":Z
    .end local v11    # "wizardKeyMatched":Z
    .end local v12    # "xKeyMatched":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 337
    .restart local v2    # "emailDotComKeyMatched":Z
    .restart local v3    # "handwritingMatched":Z
    .restart local v5    # "leftFunctionKeyMatched":Z
    .restart local v6    # "orientationMatched":Z
    .restart local v10    # "webTabKeyMatched":Z
    .restart local v11    # "wizardKeyMatched":Z
    .restart local v12    # "xKeyMatched":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private evaluateCaseCondition(IILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
    .locals 1
    .param p1, "event"    # I
    .param p2, "keyboardMode"    # I
    .param p3, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    .line 400
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 401
    iget-object v0, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->doesCaseConditionPass(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->PASSED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    .line 406
    :goto_0
    return-object v0

    .line 404
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->FAILED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    goto :goto_0

    .line 406
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->PROCESSED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    goto :goto_0
.end method

.method private getIncludeAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 551
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->KeyboardTemplate_IncludeXML:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 561
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->KeyboardTemplate_KeyTemplate:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getKeySetAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 556
    .line 557
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->KeyboardTemplate_KeySet:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getKeyboardAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 571
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->KeyboardTemplate:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getLinkReferenceAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 575
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->KeyboardTemplate_LinkReference:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getRowAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 566
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->KeyboardTemplate_RowTemplate:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getRowFromSwitchTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rowId"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSwitchCaseRowTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, "linkedTemplateRowId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 307
    .end local p1    # "rowId":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "rowId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getRowFromSwitchTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getTemplateRowIdsFromKeyboardRowIds(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "keyboardRowIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 291
    .local v2, "templateRowIds":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 292
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    .local v1, "keyboardRowId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSwitchCaseRowTable:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getRowFromSwitchTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 291
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    aput-object v1, v2, v0

    goto :goto_1

    .line 299
    .end local v1    # "keyboardRowId":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static matchBoolean(Landroid/content/res/TypedArray;IZ)Z
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-ne v1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static matchInteger(Landroid/content/res/TypedArray;II)Z
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private matchOrIntegers(Landroid/content/res/TypedArray;II)Z
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 343
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    and-int/2addr v0, p3

    if-ne v0, p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToIncludeFile(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)I
    .locals 6
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "keyboardMode"    # I
    .param p3, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    const/4 v5, 0x0

    .line 255
    iget-object v1, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 256
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 257
    .local v2, "templateIncludeXmlId":I
    :goto_0
    const-string v3, "KeyboardTemplate_IncludeXML"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->moveToTag(Ljava/lang/String;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getIncludeAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 259
    .local v0, "includeAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 261
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 263
    .end local v0    # "includeAttributes":Landroid/content/res/TypedArray;
    :cond_0
    return v2
.end method

.method private moveToTagAccordingToCaseEvaluation(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
    .param p2, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    const/4 v1, 0x3

    .line 269
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->FAILED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    if-ne p1, v0, :cond_1

    .line 270
    const-string v0, "Case"

    invoke-virtual {p0, v0, v1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->moveToTag(Ljava/lang/String;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Z

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->PROCESSED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    if-ne p1, v0, :cond_0

    .line 272
    const-string v0, "Switch"

    invoke-virtual {p0, v0, v1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->moveToTag(Ljava/lang/String;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Z

    goto :goto_0
.end method

.method private parseIncludeXMLTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;IILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 7
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "keyboardMode"    # I
    .param p3, "event"    # I
    .param p4, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    const/4 v5, 0x0

    .line 435
    iget-object v2, p4, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 436
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x2

    if-ne p3, v4, :cond_1

    .line 437
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getIncludeAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 438
    .local v0, "includeAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 441
    .local v3, "templateIncludeXmlId":I
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object v1

    .line 443
    .local v1, "includeParserWrapper":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseTags(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    .line 444
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 451
    .end local v0    # "includeAttributes":Landroid/content/res/TypedArray;
    .end local v1    # "includeParserWrapper":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;
    .end local v3    # "templateIncludeXmlId":I
    :cond_0
    return-void

    .line 445
    :cond_1
    const/4 v4, 0x3

    if-eq p3, v4, :cond_0

    .line 448
    new-instance v4, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong event["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] in Keyboard"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v4
.end method

.method private parseKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Landroid/content/res/TypedArray;Z)V
    .locals 3
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "keyAttributes"    # Landroid/content/res/TypedArray;
    .param p3, "isReserved"    # Z

    .prologue
    .line 506
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->createKeyTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Landroid/content/res/TypedArray;Z)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 507
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualXPx()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 508
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualWidthPx()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 509
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getTouchXPx()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getTouchWidthPx()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mTouchGapFromPreviousKey:I

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->addKeyTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;)V

    .line 511
    return-void
.end method

.method private parseKeySetTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 8
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "event"    # I
    .param p3, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    const/4 v6, 0x0

    .line 515
    const/4 v5, 0x2

    if-ne p2, v5, :cond_2

    .line 516
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    if-nez v5, :cond_0

    .line 517
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    const-string v6, "Key without row"

    invoke-direct {v5, v6, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v5

    .line 519
    :cond_0
    iget-object v4, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 520
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getKeySetAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 521
    .local v2, "keySetAttributes":Landroid/content/res/TypedArray;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 523
    .local v1, "keyAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 525
    .local v3, "numberOfKeys":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 526
    invoke-direct {p0, p1, v1, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Landroid/content/res/TypedArray;Z)V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 530
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 536
    .end local v0    # "i":I
    .end local v1    # "keyAttributes":Landroid/content/res/TypedArray;
    .end local v2    # "keySetAttributes":Landroid/content/res/TypedArray;
    .end local v3    # "numberOfKeys":I
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_1
    return-void

    .line 531
    :cond_2
    const/4 v5, 0x3

    if-ne p2, v5, :cond_3

    .line 532
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    goto :goto_1

    .line 534
    :cond_3
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong event["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] in KeySet"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v5
.end method

.method private parseKeyTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;IZLcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 4
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "event"    # I
    .param p3, "isReserved"    # Z
    .param p4, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    .line 490
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    if-nez v1, :cond_0

    .line 492
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    const-string v2, "Key without row"

    invoke-direct {v1, v2, p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v1

    .line 494
    :cond_0
    iget-object v1, p4, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 495
    .local v0, "keyAttributes":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v0, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Landroid/content/res/TypedArray;Z)V

    .line 496
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 502
    .end local v0    # "keyAttributes":Landroid/content/res/TypedArray;
    :goto_0
    return-void

    .line 497
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 498
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    goto :goto_0

    .line 500
    :cond_2
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong event["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in Key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v1
.end method

.method private parseKeyboardTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 7
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "event"    # I
    .param p3, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    .line 412
    iget-object v2, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 413
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 414
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getKeyboardAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 415
    .local v1, "keyboardAttributes":Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 417
    .local v0, "keyAttributes":Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->setKeyboardValues(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 418
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 419
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSizeAndScaleProviderInitiator()Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;

    move-result-object v3

    .line 420
    .local v3, "sizeAndScaleProviderInitiator":Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;
    if-eqz v3, :cond_0

    .line 421
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->getTotalWidth()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;->setScaledKeyboardWidth(I)V

    .line 424
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    .end local v0    # "keyAttributes":Landroid/content/res/TypedArray;
    .end local v1    # "keyboardAttributes":Landroid/content/res/TypedArray;
    .end local v3    # "sizeAndScaleProviderInitiator":Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;
    :cond_1
    return-void

    .line 426
    :cond_2
    const/4 v4, 0x3

    if-eq p2, v4, :cond_1

    .line 429
    new-instance v4, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong event["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] in Keyboard"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v4
.end method

.method private parseKeyboardTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 2
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "keyboardMode"    # I
    .param p3, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    const/4 v1, 0x0

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mTouchGapFromPreviousKey:I

    .line 349
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentKeyTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 350
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseTags(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    .line 352
    return-void
.end method

.method private parseLinkReferenceTag(ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    .line 277
    iget-object v3, p2, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 278
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getLinkReferenceAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "layoutId":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "linkedId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSwitchCaseRowTable:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "layoutId":Ljava/lang/String;
    .end local v2    # "linkedId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parsePreProcessContent(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 9
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "keyboardMode"    # I
    .param p3, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    .line 220
    iget-object v2, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 221
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const-string v5, ""

    .line 222
    .local v5, "tagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 224
    .local v4, "tagCount":I
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v6, 0x1

    if-eq v1, v6, :cond_0

    .line 225
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 226
    const-string v6, "PreProcess"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    .line 251
    :cond_0
    return-void

    .line 228
    :cond_1
    const-string v6, "PreProcess"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 245
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    :cond_3
    const-string v6, "Switch"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 232
    const-string v6, "Case"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 233
    invoke-direct {p0, v1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->evaluateCaseCondition(IILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    move-result-object v3

    .line 235
    .local v3, "result":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
    invoke-direct {p0, v3, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->moveToTagAccordingToCaseEvaluation(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 247
    .end local v1    # "event":I
    .end local v3    # "result":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tagName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tagCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":I
    :cond_4
    :try_start_1
    const-string v6, "Default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 238
    const-string v6, "RootInclude"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 240
    const-string v6, "LinkReference"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 241
    invoke-direct {p0, v1, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseLinkReferenceTag(ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    goto :goto_1

    .line 247
    .end local v1    # "event":I
    :catch_1
    move-exception v0

    goto :goto_2

    .line 242
    .restart local v1    # "event":I
    :cond_5
    if-eqz v5, :cond_2

    .line 243
    new-instance v6, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported tag ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
.end method

.method private parseRowTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 10
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "event"    # I
    .param p3, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 455
    iget-object v6, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 456
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v6, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getKeyboardAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 458
    .local v3, "keyboardAttributes":Landroid/content/res/TypedArray;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v6, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getRowAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 459
    .local v4, "rowAttributes":Landroid/content/res/TypedArray;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v6, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 461
    .local v5, "keyAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 462
    .local v7, "templateRowId":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {p1, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->needTemplateRow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    const-string v0, "RowTemplate"

    invoke-virtual {p0, v0, v2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->moveToTag(Ljava/lang/String;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Z

    .line 470
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 471
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 486
    .end local v3    # "keyboardAttributes":Landroid/content/res/TypedArray;
    .end local v4    # "rowAttributes":Landroid/content/res/TypedArray;
    .end local v5    # "keyAttributes":Landroid/content/res/TypedArray;
    .end local v7    # "templateRowId":Ljava/lang/String;
    :goto_1
    return-void

    .line 465
    .restart local v3    # "keyboardAttributes":Landroid/content/res/TypedArray;
    .restart local v4    # "rowAttributes":Landroid/content/res/TypedArray;
    .restart local v5    # "keyAttributes":Landroid/content/res/TypedArray;
    .restart local v7    # "templateRowId":Ljava/lang/String;
    :cond_0
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mTouchGapFromPreviousKey:I

    .line 467
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->createRowTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Landroid/content/res/Resources;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    goto :goto_0

    .line 473
    .end local v3    # "keyboardAttributes":Landroid/content/res/TypedArray;
    .end local v4    # "rowAttributes":Landroid/content/res/TypedArray;
    .end local v5    # "keyAttributes":Landroid/content/res/TypedArray;
    .end local v7    # "templateRowId":Ljava/lang/String;
    :cond_1
    if-ne p2, v2, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    if-eqz v0, :cond_3

    .line 474
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mFloatingKeyboardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0900b5

    .line 477
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f09011d

    .line 478
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 476
    invoke-virtual {v0, v1, v2, v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->modifyKeysForSplitKeyboard(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;II)V

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->addRow(Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;)V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mCurrentRowTemplate:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    goto :goto_1

    .line 484
    :cond_3
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong event["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in Row"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v0
.end method

.method private parseTags(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 9
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "keyboardMode"    # I
    .param p3, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    const/4 v8, 0x1

    .line 356
    iget-object v2, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 358
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const-string v5, ""

    .line 359
    .local v5, "tagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 361
    .local v4, "tagCount":I
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "event":I
    if-eq v1, v8, :cond_9

    .line 362
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 363
    const-string v6, "PreProcess"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 364
    const-string v6, "PreProcess"

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->moveToTag(Ljava/lang/String;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Z

    .line 390
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 365
    :cond_1
    const-string v6, "KeyboardTemplate"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 366
    invoke-direct {p0, p1, v1, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseKeyboardTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 392
    .end local v1    # "event":I
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tagName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tagCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":I
    :cond_2
    :try_start_1
    const-string v6, "KeyboardTemplate_IncludeXML"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 368
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseIncludeXMLTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;IILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    goto :goto_1

    .line 392
    .end local v1    # "event":I
    :catch_1
    move-exception v0

    goto :goto_2

    .line 369
    .restart local v1    # "event":I
    :cond_3
    const-string v6, "RowTemplate"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 370
    invoke-direct {p0, p1, v1, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseRowTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    goto :goto_1

    .line 371
    :cond_4
    const-string v6, "Key"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 372
    const/4 v6, 0x0

    invoke-direct {p0, p1, v1, v6, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseKeyTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;IZLcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    goto :goto_1

    .line 373
    :cond_5
    const-string v6, "ReservedKey"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 374
    const/4 v6, 0x1

    invoke-direct {p0, p1, v1, v6, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseKeyTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;IZLcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    goto :goto_1

    .line 375
    :cond_6
    const-string v6, "KeySet"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 376
    invoke-direct {p0, p1, v1, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseKeySetTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    goto/16 :goto_1

    .line 377
    :cond_7
    const-string v6, "Switch"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 379
    const-string v6, "RootInclude"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 381
    const-string v6, "Case"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 382
    invoke-direct {p0, v1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->evaluateCaseCondition(IILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    move-result-object v3

    .line 384
    .local v3, "result":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
    invoke-direct {p0, v3, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->moveToTagAccordingToCaseEvaluation(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    goto/16 :goto_1

    .line 385
    .end local v3    # "result":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
    :cond_8
    const-string v6, "Default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 387
    if-eqz v5, :cond_0

    .line 388
    new-instance v6, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported tag ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 396
    :cond_9
    return-void
.end method

.method private postProcessKeyboardTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILjava/util/List;)V
    .locals 14
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "keyboardLayoutXml"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, "keyboardRowIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->getRows()[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    move-result-object v8

    .line 123
    .local v8, "templateRows":[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
    array-length v11, v8

    new-array v7, v11, [I

    .line 124
    .local v7, "templateFixRowsHeights":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v11, v8

    if-ge v1, v11, :cond_2

    .line 125
    aget-object v5, v8, v1

    .line 126
    .local v5, "row":Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
    if-nez v5, :cond_0

    .line 127
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find required template row for "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " index:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " id:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 129
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 130
    :cond_0
    iget-object v11, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightId:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 131
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    iget-object v12, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightId:Ljava/lang/String;

    invoke-interface {v11, v12}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Ljava/lang/String;)I

    move-result v11

    aput v11, v7, v1

    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v5    # "row":Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
    :cond_2
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v11}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardHeightPx()I

    move-result v3

    .line 137
    .local v3, "keyboardHeightPx":I
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v11}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardPadding()Landroid/graphics/Rect;

    move-result-object v11

    iget v4, v11, Landroid/graphics/Rect;->top:I

    .line 138
    .local v4, "keyboardPaddingTopPx":I
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v11}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSizeAndScaleProviderInitiator()Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;

    move-result-object v11

    array-length v12, v8

    .line 139
    invoke-interface {v11, v12, v7}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;->processScaledKeyboardHeightAndFixedRows(I[I)V

    .line 141
    const/4 v6, 0x0

    .line 143
    .local v6, "rowYValue":I
    const/4 v1, 0x0

    :goto_1
    array-length v11, v8

    if-ge v1, v11, :cond_7

    .line 144
    aget-object v5, v8, v1

    .line 145
    .restart local v5    # "row":Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
    if-eqz v1, :cond_3

    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    if-ne v1, v11, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 147
    .local v2, "isTopOrBottomRow":Z
    :goto_2
    iget v11, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mPopupKeySizePx:I

    if-lez v11, :cond_5

    .line 148
    iget v11, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mPopupKeySizePx:I

    invoke-virtual {v5, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->updateRowHeight(I)V

    .line 159
    :goto_3
    add-int v9, v6, v4

    .line 160
    .local v9, "touchYPx":I
    add-int v11, v6, v4

    iget v12, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapTopPx:I

    add-int v10, v11, v12

    .line 161
    .local v10, "visualYPx":I
    invoke-virtual {v5, v10, v9, v3, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->updateKeysWithHeightAndPosition(IIIZ)V

    .line 164
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->getRowHeight()I

    move-result v11

    add-int/2addr v6, v11

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v2    # "isTopOrBottomRow":Z
    .end local v9    # "touchYPx":I
    .end local v10    # "visualYPx":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 149
    .restart local v2    # "isTopOrBottomRow":Z
    :cond_5
    iget-object v11, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightId:Ljava/lang/String;

    if-nez v11, :cond_6

    .line 150
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mScalerY:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->allocate(I)I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->updateRowHeight(I)V

    goto :goto_3

    .line 152
    :cond_6
    aget v11, v7, v1

    invoke-virtual {v5, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->updateRowHeight(I)V

    goto :goto_3

    .line 167
    .end local v2    # "isTopOrBottomRow":Z
    .end local v5    # "row":Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
    :cond_7
    iput v6, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mContentHeightPx:I

    .line 168
    return-void
.end method

.method private preProcessKeyboardTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;IILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;I)Ljava/util/List;
    .locals 5
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "keyboardMode"    # I
    .param p3, "keyboardLayoutResource"    # I
    .param p4, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    .param p5, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;
    .param p6, "templateLayoutXml"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;",
            "II",
            "Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->moveToIncludeFile(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)I

    move-result v1

    .line 193
    .local v1, "templateIncludeXmlId":I
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object p5

    .line 195
    invoke-direct {p0, p1, p2, p5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parsePreProcessContent(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mContext:Landroid/content/Context;

    invoke-static {v3, p3, p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->getRowIds(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Ljava/util/List;

    move-result-object v0

    .line 208
    .local v0, "keyboardRowIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->getTemplateRowIdsFromKeyboardRowIds(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "templateRowIds":[Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->setTemplateRowIds([Ljava/lang/String;)V

    .line 211
    check-cast p4, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;

    .line 212
    .end local p4    # "sizeAndScaleProvider":Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p4, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;->setKeyboardLayoutRowCount(I)V

    .line 214
    return-object v0

    .line 197
    .end local v0    # "keyboardRowIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "templateRowIds":[Ljava/lang/String;
    .restart local p4    # "sizeAndScaleProvider":Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    :cond_1
    invoke-virtual {p0, p6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object p5

    .line 198
    :goto_0
    const-string v3, "PreProcess"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4, p5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->moveToTag(Ljava/lang/String;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-direct {p0, p1, p2, p5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parsePreProcessContent(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentOrientation()I
    .locals 2

    .prologue
    .line 539
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 540
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 546
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->ORIENTATION_UNDEFINED:I

    :goto_0
    return v1

    .line 542
    :pswitch_0
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->ORIENTATION_PORTRAIT:I

    goto :goto_0

    .line 544
    :pswitch_1
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->ORIENTATION_LANDSCAPE:I

    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public inflateKeyboardTemplate(IIILjava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .locals 8
    .param p1, "keyboardLayoutXml"    # I
    .param p2, "templateLayoutXml"    # I
    .param p3, "mode"    # I
    .param p4, "floatingKeyboardType"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mFloatingKeyboardType:Ljava/lang/String;

    .line 103
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-direct {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;-><init>(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 105
    .local v1, "template":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object v5

    .line 106
    .local v5, "parserWrapper":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move-object v0, p0

    move v2, p3

    move v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->preProcessKeyboardTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;IILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;I)Ljava/util/List;

    move-result-object v7

    .line 109
    .local v7, "keyboardRowIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object v5

    .line 110
    invoke-direct {p0, v1, p3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->parseKeyboardTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    .line 112
    invoke-direct {p0, v1, p1, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->postProcessKeyboardTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;ILjava/util/List;)V

    .line 114
    return-object v1
.end method
