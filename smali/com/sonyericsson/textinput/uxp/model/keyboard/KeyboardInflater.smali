.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;
.super Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;
.source "KeyboardInflater.java"


# static fields
.field private static final ATTR_DATA:Ljava/lang/String; = "data"

.field private static final NO_SCALE_FACTOR:F = 1.0f

.field private static final TAG_BASE_CHARACTER:Ljava/lang/String; = "baseCharacter"

.field private static final TAG_CANDIDATE:Ljava/lang/String; = "Candidate"

.field private static final TAG_CANDIDATES:Ljava/lang/String; = "candidates"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_OVERRIDE_KEY:Ljava/lang/String; = "OverrideKey"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCurrentKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field private mCurrentKeyIndexInKeyboard:I

.field private mCurrentRowIndex:I

.field private mCurrentTemplateRow:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

.field private mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

.field private final mPeriodScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bottomRowSettings"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
    .param p3, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005f

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mPeriodScaleFactor:F

    .line 92
    return-void
.end method

.method private addLanguageCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;ILcom/sonyericsson/ned/model/CodePointString;)V
    .locals 9
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "languageCandidatesXml"    # I
    .param p3, "prohibitedCandidateCharacters"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 446
    .line 447
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->inflateLanguageCandidatesXml(ILcom/sonyericsson/ned/model/CodePointString;)Ljava/util/Map;

    move-result-object v4

    .line 448
    .local v4, "languageCandidates":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 451
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 452
    .local v1, "baseCharacterEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 453
    .local v0, "baseCharacter":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 454
    .local v2, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getNormalCandidates()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    move-result-object v5

    iget-object v5, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/ned/model/CodePointString;->equalsExpectingDifference(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    new-instance v8, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 457
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v8, v0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/ArrayList;)V

    .line 456
    invoke-virtual {v2, v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mergeNormalCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getShiftedCandidates()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    move-result-object v5

    iget-object v5, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/ned/model/CodePointString;->equalsExpectingDifference(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 460
    new-instance v8, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 461
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v8, v0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/ArrayList;)V

    .line 460
    invoke-virtual {v2, v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mergeShiftedCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V

    goto :goto_0

    .line 465
    .end local v0    # "baseCharacter":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "baseCharacterEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;>;"
    .end local v2    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_3
    return-void
.end method

.method private cloneKeyTemplatesInRow(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;)V
    .locals 3
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "secondaryStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    .prologue
    .line 334
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentTemplateRow:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->getKeyTemplates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 335
    .local v0, "keyTemplate":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v2, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;)V

    invoke-virtual {p1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->addKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    goto :goto_0

    .line 337
    .end local v0    # "keyTemplate":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    :cond_0
    return-void
.end method

.method private getCandidateAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 429
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->Keyboard_Key_Candidate:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 433
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutBaseCharacters(Ljava/util/List;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;)",
            "Lcom/sonyericsson/ned/model/CodePointString;"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 480
    .local v0, "baseCharacters":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 481
    .local v1, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getNormalCandidates()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getShiftedCandidates()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 484
    .end local v1    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    return-object v2
.end method

.method private getMergeableKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 4
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "keyIndex"    # I

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 237
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyIndexString()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 238
    .local v1, "keyIndexCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, p2, :cond_0

    .line 245
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v1    # "keyIndexCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 242
    .restart local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getOverrideKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 441
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->Keyboard_OverrideKey:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getRowAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 437
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->Keyboard_Row:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static getRowIds(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->createParserWrapper(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object v4

    .line 107
    .local v4, "parserWrapper":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v6, "rowIdsToParse":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, ""

    .line 109
    .local v8, "tagName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 112
    .local v7, "tagCount":I
    :try_start_0
    iget-object v3, v4, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 113
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v9, 0x1

    if-eq v1, v9, :cond_2

    .line 114
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 115
    const-string v9, "Row"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 116
    const/4 v9, 0x2

    if-ne v1, v9, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 118
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    sget-object v11, Lcom/sonyericsson/textinput/uxp/R$styleable;->Keyboard_Row:[I

    .line 117
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 119
    .local v5, "rowAttributes":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "rowAttributes":Landroid/content/res/TypedArray;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v9, 0x3

    if-eq v1, v9, :cond_0

    .line 128
    new-instance v9, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong event["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] in Switch"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .end local v1    # "event":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " resourceId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "file:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tagName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tagCount:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    return-object v6

    .line 134
    .end local v1    # "event":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private handlePeriodScaling(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 3
    .param p1, "currentKey"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 413
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mPeriodScaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getNormalLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->PERIOD:Lcom/sonyericsson/ned/model/CodePointString;

    .line 418
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getNormalLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/model/CodePointString;->equalsExpectingDifference(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyTextSize()I

    move-result v0

    .line 420
    .local v0, "textSize":I
    if-lez v0, :cond_2

    .line 421
    int-to-float v1, v0

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mPeriodScaleFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setKeyTextSize(I)V

    goto :goto_0

    .line 423
    :cond_2
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mPeriodScaleFactor:F

    invoke-virtual {p1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setKeyTextSizeScaleFactor(F)V

    goto :goto_0
.end method

.method private isLatinScript(Ljava/lang/String;)Z
    .locals 1
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 548
    const-string v0, "latin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLegalBilingualLanguage(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)Z
    .locals 1
    .param p1, "id"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    .prologue
    .line 542
    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;

    .line 544
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergePhonepadCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 8
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "bilingualKeyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 215
    const/4 v2, 0x2

    .local v2, "keyIndex":I
    :goto_0
    const/16 v5, 0x9

    if-gt v2, v5, :cond_3

    .line 216
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->getMergeableKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v3

    .line 217
    .local v3, "keyToBeUpdated":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->getMergeableKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 218
    .local v0, "bilingualKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mergeCandidatesBeforeDigit(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_0
    if-eqz v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "label="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 222
    invoke-virtual {v6}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "keyToBeUpdatedInfo":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "label="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 225
    invoke-virtual {v6}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "bilingualKeyInfo":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " keyIndex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " keyToBeUpdated:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bilingualKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " keyboard: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bilingualKeyboard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 222
    .end local v1    # "bilingualKeyInfo":Ljava/lang/String;
    .end local v4    # "keyToBeUpdatedInfo":Ljava/lang/String;
    :cond_1
    const-string v4, "null"

    goto :goto_1

    .line 225
    .restart local v4    # "keyToBeUpdatedInfo":Ljava/lang/String;
    :cond_2
    const-string v1, "null"

    goto :goto_2

    .line 232
    .end local v0    # "bilingualKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v3    # "keyToBeUpdated":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v4    # "keyToBeUpdatedInfo":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private parseCandidateTag(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 396
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    if-nez v1, :cond_0

    .line 398
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    const-string v2, "Candidate without key"

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v1

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->getCandidateAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 402
    .local v0, "candidateAttributes":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->addCandidate(Landroid/content/res/TypedArray;)V

    .line 403
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 404
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->handlePeriodScaling(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 410
    .end local v0    # "candidateAttributes":Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 405
    :cond_2
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 408
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong event["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in Candidate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v1
.end method

.method private parseKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Landroid/content/res/TypedArray;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 4
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "keyAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    .line 355
    :goto_0
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKeyIndexInKeyboard:I

    invoke-virtual {p1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 356
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-nez v0, :cond_0

    .line 357
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing template key with key index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKeyIndexInKeyboard:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v1

    .line 359
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isReserved()Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->overrideKeyValues(Landroid/content/res/TypedArray;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->handlePeriodScaling(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 362
    return-object v0

    .line 354
    :cond_1
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKeyIndexInKeyboard:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKeyIndexInKeyboard:I

    goto :goto_0
.end method

.method private parseKeyTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;I)V
    .locals 4
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p3, "event"    # I

    .prologue
    .line 340
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->getKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 342
    .local v0, "keyAttributes":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Landroid/content/res/TypedArray;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 343
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKeyIndexInKeyboard:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKeyIndexInKeyboard:I

    .line 344
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 350
    .end local v0    # "keyAttributes":Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 345
    :cond_1
    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    .line 348
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong event["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in Key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v1
.end method

.method private parseKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;)V
    .locals 8
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 270
    iput-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 271
    iput v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKeyIndexInKeyboard:I

    .line 272
    iput-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentTemplateRow:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    .line 273
    iput v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentRowIndex:I

    .line 275
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    iget-object v2, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 276
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const-string v4, ""

    .line 277
    .local v4, "tagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 279
    .local v3, "tagCount":I
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_6

    .line 280
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 281
    const-string v5, "Keyboard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseKeyboardTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;I)V

    .line 294
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const-string v5, "Row"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseRowTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 296
    .end local v1    # "event":I
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    iget-object v7, v7, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "tagName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tagCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":I
    :cond_2
    :try_start_1
    const-string v5, "Key"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseKeyTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;I)V

    goto :goto_1

    .line 296
    .end local v1    # "event":I
    :catch_1
    move-exception v0

    goto :goto_2

    .line 287
    .restart local v1    # "event":I
    :cond_3
    const-string v5, "Candidate"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 288
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseCandidateTag(I)V

    goto :goto_1

    .line 289
    :cond_4
    const-string v5, "OverrideKey"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 290
    const-string v5, "OverrideKey"

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-virtual {p0, v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->moveToTag(Ljava/lang/String;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Z

    goto :goto_1

    .line 291
    :cond_5
    if-eqz v4, :cond_0

    .line 292
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported tag ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    :cond_6
    return-void
.end method

.method private parseKeyboardTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;I)V
    .locals 3
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p3, "event"    # I

    .prologue
    .line 304
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 305
    invoke-virtual {p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->initKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;)V

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 307
    iget v0, p2, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mContentHeightPx:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setContentHeightPx(I)V

    goto :goto_0

    .line 309
    :cond_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong event["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in Keyboard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v0
.end method

.method private parseOverrideKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;I)Z
    .locals 8
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "event"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 368
    const/4 v7, 0x2

    if-ne p2, v7, :cond_2

    .line 369
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    iget-object v4, v7, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 370
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->getOverrideKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 371
    .local v3, "overrideKeyAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 373
    .local v2, "metaKey":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    if-nez v2, :cond_0

    .line 375
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    const-string v6, "MetaKey in OverrideKey is equal to 0 in "

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v5

    .line 379
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->getKeyAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 380
    .local v1, "keyAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {p1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKeys(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 381
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->overrideKeyValues(Landroid/content/res/TypedArray;)V

    .line 382
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->handlePeriodScaling(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 383
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    goto :goto_0

    .line 385
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    .end local v1    # "keyAttributes":Landroid/content/res/TypedArray;
    .end local v2    # "metaKey":I
    .end local v3    # "overrideKeyAttributes":Landroid/content/res/TypedArray;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_1
    return v5

    .line 387
    :cond_2
    const/4 v5, 0x3

    if-ne p2, v5, :cond_3

    .line 388
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move v5, v6

    .line 389
    goto :goto_1

    .line 391
    :cond_3
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong event["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] in OverrideKey"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v5
.end method

.method private parseOverrideKeys(ILcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 7
    .param p1, "resourceId"    # I
    .param p2, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .line 252
    const/4 v2, 0x0

    .line 253
    .local v2, "isOverrideKey":Z
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    iget-object v3, v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 254
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    .line 255
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "tagName":Ljava/lang/String;
    const-string v5, "OverrideKey"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseOverrideKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;I)Z

    move-result v2

    goto :goto_0

    .line 258
    :cond_1
    const-string v5, "Candidate"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    if-eqz v2, :cond_0

    .line 260
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseCandidateTag(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 264
    .end local v1    # "event":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    return-void

    .line 264
    .end local v1    # "event":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private parseRowTag(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;I)V
    .locals 6
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p3, "event"    # I

    .prologue
    .line 314
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    .line 315
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentRowIndex:I

    invoke-virtual {p2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->getRow(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentTemplateRow:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    .line 316
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->getRowAttributes(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 317
    .local v0, "rowAttributes":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 319
    .local v1, "secondaryStyle":I
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->values()[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    move-result-object v3

    aget-object v2, v3, v1

    .line 321
    .local v2, "secondaryStyleEnum":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->cloneKeyTemplatesInRow(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;)V

    .line 322
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    .end local v0    # "rowAttributes":Landroid/content/res/TypedArray;
    .end local v1    # "secondaryStyle":I
    .end local v2    # "secondaryStyleEnum":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v3, 0x3

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentTemplateRow:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    if-eqz v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentTemplateRow:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->getRowWidthPx()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->updateContentWidthPx(I)V

    .line 325
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentRowIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentRowIndex:I

    .line 326
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mCurrentTemplateRow:Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    goto :goto_0

    .line 328
    :cond_1
    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong event["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] in Row"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;-><init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V

    throw v3
.end method

.method private removeDuplicateCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 6
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 468
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 469
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 470
    .local v0, "key1":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 471
    .local v1, "key2":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eq v0, v1, :cond_1

    .line 472
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->removeDuplicateCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    goto :goto_0

    .line 476
    .end local v0    # "key1":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v1    # "key2":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_2
    return-void
.end method


# virtual methods
.method public inflateLanguageCandidatesXml(ILcom/sonyericsson/ned/model/CodePointString;)Ljava/util/Map;
    .locals 11
    .param p1, "languageCandidatesXml"    # I
    .param p2, "prohibitedCandidateCharacters"    # Lcom/sonyericsson/ned/model/CodePointString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 490
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v5, "languageCandidates":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;>;"
    const/4 v8, 0x0

    .line 495
    .local v8, "primaryCharacter":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .local v3, "event":I
    const/4 v9, 0x1

    if-eq v3, v9, :cond_7

    .line 496
    const/4 v9, 0x2

    if-ne v3, v9, :cond_0

    .line 497
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, "name":Ljava/lang/String;
    const-string v9, "baseCharacter"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 499
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 500
    invoke-interface {v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 502
    invoke-interface {v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 501
    invoke-static {v9}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    .line 503
    goto :goto_0

    .line 499
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 506
    .end local v4    # "i":I
    :cond_2
    const-string v9, "candidates"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 507
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 508
    invoke-interface {v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 507
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 511
    :cond_3
    if-eqz v8, :cond_6

    .line 513
    invoke-interface {v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 512
    invoke-static {v9}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 514
    .local v1, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p2, v1}, Lcom/sonyericsson/ned/model/CodePointString;->contains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 515
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    :cond_4
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 531
    .end local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v3    # "event":I
    .end local v4    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 532
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_1
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_5

    .line 535
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw v9

    .line 525
    .restart local v3    # "event":I
    .restart local v4    # "i":I
    .restart local v6    # "name":Ljava/lang/String;
    :cond_6
    :try_start_2
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Candidate without primaryCharacter"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    .end local v3    # "event":I
    .end local v4    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v2, v9

    goto :goto_3

    .line 534
    .restart local v3    # "event":I
    :cond_7
    if-eqz v7, :cond_8

    .line 535
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 538
    :cond_8
    return-object v5

    .line 531
    .end local v3    # "event":I
    :catch_2
    move-exception v9

    move-object v2, v9

    goto :goto_3
.end method

.method public inflatePhonepadKeyboard(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .locals 9
    .param p1, "id"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
    .param p2, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p3, "primaryLanguageScript"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-direct {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;-><init>(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 183
    .local v3, "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    iget v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .line 184
    invoke-direct {p0, v3, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;)V

    .line 187
    const v5, 0x7f05000a

    invoke-direct {p0, v5, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseOverrideKeys(ILcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 188
    iget v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    invoke-direct {p0, v5, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseOverrideKeys(ILcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 191
    iget v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->mode:I

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->isSymbolsLayout(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->isLegalBilingualLanguage(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    invoke-direct {p0, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->isLatinScript(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    new-instance v4, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->bottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-direct {v4, v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 195
    .local v4, "templateInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageTemplateLayoutXmlList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 196
    iget-object v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;

    .line 197
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageTemplateLayoutXmlList:Ljava/util/List;

    .line 198
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->mode:I

    iget-object v8, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->floatingKeyboardType:Ljava/lang/String;

    .line 196
    invoke-virtual {v4, v6, v5, v7, v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->inflateKeyboardTemplate(IIILjava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;

    move-result-object v1

    .line 200
    .local v1, "bilingualTemplate":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-direct {v0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;-><init>(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 201
    .local v0, "bilingualKeyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    iget-object v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;

    .line 202
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 201
    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;)V

    .line 204
    invoke-direct {p0, v3, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mergePhonepadCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "bilingualKeyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .end local v1    # "bilingualTemplate":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .end local v2    # "i":I
    .end local v4    # "templateInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;
    :cond_0
    return-object v3
.end method

.method public inflateQwertyKeyboard(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .locals 5
    .param p1, "id"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
    .param p2, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;

    .prologue
    .line 144
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-direct {v1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;-><init>(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 146
    .local v1, "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    iget v3, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->mParserWrapper:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .line 147
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;)V

    .line 151
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 150
    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->getLayoutBaseCharacters(Ljava/util/List;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 153
    .local v2, "prohibitedCandidateCharacters":Lcom/sonyericsson/ned/model/CodePointString;
    iget v3, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->languageCandidatesXml:I

    if-eqz v3, :cond_0

    .line 154
    iget v3, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->languageCandidatesXml:I

    invoke-direct {p0, v1, v3, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->addLanguageCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;ILcom/sonyericsson/ned/model/CodePointString;)V

    .line 158
    :cond_0
    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageCandidatesXmlList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageCandidatesXmlList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 160
    .local v0, "bilingualLanguageCandidatesXml":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v1, v4, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->addLanguageCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;ILcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_0

    .line 166
    .end local v0    # "bilingualLanguageCandidatesXml":Ljava/lang/Integer;
    :cond_1
    iget v3, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->languageCandidatesXml:I

    if-eqz v3, :cond_2

    .line 167
    const v3, 0x7f0500c0

    invoke-direct {p0, v1, v3, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->addLanguageCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;ILcom/sonyericsson/ned/model/CodePointString;)V

    .line 169
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->removeDuplicateCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 173
    :cond_2
    const v3, 0x7f050072

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseOverrideKeys(ILcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 174
    iget v3, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->parseOverrideKeys(ILcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 176
    return-object v1
.end method
