.class public final Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;
.super Ljava/lang/Object;
.source "KeyUtils.java"


# static fields
.field private static final USE_DEFAULT:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static findTextDrawable(Landroid/graphics/drawable/LayerDrawable;)Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
    .locals 4
    .param p0, "layerDrawable"    # Landroid/graphics/drawable/LayerDrawable;

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 195
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 196
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    if-eqz v3, :cond_0

    .line 199
    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    .line 202
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 195
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static firstDefined(II)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "defaultValue"    # I

    .prologue
    .line 69
    if-eqz p0, :cond_0

    .end local p0    # "value":I
    :goto_0
    return p0

    .restart local p0    # "value":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static varargs firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p0, "objects"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 73
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 74
    .local v0, "object":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_0

    .line 78
    .end local v0    # "object":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_1
    return-object v0

    .line 73
    .restart local v0    # "object":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "object":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 35
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 44
    .end local p3    # "defValue":I
    :cond_0
    :goto_0
    return p3

    .line 38
    .restart local p3    # "defValue":I
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 39
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    goto :goto_0

    .line 40
    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 42
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0
.end method

.method public static getKeyTextScaledDimensionOrFraction(Landroid/content/res/TypedArray;IIILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)I
    .locals 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I
    .param p4, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 51
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 52
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    .line 65
    .end local p3    # "defValue":I
    :cond_0
    :goto_0
    return p3

    .line 55
    .restart local p3    # "defValue":I
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 56
    .local v0, "dimenValue":F
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 57
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v0, v2

    .line 62
    :cond_2
    :goto_1
    cmpl-float v2, v0, v4

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-interface {p4, v2, v0}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result p3

    goto :goto_0

    .line 59
    :cond_3
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 60
    invoke-virtual {p0, p1, p2, p2, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    goto :goto_1
.end method

.method public static isSymbolsLayout(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 206
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1000

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Z)V
    .locals 11
    .param p0, "originalCandidates"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    .param p1, "extraCandidates"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    .param p2, "beforeDigits"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 84
    .local v0, "allCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 85
    .local v1, "allExtraCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 86
    .local v3, "allExtraVisualCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v2, v1

    .line 87
    .local v2, "allExtraCandidatesLength":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 88
    const/4 v6, 0x0

    .line 89
    .local v6, "exists":Z
    aget-object v4, v1, v7

    .line 90
    .local v4, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    array-length v9, v0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v5, v0, v8

    .line 91
    .local v5, "currentCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v5, v4}, Lcom/sonyericsson/ned/model/CodePointString;->equalsExpectingDifference(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 92
    const/4 v6, 0x1

    .line 96
    .end local v5    # "currentCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    if-nez v6, :cond_1

    .line 97
    aget-object v8, v3, v7

    invoke-virtual {p0, v4, v8, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->add(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Z)V

    .line 87
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 90
    .restart local v5    # "currentCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 100
    .end local v4    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v5    # "currentCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v6    # "exists":Z
    :cond_3
    return-void
.end method

.method public static removeDuplicateCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V
    .locals 11
    .param p0, "originalCandidates1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    .param p1, "originalCandidates2"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    if-nez v8, :cond_1

    .line 139
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    array-length v8, v8

    .line 116
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v9

    array-length v9, v9

    if-gt v8, v9, :cond_3

    move-object v1, p0

    .line 118
    .local v1, "masterCandidates":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    :goto_0
    if-ne p1, v1, :cond_4

    move-object v3, p0

    .line 122
    .local v3, "potentialCandidatesToRemove":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    :goto_1
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 123
    .local v2, "masterSecondaryCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v9, v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_0

    aget-object v0, v2, v8

    .line 125
    .local v0, "masterCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 126
    .local v5, "potentialRemoveCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v6, v5

    .line 127
    .local v6, "potentialRemoveCandidatesLength":I
    const/4 v7, 0x0

    .local v7, "removeIndex":I
    :goto_3
    if-ge v7, v6, :cond_2

    .line 129
    aget-object v4, v5, v7

    .line 131
    .local v4, "potentialRemoveCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0, v4}, Lcom/sonyericsson/ned/model/CodePointString;->equalsExpectingDifference(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 133
    invoke-virtual {v3, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->remove(I)V

    .line 123
    .end local v4    # "potentialRemoveCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v0    # "masterCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "masterCandidates":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    .end local v2    # "masterSecondaryCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v3    # "potentialCandidatesToRemove":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    .end local v5    # "potentialRemoveCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v6    # "potentialRemoveCandidatesLength":I
    .end local v7    # "removeIndex":I
    :cond_3
    move-object v1, p1

    .line 116
    goto :goto_0

    .restart local v1    # "masterCandidates":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    :cond_4
    move-object v3, p1

    .line 118
    goto :goto_1

    .line 128
    .restart local v0    # "masterCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v2    # "masterSecondaryCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v3    # "potentialCandidatesToRemove":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    .restart local v4    # "potentialRemoveCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v5    # "potentialRemoveCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v6    # "potentialRemoveCandidatesLength":I
    .restart local v7    # "removeIndex":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method public static setLabel(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "string"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "tp"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "textDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    move-object v1, p0

    .line 172
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->findTextDrawable(Landroid/graphics/drawable/LayerDrawable;)Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    move-result-object v0

    .line 177
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 178
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    .end local v0    # "textDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;-><init>(Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)V

    .line 180
    .restart local v0    # "textDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
    if-nez p0, :cond_2

    move-object p0, v0

    .line 190
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object p0

    .line 173
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 174
    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    goto :goto_0

    .line 183
    :cond_2
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p0, v1

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static splitCandidates(Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p0, "s"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 142
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->splitCandidates(Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public static splitCandidates(Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p0, "s"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    .line 150
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 152
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 166
    .end local v2    # "len":I
    :cond_0
    :goto_0
    return-object v0

    .line 155
    .restart local v2    # "len":I
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/ned/model/CodePointString;->toCodePointStringArray([Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_2
    new-array v0, v2, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 161
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    aput-object v3, v0, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
