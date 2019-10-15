.class final enum Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;
.super Ljava/lang/Enum;
.source "SeekBarDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DialogIconAccentColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

.field public static final enum COLORIZE_USING_DARK_ACCENT_COLOR:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

.field public static final enum COLORIZE_USING_LIGHT_ACCENT_COLOR:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

.field public static final enum NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;


# instance fields
.field private final mXmlValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    .line 164
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    const-string v1, "COLORIZE_USING_LIGHT_ACCENT_COLOR"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->COLORIZE_USING_LIGHT_ACCENT_COLOR:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    .line 169
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    const-string v1, "COLORIZE_USING_DARK_ACCENT_COLOR"

    invoke-direct {v0, v1, v4, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->COLORIZE_USING_DARK_ACCENT_COLOR:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->COLORIZE_USING_LIGHT_ACCENT_COLOR:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->COLORIZE_USING_DARK_ACCENT_COLOR:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "xmlValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 183
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->mXmlValue:I

    .line 184
    return-void
.end method

.method public static fromXmlValue(I)Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;
    .locals 1
    .param p0, "xmlValue"    # I

    .prologue
    .line 197
    packed-switch p0, :pswitch_data_0

    .line 208
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    goto :goto_0

    .line 202
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->COLORIZE_USING_LIGHT_ACCENT_COLOR:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    goto :goto_0

    .line 205
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->COLORIZE_USING_DARK_ACCENT_COLOR:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;

    return-object v0
.end method


# virtual methods
.method public xmlValue()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$DialogIconAccentColor;->mXmlValue:I

    return v0
.end method
