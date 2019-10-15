.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
.super Ljava/lang/Object;
.source "BottomRowSettings.java"


# instance fields
.field private final mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

.field private final mShowHandwritingKey:Z

.field private final mShowPeriodAndCommaKeys:Z

.field private final mShowSetupWizard:Z

.field private final mShowSmileyKey:Z

.field private final mShowXKey:Z


# direct methods
.method public constructor <init>(ZZLcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;ZZZ)V
    .locals 0
    .param p1, "showXKey"    # Z
    .param p2, "showSmileyKey"    # Z
    .param p3, "leftFunctionKeyContent"    # Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;
    .param p4, "showPeriodAndComma"    # Z
    .param p5, "showSetupWizard"    # Z
    .param p6, "showHandwritingKey"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowXKey:Z

    .line 28
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSmileyKey:Z

    .line 29
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    .line 30
    iput-boolean p4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowPeriodAndCommaKeys:Z

    .line 31
    iput-boolean p5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSetupWizard:Z

    .line 32
    iput-boolean p6, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowHandwritingKey:Z

    .line 33
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 6
    .param p1, "showXKey"    # Z
    .param p2, "showSetupWizard"    # Z
    .param p3, "showHandwritingKey"    # Z

    .prologue
    .line 45
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;-><init>(ZZZZZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 7
    .param p1, "showXKey"    # Z
    .param p2, "showSmileyKey"    # Z
    .param p3, "showPeriodAndComma"    # Z
    .param p4, "showSetupWizard"    # Z
    .param p5, "showHandwritingKey"    # Z

    .prologue
    .line 37
    if-eqz p2, :cond_0

    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->SMILEY:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;-><init>(ZZLcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;ZZZ)V

    .line 41
    return-void

    .line 37
    :cond_0
    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->NONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    goto :goto_0
.end method

.method private static boolToInt(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 49
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private equals(Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;)Z
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    .prologue
    .line 99
    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowXKey:Z

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowXKey:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSmileyKey:Z

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSmileyKey:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowPeriodAndCommaKeys:Z

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowPeriodAndCommaKeys:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSetupWizard:Z

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSetupWizard:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowHandwritingKey:Z

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowHandwritingKey:Z

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
    .line 94
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->equals(Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;)Z

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

.method public getLeftFunctionKeyContent()Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    return-object v0
.end method

.method public getShowHandwritingKey()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowHandwritingKey:Z

    return v0
.end method

.method public getShowPeriodAndCommaKeys()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowPeriodAndCommaKeys:Z

    return v0
.end method

.method public getShowSetupWizard()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSetupWizard:Z

    return v0
.end method

.method public getShowXKey()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowXKey:Z

    return v0
.end method

.method public hasLeftFunctionKeyContent()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->NONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 109
    const/16 v0, 0x11

    .line 110
    .local v0, "result":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->ordinal()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 111
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowXKey:Z

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->boolToInt(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 112
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSmileyKey:Z

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->boolToInt(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 113
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowPeriodAndCommaKeys:Z

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->boolToInt(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 114
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSetupWizard:Z

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->boolToInt(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 115
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowHandwritingKey:Z

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->boolToInt(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 116
    return v0
.end method

.method public isEmailDotComKeyUsed()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->EMAIL_URL:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebTabKeyUsed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->WEB_EDIT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    if-ne v2, v3, :cond_2

    .line 83
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mShowSmileyKey:Z

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->WEB_PASSWORD_ADDRESS:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
