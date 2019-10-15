.class public Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;
.super Ljava/lang/Object;
.source "ShiftAdvisor.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/ICursorListener;
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;
.implements Lcom/sonyericsson/collaboration/ManagedRebindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;
    }
.end annotation


# static fields
.field private static final CASE_LANGUAGES:[Ljava/lang/String;

.field private static final DOUBLE_TAP_DELAY:J = 0xfaL

.field private static final INVERTED_EXCLAMATION_MARK:Ljava/lang/String; = "\u00a1"

.field private static final INVERTED_QUESTION_MARK:Ljava/lang/String; = "\u00bf"

.field private static final LANGUAGES_IGNORING_CAPS_LOCK:[Ljava/lang/String;

.field private static final NAME:I = 0x1

.field private static final NON_CASE_ALTERING_CHARACTERS:Ljava/lang/String; = " /-\u00bf\u00a1"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SENTENCE:I = 0x0

.field private static final START_LOWER:I = 0x2

.field private static final START_UPPER:I = 0x3


# instance fields
.field private isAutomaticCaseHandlingActive:Z

.field private isCapsLockIgnored:Z

.field private isCaseTogglingActive:Z

.field private isHoldingShift:Z

.field private final mActOnComposingText:Z

.field private mBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

.field private mCurrentCase:I

.field private mCursor:Lcom/sonyericsson/ned/controller/ICursor;

.field private final mDoubleTapHelper:Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;

.field private mIgnoreNextEvent:Z

.field private mKeyMapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mListeners:[Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;

.field private mMode:I

.field private mPendingCaseShift:Z

.field private mPrevCaseLanguageUserShiftIndex:I

.field private mPreviousCase:I

.field private mPreviousPosition:I

.field private final mSetMode:I

.field private mUserInitialUppercaseIndex:I

.field private final mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "cyrillic-script"

    aput-object v1, v0, v2

    const-string v1, "greek-script"

    aput-object v1, v0, v3

    const-string v1, "latin-script"

    aput-object v1, v0, v4

    const-string v1, "armenian-script"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->CASE_LANGUAGES:[Ljava/lang/String;

    .line 52
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "thai-script"

    aput-object v1, v0, v2

    const-string v1, "hindi-script"

    aput-object v1, v0, v3

    const-string v1, "punjabi-script"

    aput-object v1, v0, v4

    const-string v1, "tamil-script"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->LANGUAGES_IGNORING_CAPS_LOCK:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v1, v0, v2

    const-class v1, Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/ned/controller/ICursor;

    aput-object v1, v0, v4

    const-class v1, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v1, v0, v5

    const-class v1, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "actOnComposing"    # Z
    .param p3, "insertOnKeyDown"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v1, 0x4

    iput v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 101
    iput v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mSetMode:I

    .line 104
    :goto_1
    iget v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mSetMode:I

    iput v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mMode:I

    .line 105
    iput v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    .line 106
    iput v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    .line 107
    iput v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPrevCaseLanguageUserShiftIndex:I

    .line 108
    iput-boolean p2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mActOnComposingText:Z

    .line 109
    iput-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isHoldingShift:Z

    .line 110
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v5, Lcom/sonyericsson/ned/controller/Command;

    const-string v6, "case-toggle"

    invoke-direct {v5, v6}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v2

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v5, "prepare-case-toggle"

    invoke-direct {v2, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "case-toggle-abort"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    :goto_2
    invoke-direct {v2, v3, v0}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v2, v1, v7

    const/4 v0, 0x4

    new-instance v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v3, 0x0

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 116
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;

    const-wide/16 v2, 0xfa

    invoke-direct {v0, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;-><init>(J)V

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mDoubleTapHelper:Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;

    .line 117
    return-void

    .line 90
    :sswitch_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "start-lower"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "start-upper"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    .line 92
    :pswitch_0
    iput v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mSetMode:I

    goto :goto_1

    .line 95
    :pswitch_1
    iput v4, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mSetMode:I

    goto :goto_1

    .line 98
    :pswitch_2
    iput v7, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mSetMode:I

    goto :goto_1

    .line 110
    :cond_1
    const/4 v0, -0x2

    goto :goto_2

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x337a8b -> :sswitch_0
        0x4f7ab1d6 -> :sswitch_1
        0x4ff9df77 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private consistsOfNonCaseAlteringCharacters(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 4
    .param p1, "string"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_2

    .line 197
    const-string v2, " /-\u00bf\u00a1"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 201
    :cond_0
    :goto_1
    return v1

    .line 196
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getLastCharacter(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "string"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "string":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return-object p1

    .restart local p1    # "string":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->substring(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object p1

    goto :goto_0
.end method

.method private getNewCaseFromTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)I
    .locals 9
    .param p1, "indexInString"    # I
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "cursorPosition"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 121
    iget-boolean v6, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isHoldingShift:Z

    if-eqz v6, :cond_1

    .line 122
    iget v4, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    .line 192
    :cond_0
    :goto_0
    return v4

    .line 124
    :cond_1
    iput p3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    .line 125
    iget v6, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 192
    :cond_2
    iget v4, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    goto :goto_0

    .line 127
    :pswitch_0
    if-eqz p1, :cond_3

    add-int/lit8 v6, p1, -0x1

    .line 128
    invoke-static {p2, v6, p1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 129
    invoke-virtual {v6, v7}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    iget v6, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-eq v6, v5, :cond_0

    iget v5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-ne v5, v8, :cond_2

    goto :goto_0

    .line 139
    :pswitch_1
    if-nez p1, :cond_5

    move v4, v5

    .line 140
    goto :goto_0

    .line 142
    :cond_5
    add-int/lit8 v6, p1, -0x1

    invoke-static {p2, v6, p1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/ned/util/StringUtil;->NEW_LINE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 144
    invoke-virtual {v6, v7}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v5

    .line 145
    goto :goto_0

    .line 148
    :cond_6
    add-int/lit8 v6, p1, -0x2

    invoke-static {p2, v6, p1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 150
    .local v1, "fragment":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isSentenceEndingCharacters(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v5

    .line 151
    goto :goto_0

    .line 152
    :cond_7
    iget v6, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-ne v6, v5, :cond_9

    .line 153
    move v2, p1

    .line 154
    .local v2, "i":I
    add-int/lit8 v5, v2, -0x1

    invoke-static {p2, v5, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 155
    .local v3, "s":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_1
    if-lez v2, :cond_8

    invoke-direct {p0, v3}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->consistsOfNonCaseAlteringCharacters(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 156
    add-int/lit8 v2, v2, -0x1

    .line 157
    add-int/lit8 v5, v2, -0x1

    invoke-static {p2, v5, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    goto :goto_1

    .line 159
    :cond_8
    add-int/lit8 v5, v2, -0x1

    invoke-static {p2, v5, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 160
    .local v0, "character":Lcom/sonyericsson/ned/model/CodePointString;
    if-eq v2, p1, :cond_0

    .line 162
    if-lez v2, :cond_2

    sget-object v5, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 163
    invoke-virtual {v0, v5}, Lcom/sonyericsson/ned/model/CodePointString;->append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isSentenceEndingCharacters(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/sonyericsson/ned/util/StringUtil;->NEW_LINE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 165
    invoke-virtual {v0, v5}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    .line 168
    .end local v0    # "character":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v2    # "i":I
    .end local v3    # "s":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_9
    iget v5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-ne v5, v8, :cond_2

    goto/16 :goto_0

    .line 174
    .end local v1    # "fragment":Lcom/sonyericsson/ned/model/CodePointString;
    :pswitch_2
    iget v6, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-eq v6, v8, :cond_a

    iget v6, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-ne v6, v5, :cond_2

    :cond_a
    add-int/lit8 v5, p1, -0x2

    .line 176
    invoke-static {p2, v5, p1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->consistsOfNonCaseAlteringCharacters(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    .line 182
    :pswitch_3
    iget v6, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-ne v6, v8, :cond_b

    .line 183
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 184
    :cond_b
    iget v6, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-ne v6, v5, :cond_2

    goto/16 :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isInManuallyToggledInitialUppercase()Z
    .locals 2

    .prologue
    .line 423
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSentenceEndingCharacters(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 1
    .param p1, "fragment"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "sentence"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 210
    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {p1, v0, p2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isSentenceEnding(Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/String;Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    return v0
.end method

.method private resetUserInitialUppercaseIndex()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    .line 588
    return-void
.end method

.method private restoreShiftHold()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "newCase":I
    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isHoldingShift:Z

    .line 242
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    .line 243
    iget v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v3, 0x2ee

    invoke-interface {v2, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 246
    .local v1, "subString":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v2, 0x4

    iput v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    .line 247
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    invoke-interface {v3}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v3

    .line 247
    invoke-direct {p0, v2, v1, v3}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->getNewCaseFromTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)I

    move-result v0

    .line 250
    .end local v1    # "subString":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 251
    return-void
.end method

.method private setCase(IZ)V
    .locals 4
    .param p1, "theCase"    # I
    .param p2, "tapped"    # Z

    .prologue
    .line 214
    iput p1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mListeners:[Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;

    if-eqz v1, :cond_0

    .line 216
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mListeners:[Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 217
    .local v0, "listener":Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;->onCaseChanged(IZ)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;
    :cond_0
    return-void
.end method

.method private setShiftHold()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isHoldingShift:Z

    .line 233
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-eq v0, v1, :cond_0

    .line 234
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 236
    :cond_0
    iput-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPendingCaseShift:Z

    .line 237
    return-void
.end method

.method private setupCaseLanguageMode(ZIZ)V
    .locals 6
    .param p1, "isPrevLanguageCaseLanguage"    # Z
    .param p2, "prevUserInitialUppercaseIndex"    # I
    .param p3, "notifyListeners"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 348
    iget v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mSetMode:I

    iput v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mMode:I

    .line 349
    if-nez p1, :cond_0

    .line 350
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    invoke-interface {v3}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v0

    .line 351
    .local v0, "cursorIndex":I
    if-ne p2, v0, :cond_1

    iget v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-eq v3, v4, :cond_1

    .line 353
    iput p2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    .line 354
    iput v4, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    .line 355
    if-eqz p3, :cond_0

    .line 356
    iget v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 370
    .end local v0    # "cursorIndex":I
    :cond_0
    :goto_0
    return-void

    .line 359
    .restart local v0    # "cursorIndex":I
    :cond_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    .line 360
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v4, 0x2ee

    .line 361
    invoke-interface {v3, v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 362
    .local v2, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    invoke-direct {p0, v3, v2, v0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->getNewCaseFromTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)I

    move-result v1

    .line 364
    .local v1, "newCase":I
    iget v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-eq v1, v3, :cond_2

    if-eqz p3, :cond_2

    .line 365
    invoke-direct {p0, v1, v5}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 367
    :cond_2
    iput v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    goto :goto_0
.end method

.method private setupNonCaseLanguageMode(Z)V
    .locals 2
    .param p1, "notifyListeners"    # Z

    .prologue
    const/4 v1, 0x0

    .line 335
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mMode:I

    .line 336
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    iput v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPrevCaseLanguageUserShiftIndex:I

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    .line 338
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-eqz v0, :cond_0

    .line 339
    iput v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 344
    :cond_0
    return-void
.end method

.method private toggleCase()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 525
    const/4 v0, 0x4

    .line 526
    .local v0, "newCase":I
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    invoke-interface {v2}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    .line 527
    iget v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    iput v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousCase:I

    .line 528
    iget v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    packed-switch v2, :pswitch_data_0

    .line 547
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 548
    return-void

    .line 530
    :pswitch_0
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isCapsLockIgnored:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 532
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->resetUserInitialUppercaseIndex()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 530
    goto :goto_1

    .line 535
    :pswitch_1
    const/4 v0, 0x2

    .line 536
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isAutomaticCaseHandlingActive:Z

    if-eqz v2, :cond_0

    .line 537
    iget v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    iput v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    goto :goto_0

    .line 541
    :pswitch_2
    const/4 v0, 0x0

    .line 542
    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateBehavioralConstants()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 310
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mKeyMapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    iget-object v8, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 311
    invoke-interface {v8}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v8

    .line 310
    invoke-interface {v7, v8}, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;->getProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "properties":[Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 313
    const/4 v5, 0x0

    .line 314
    .local v5, "unshifted":Z
    const/4 v4, 0x0

    .line 315
    .local v4, "shifted":Z
    const/4 v0, 0x0

    .line 316
    .local v0, "ignoreCapsLock":Z
    const/4 v1, 0x0

    .line 317
    .local v1, "isCaseLanguage":Z
    array-length v8, v2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v3, v2, v7

    .line 318
    .local v3, "property":Ljava/lang/String;
    const-string v9, "unshifted"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 319
    const/4 v5, 0x1

    .line 317
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const-string v9, "shifted"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 321
    const/4 v4, 0x1

    goto :goto_1

    .line 322
    :cond_2
    sget-object v9, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->CASE_LANGUAGES:[Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/sonyericsson/ned/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 323
    const/4 v1, 0x1

    goto :goto_1

    .line 324
    :cond_3
    sget-object v9, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->LANGUAGES_IGNORING_CAPS_LOCK:[Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/sonyericsson/ned/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 325
    const/4 v0, 0x1

    goto :goto_1

    .line 328
    .end local v3    # "property":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    :cond_5
    iput-boolean v6, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isCaseTogglingActive:Z

    .line 329
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isAutomaticCaseHandlingActive:Z

    .line 330
    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isCapsLockIgnored:Z

    .line 332
    .end local v0    # "ignoreCapsLock":Z
    .end local v1    # "isCaseLanguage":Z
    .end local v4    # "shifted":Z
    .end local v5    # "unshifted":Z
    :cond_6
    return-void
.end method

.method private updateCaseAccordingToTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 2
    .param p1, "indexInString"    # I
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "cursorPosition"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->getNewCaseFromTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)I

    move-result v0

    .line 225
    .local v0, "newCase":I
    iget v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    if-eq v0, v1, :cond_0

    .line 226
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 228
    :cond_0
    return-void
.end method

.method private updateMode(Z)V
    .locals 2
    .param p1, "notifyListeners"    # Z

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isAutomaticCaseHandlingActive:Z

    .line 300
    .local v0, "wasPrevLanguageAutomaticCaseHandled":Z
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->updateBehavioralConstants()V

    .line 301
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isAutomaticCaseHandlingActive:Z

    if-eqz v1, :cond_0

    .line 302
    iget v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPrevCaseLanguageUserShiftIndex:I

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setupCaseLanguageMode(ZIZ)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setupNonCaseLanguageMode(Z)V

    goto :goto_0
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
    .line 268
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;

    if-ne p2, v0, :cond_0

    .line 269
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mListeners:[Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mListeners:[Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 255
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_1

    .line 256
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 257
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/controller/ICursor;

    if-ne p2, v0, :cond_2

    .line 258
    check-cast p1, Lcom/sonyericsson/ned/controller/ICursor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    goto :goto_0

    .line 259
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_3

    .line 260
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 261
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    if-ne p2, v0, :cond_0

    .line 262
    check-cast p1, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mKeyMapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 473
    const/16 v0, 0xa

    return v0
.end method

.method public getCurrentCase()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mCurrentCase:I

    return v0
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
    .line 277
    sget-object v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->updateMode(Z)V

    .line 460
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public isCapsLockSupported()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isCapsLockIgnored:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 375
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    if-ne v0, p4, :cond_0

    .line 376
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 377
    iput p4, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    .line 383
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->resetUserInitialUppercaseIndex()V

    .line 380
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    invoke-direct {p0, v0, p2, p4}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->updateCaseAccordingToTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)V

    goto :goto_0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 4
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "result":Z
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mIgnoreNextEvent:Z

    if-eqz v2, :cond_0

    .line 485
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mIgnoreNextEvent:Z

    .line 521
    :goto_0
    return v1

    .line 488
    :cond_0
    const-string v2, "prepare-case-toggle"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 489
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isCapsLockIgnored:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mDoubleTapHelper:Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;->doTapAndEvaluateDoubleTap()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 491
    iput-boolean v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mIgnoreNextEvent:Z

    .line 492
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->resetUserInitialUppercaseIndex()V

    .line 493
    invoke-direct {p0, v3, v3}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 494
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPendingCaseShift:Z

    .line 500
    :cond_1
    :goto_1
    const/4 v0, 0x1

    :cond_2
    :goto_2
    move v1, v0

    .line 521
    goto :goto_0

    .line 495
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isCaseTogglingActive:Z

    if-eqz v1, :cond_1

    .line 497
    iput-boolean v3, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPendingCaseShift:Z

    .line 498
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->toggleCase()V

    goto :goto_1

    .line 501
    :cond_4
    const-string v2, "case-toggle"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 502
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isHoldingShift:Z

    if-eqz v2, :cond_5

    .line 503
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->restoreShiftHold()V

    .line 505
    :cond_5
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPendingCaseShift:Z

    .line 506
    const/4 v0, 0x1

    goto :goto_2

    .line 507
    :cond_6
    const-string v2, "case-toggle-abort"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 508
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPendingCaseShift:Z

    if-eqz v2, :cond_8

    .line 509
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->resetUserInitialUppercaseIndex()V

    .line 510
    iget v2, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousCase:I

    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 511
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPendingCaseShift:Z

    .line 515
    :cond_7
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    .line 512
    :cond_8
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isHoldingShift:Z

    if-eqz v1, :cond_7

    .line 513
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->restoreShiftHold()V

    goto :goto_3

    .line 516
    :cond_9
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPendingCaseShift:Z

    if-eqz v1, :cond_2

    .line 518
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setShiftHold()V

    goto :goto_2
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mActOnComposingText:Z

    if-nez v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isInManuallyToggledInitialUppercase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-direct {p0, p4}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->consistsOfNonCaseAlteringCharacters(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iput p5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    .line 451
    :goto_0
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    invoke-direct {p0, v0, p2, p5}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->updateCaseAccordingToTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)V

    .line 453
    iput p5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    .line 455
    :cond_0
    return-void

    .line 449
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->resetUserInitialUppercaseIndex()V

    goto :goto_0
.end method

.method public onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p3, "composing"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p4, "reason"    # I
    .param p5, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "characterIndex"    # I

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mActOnComposingText:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLength()I

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mMode:I

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    if-eq v0, v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->resetUserInitialUppercaseIndex()V

    .line 291
    invoke-virtual {p5}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    .line 292
    invoke-virtual {p2}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v1

    .line 291
    invoke-direct {p0, v0, p5, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->updateCaseAccordingToTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)V

    goto :goto_0
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isInManuallyToggledInitialUppercase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0, p4}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->consistsOfNonCaseAlteringCharacters(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iput p5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    .line 418
    :goto_0
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    invoke-direct {p0, v0, p2, p5}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->updateCaseAccordingToTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)V

    .line 419
    iput p5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    .line 420
    return-void

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->resetUserInitialUppercaseIndex()V

    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 553
    return-void
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mActOnComposingText:Z

    if-nez v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 562
    :cond_0
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    if-ne v0, p5, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isHoldingShift:Z

    if-nez v0, :cond_1

    .line 563
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    .line 575
    :goto_1
    iput p5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    goto :goto_0

    .line 564
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isInManuallyToggledInitialUppercase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    invoke-direct {p0, p4}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->consistsOfNonCaseAlteringCharacters(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iput p5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    goto :goto_1

    .line 567
    :cond_2
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    if-le v0, p5, :cond_3

    .line 569
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->resetUserInitialUppercaseIndex()V

    .line 570
    invoke-direct {p0, v1, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->setCase(IZ)V

    goto :goto_1

    .line 572
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    invoke-direct {p0, v0, p2, p5}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->updateCaseAccordingToTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)V

    goto :goto_1
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 584
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 592
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->updateMode(Z)V

    .line 593
    return-void
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "inserted"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 393
    iget v0, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    if-ne p5, v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isInManuallyToggledInitialUppercase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0, p4}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->getLastCharacter(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->consistsOfNonCaseAlteringCharacters(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iput p5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mUserInitialUppercaseIndex:I

    .line 401
    :goto_0
    iput p5, p0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->mPreviousPosition:I

    .line 402
    return-void

    .line 397
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    invoke-direct {p0, v0, p2, p5}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->updateCaseAccordingToTextContext(ILcom/sonyericsson/ned/model/CodePointString;I)V

    .line 399
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->resetUserInitialUppercaseIndex()V

    goto :goto_0
.end method

.method public onUpdateInputView(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 580
    return-void
.end method

.method public reinit()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public reinitOptional()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method
