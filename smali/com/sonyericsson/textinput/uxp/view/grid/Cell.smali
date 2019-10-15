.class public final Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
.super Ljava/lang/Object;
.source "Cell.java"


# instance fields
.field private mExcludeFromDynamic:Z

.field private mIconResourceIdentifier:I

.field private mIsPressed:Z

.field private final mIsVariantSelectionSupported:Z

.field private mLabel:Lcom/sonyericsson/ned/model/CodePointString;

.field private mLabelTextSize:F

.field private mSubLabel:Lcom/sonyericsson/ned/model/CodePointString;

.field private mTemporalVariantLabel:Lcom/sonyericsson/ned/model/CodePointString;

.field private mVisualLabel:Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method public constructor <init>(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 8
    .param p1, "iconResourceIdentifier"    # I
    .param p2, "label"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "subLabel"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v5, 0x0

    .line 75
    const/4 v4, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;-><init>(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZFZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZFZ)V
    .locals 2
    .param p1, "iconResourceIdentifier"    # I
    .param p2, "label"    # Lcom/sonyericsson/ned/model/CodePointString;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "subLabel"    # Lcom/sonyericsson/ned/model/CodePointString;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "visualLabel"    # Lcom/sonyericsson/ned/model/CodePointString;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "excludeFromDynamic"    # Z
    .param p6, "labelTextSize"    # F
    .param p7, "isVariantSelectionSupported"    # Z

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This cell must be associated with either an icon or a label."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_2
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mIconResourceIdentifier:I

    .line 122
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 123
    iput p6, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mLabelTextSize:F

    .line 124
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mSubLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 125
    iput-boolean p5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mExcludeFromDynamic:Z

    .line 126
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mVisualLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 127
    iput-boolean p7, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mIsVariantSelectionSupported:Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mIsPressed:Z

    .line 130
    return-void
.end method

.method public constructor <init>(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZZ)V
    .locals 8
    .param p1, "iconResourceIdentifier"    # I
    .param p2, "label"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "subLabel"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "visualLabel"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "excludeFromDynamic"    # Z
    .param p6, "isVariantSelectionSupported"    # Z

    .prologue
    .line 84
    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;-><init>(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZFZ)V

    .line 86
    return-void
.end method


# virtual methods
.method public getLabelTextSize()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mLabelTextSize:F

    return v0
.end method

.method public getTemporalVariantLabel()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mTemporalVariantLabel:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getVisualLabel()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mVisualLabel:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public iconResourceIdentifier()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mIconResourceIdentifier:I

    return v0
.end method

.method public isExcludedFromDynamic()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mExcludeFromDynamic:Z

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mIsPressed:Z

    return v0
.end method

.method public isVariantSelectionSupported()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mIsVariantSelectionSupported:Z

    return v0
.end method

.method public label()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mLabel:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public setLabelTextSize(F)V
    .locals 0
    .param p1, "labelTextSize"    # F

    .prologue
    .line 215
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mLabelTextSize:F

    .line 216
    return-void
.end method

.method setPressed(Z)V
    .locals 0
    .param p1, "isPressed"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mIsPressed:Z

    .line 256
    return-void
.end method

.method public setTemporalVariantLabel(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "temporalVariantLabel"    # Lcom/sonyericsson/ned/model/CodePointString;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mTemporalVariantLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 164
    return-void
.end method

.method public subLabel()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mSubLabel:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[iconResourceIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mIconResourceIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mLabel:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subLabel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mSubLabel:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->mIsPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
