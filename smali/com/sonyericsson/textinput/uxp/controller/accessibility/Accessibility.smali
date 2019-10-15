.class public Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;
.super Ljava/lang/Object;
.source "Accessibility.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;
.implements Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility$Factory;
    }
.end annotation


# static fields
.field public static final BULLET:Ljava/lang/String; = "\u2002"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sAudioManager:Landroid/media/AudioManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

.field private mIsObscuredPasswordField:Z

.field private mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isObscuredPasswordField"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mIsObscuredPasswordField:Z

    .line 65
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->sAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->sAudioManager:Landroid/media/AudioManager;

    .line 230
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->sAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public announce(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/view/View;Z)V
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isShifted"    # Z

    .prologue
    const v3, 0x7f070047

    .line 68
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    .local v0, "announceString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v2

    if-nez v2, :cond_3

    .line 74
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mIsObscuredPasswordField:Z

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->isInputObscured(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    invoke-virtual {p1, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "\u2002"

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    .line 114
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_1

    .line 82
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    goto :goto_1

    .line 87
    :pswitch_4
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    goto :goto_1

    .line 92
    :pswitch_5
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    goto :goto_1

    .line 97
    :pswitch_6
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    goto :goto_1

    .line 102
    :pswitch_7
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "input-mode-symbols"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070046

    .line 104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_2
    goto :goto_1

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070048

    .line 105
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 119
    :pswitch_8
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0700c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    goto :goto_1

    .line 130
    :pswitch_9
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;->getEnterKeyLabel()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "enterKeyLabel":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_5
    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 138
    move-object v0, v1

    goto :goto_1

    .line 131
    :sswitch_0
    const-string v3, "icon-search"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :sswitch_1
    const-string v3, "icon-enter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    .line 134
    :pswitch_a
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    goto/16 :goto_1

    .line 144
    .end local v1    # "enterKeyLabel":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getXKeyType()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1

    .line 146
    :pswitch_c
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    goto/16 :goto_1

    .line 150
    :pswitch_d
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    goto/16 :goto_1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch -0x13
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_1
        :pswitch_8
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_9
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x72ebb684 -> :sswitch_0
        -0x5f4ca77c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 144
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

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
    .line 183
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
    .line 170
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 171
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mContext:Landroid/content/Context;

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 172
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-ne p2, v0, :cond_2

    .line 173
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    goto :goto_0

    .line 174
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    if-ne p2, v0, :cond_3

    .line 175
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    goto :goto_0

    .line 176
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    if-ne p2, v0, :cond_0

    .line 177
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 202
    return-void
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
    .line 188
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mResources:Landroid/content/res/Resources;

    .line 194
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public isInputObscured(Z)Z
    .locals 5
    .param p1, "isObscuredPasswordField"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 243
    if-nez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "speak_password"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 250
    .local v0, "speakPassword":Z
    :goto_1
    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 259
    goto :goto_0

    .end local v0    # "speakPassword":Z
    :cond_2
    move v0, v1

    .line 248
    goto :goto_1
.end method

.method public onCaseChanged(IZ)V
    .locals 3
    .param p1, "newCase"    # I
    .param p2, "tapped"    # Z

    .prologue
    .line 207
    if-eqz p2, :cond_1

    .line 208
    const-string v1, ""

    .line 209
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    .local v0, "resources":Landroid/content/res/Resources;
    if-nez p1, :cond_2

    .line 211
    const v2, 0x7f070049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 220
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    return-void

    .line 212
    .restart local v0    # "resources":Landroid/content/res/Resources;
    .restart local v1    # "text":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 213
    const v2, 0x7f070043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 214
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 215
    const v2, 0x7f07003e

    .line 216
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onInputModeAdvice(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 224
    return-void
.end method
