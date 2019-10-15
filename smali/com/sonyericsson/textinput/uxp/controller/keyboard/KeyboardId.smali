.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardId.java"


# instance fields
.field public final bottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

.field public final floatingKeyboardType:Ljava/lang/String;

.field public final hasNumericKeys:Z

.field public final isOneHanded:Z

.field public final keyboardLayoutXml:I

.field public final languageCandidatesXml:I

.field public final mode:I

.field public final orientation:I

.field public final secondaryLanguageCandidatesXmlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final secondaryLanguageTemplateLayoutXmlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final templateLayoutXml:I


# direct methods
.method public constructor <init>(IIIILjava/util/List;Ljava/util/List;ILjava/util/List;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "keyboardLayoutXml"    # I
    .param p2, "templateLayoutXml"    # I
    .param p3, "mode"    # I
    .param p4, "orientation"    # I
    .param p7, "languageCandidatesXml"    # I
    .param p9, "bottomRowSettings"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
    .param p10, "floatingKeyboardType"    # Ljava/lang/String;
    .param p11, "isOneHanded"    # Z
    .param p12, "hasNumericKeys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p5, "secondaryLanguageKeyboardLayoutXmlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "secondaryLanguageTemplateLayoutXmlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p8, "secondaryLanguageCandidatesXmlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    .line 77
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->templateLayoutXml:I

    .line 78
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->mode:I

    .line 79
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->orientation:I

    .line 80
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;

    .line 81
    iput-object p6, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageTemplateLayoutXmlList:Ljava/util/List;

    .line 82
    iput p7, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->languageCandidatesXml:I

    .line 83
    iput-object p8, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageCandidatesXmlList:Ljava/util/List;

    .line 84
    iput-object p9, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->bottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    .line 85
    iput-object p10, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->floatingKeyboardType:Ljava/lang/String;

    .line 86
    iput-boolean p11, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->isOneHanded:Z

    .line 87
    iput-boolean p12, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->hasNumericKeys:Z

    .line 88
    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;Ljava/util/List;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Ljava/lang/String;ZZ)V
    .locals 13
    .param p1, "keyboardLayoutXml"    # I
    .param p2, "templateLayoutXml"    # I
    .param p3, "mode"    # I
    .param p4, "orientation"    # I
    .param p7, "bottomRowSettings"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
    .param p8, "floatingKeyboardType"    # Ljava/lang/String;
    .param p9, "isOneHanded"    # Z
    .param p10, "hasNumericKeys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p5, "secondaryLanguageKeyboardLayoutXmlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "secondaryLanguageTemplateLayoutXmlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;-><init>(IIIILjava/util/List;Ljava/util/List;ILjava/util/List;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Ljava/lang/String;ZZ)V

    .line 67
    return-void
.end method

.method private equals(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)Z
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    .prologue
    .line 96
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->mode:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->mode:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->orientation:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->templateLayoutXml:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->templateLayoutXml:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageTemplateLayoutXmlList:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageTemplateLayoutXmlList:Ljava/util/List;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->languageCandidatesXml:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->languageCandidatesXml:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageCandidatesXmlList:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageCandidatesXmlList:Ljava/util/List;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->bottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->bottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    .line 107
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->floatingKeyboardType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->floatingKeyboardType:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->isOneHanded:Z

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->isOneHanded:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->hasNumericKeys:Z

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->hasNumericKeys:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 92
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->equals(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 115
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->mode:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->orientation:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->templateLayoutXml:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageKeyboardLayoutXmlList:Ljava/util/List;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageTemplateLayoutXmlList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageTemplateLayoutXmlList:Ljava/util/List;

    .line 122
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    mul-int/2addr v0, v2

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->languageCandidatesXml:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageCandidatesXmlList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->secondaryLanguageCandidatesXmlList:Ljava/util/List;

    .line 125
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->bottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    .line 126
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->floatingKeyboardType:Ljava/lang/String;

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->isOneHanded:Z

    .line 128
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->hasNumericKeys:Z

    .line 129
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 120
    goto :goto_0

    :cond_2
    move v0, v1

    .line 122
    goto :goto_1
.end method
