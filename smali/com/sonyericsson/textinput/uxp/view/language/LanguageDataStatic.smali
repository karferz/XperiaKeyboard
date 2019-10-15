.class public Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;
.super Ljava/lang/Object;
.source "LanguageDataStatic.java"


# instance fields
.field private final mAdapterPosition:I

.field private final mIsLayoutPickerAllowed:Z

.field private final mLanguageIso3:Ljava/lang/String;

.field private final mLanguageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "adapterPosition"    # I
    .param p2, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "languageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isLayoutPickerAllowed"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->mAdapterPosition:I

    .line 26
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->mLanguageIso3:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->mLanguageName:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->mIsLayoutPickerAllowed:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getAdapterPosition()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->mAdapterPosition:I

    return v0
.end method

.method public getLanguageIso3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->mLanguageIso3:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->mLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public isLayoutPickerAllowed()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->mIsLayoutPickerAllowed:Z

    return v0
.end method
