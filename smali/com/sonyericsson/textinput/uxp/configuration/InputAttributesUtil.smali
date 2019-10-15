.class public final Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;
.super Ljava/lang/Object;
.source "InputAttributesUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static dumpAttributes(Landroid/view/inputmethod/EditorInfo;)V
    .locals 11
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogConditional"
        }
    .end annotation

    .prologue
    .line 50
    iget v5, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 51
    .local v5, "inputType":I
    and-int/lit8 v3, v5, 0xf

    .line 52
    .local v3, "inputClass":I
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->toInputClassString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "inputClassString":Ljava/lang/String;
    and-int/lit16 v8, v5, 0xff0

    invoke-static {v3, v8}, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->toVariationString(II)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "variationString":Ljava/lang/String;
    const v8, 0xfff000

    and-int/2addr v8, v5

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->toFlagsString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "flagsString":Ljava/lang/String;
    iget v8, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->toImeOptionFlagsString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "imeOptionFlagsString":Ljava/lang/String;
    iget v8, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->toImeOptionsActionString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "imeOptionsActionString":Ljava/lang/String;
    iget-object v6, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 61
    .local v6, "privateImeOptions":Ljava/lang/String;
    sget-object v8, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EditorInfo Input class: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", variation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", flags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", imeOptions flags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", imeOptions action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "privateImeOptions: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", packageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private static toDatetimeVariationString(I)Ljava/lang/String;
    .locals 4
    .param p0, "variation"    # I

    .prologue
    .line 194
    sparse-switch p0, :sswitch_data_0

    .line 202
    const-string v0, "unknownVariation<0x%08x>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 196
    :sswitch_0
    const-string v0, "TYPE_DATETIME_VARIATION_NORMAL"

    goto :goto_0

    .line 198
    :sswitch_1
    const-string v0, "TYPE_DATETIME_VARIATION_DATE"

    goto :goto_0

    .line 200
    :sswitch_2
    const-string v0, "TYPE_DATETIME_VARIATION_TIME"

    goto :goto_0

    .line 194
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private static toFlagsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "flagsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "TYPE_TEXT_FLAG_NO_SUGGESTIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 212
    const-string v1, "TYPE_TEXT_FLAG_MULTI_LINE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_1
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    .line 215
    const-string v1, "TYPE_TEXT_FLAG_IME_MULTI_LINE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_2
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_3

    .line 218
    const-string v1, "TYPE_TEXT_FLAG_CAP_WORDS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_3
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_4

    .line 221
    const-string v1, "TYPE_TEXT_FLAG_CAP_SENTENCES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_4
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_5

    .line 224
    const-string v1, "TYPE_TEXT_FLAG_CAP_CHARACTERS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_5
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    .line 227
    const-string v1, "TYPE_TEXT_FLAG_AUTO_CORRECT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_6
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    .line 230
    const-string v1, "TYPE_TEXT_FLAG_AUTO_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static toImeOptionFlagsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "flagsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "IME_FLAG_FORCE_ASCII"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "IME_FLAG_NAVIGATE_NEXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    .line 100
    const-string v1, "IME_FLAG_NAVIGATE_PREVIOUS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    .line 103
    const-string v1, "IME_FLAG_NO_ACCESSORY_ACTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 106
    const-string v1, "IME_FLAG_NO_ENTER_ACTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    .line 109
    const-string v1, "IME_FLAG_NO_EXTRACT_UI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_5
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    .line 112
    const-string v1, "IME_FLAG_NO_FULLSCREEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static toImeOptionsActionString(I)Ljava/lang/String;
    .locals 4
    .param p0, "action"    # I

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_0

    .line 87
    const-string v0, "unknownImeOptionsAction<0x%08x>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    const-string v0, "IME_ACTION_DONE"

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v0, "IME_ACTION_GO"

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "IME_ACTION_NEXT"

    goto :goto_0

    .line 77
    :pswitch_3
    const-string v0, "IME_ACTION_NONE"

    goto :goto_0

    .line 79
    :pswitch_4
    const-string v0, "IME_ACTION_PREVIOUS"

    goto :goto_0

    .line 81
    :pswitch_5
    const-string v0, "IME_ACTION_SEARCH"

    goto :goto_0

    .line 83
    :pswitch_6
    const-string v0, "IME_ACTION_SEND"

    goto :goto_0

    .line 85
    :pswitch_7
    const-string v0, "IME_ACTION_UNSPECIFIED"

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static toInputClassString(I)Ljava/lang/String;
    .locals 4
    .param p0, "inputClass"    # I

    .prologue
    .line 118
    packed-switch p0, :pswitch_data_0

    .line 128
    const-string v0, "unknownInputClass<0x%08x>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 120
    :pswitch_0
    const-string v0, "TYPE_CLASS_TEXT"

    goto :goto_0

    .line 122
    :pswitch_1
    const-string v0, "TYPE_CLASS_PHONE"

    goto :goto_0

    .line 124
    :pswitch_2
    const-string v0, "TYPE_CLASS_NUMBER"

    goto :goto_0

    .line 126
    :pswitch_3
    const-string v0, "TYPE_CLASS_DATETIME"

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static toNumberVariationString(I)Ljava/lang/String;
    .locals 4
    .param p0, "variation"    # I

    .prologue
    .line 183
    sparse-switch p0, :sswitch_data_0

    .line 189
    const-string v0, "unknownVariation<0x%08x>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 185
    :sswitch_0
    const-string v0, "TYPE_NUMBER_VARIATION_NORMAL"

    goto :goto_0

    .line 187
    :sswitch_1
    const-string v0, "TYPE_NUMBER_VARIATION_PASSWORD"

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private static toTextVariationString(I)Ljava/lang/String;
    .locals 4
    .param p0, "variation"    # I

    .prologue
    .line 146
    sparse-switch p0, :sswitch_data_0

    .line 178
    const-string v0, "unknownVariation<0x%08x>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 148
    :sswitch_0
    const-string v0, "TYPE_TEXT_VARIATION_EMAIL_ADDRESS"

    goto :goto_0

    .line 150
    :sswitch_1
    const-string v0, "TYPE_TEXT_VARIATION_EMAIL_SUBJECT"

    goto :goto_0

    .line 152
    :sswitch_2
    const-string v0, "TYPE_TEXT_VARIATION_FILTER"

    goto :goto_0

    .line 154
    :sswitch_3
    const-string v0, "TYPE_TEXT_VARIATION_LONG_MESSAGE"

    goto :goto_0

    .line 156
    :sswitch_4
    const-string v0, "TYPE_TEXT_VARIATION_NORMAL"

    goto :goto_0

    .line 158
    :sswitch_5
    const-string v0, "TYPE_TEXT_VARIATION_PASSWORD"

    goto :goto_0

    .line 160
    :sswitch_6
    const-string v0, "TYPE_TEXT_VARIATION_PERSON_NAME"

    goto :goto_0

    .line 162
    :sswitch_7
    const-string v0, "TYPE_TEXT_VARIATION_PHONETIC"

    goto :goto_0

    .line 164
    :sswitch_8
    const-string v0, "TYPE_TEXT_VARIATION_POSTAL_ADDRESS"

    goto :goto_0

    .line 166
    :sswitch_9
    const-string v0, "TYPE_TEXT_VARIATION_SHORT_MESSAGE"

    goto :goto_0

    .line 168
    :sswitch_a
    const-string v0, "TYPE_TEXT_VARIATION_URI"

    goto :goto_0

    .line 170
    :sswitch_b
    const-string v0, "TYPE_TEXT_VARIATION_VISIBLE_PASSWORD"

    goto :goto_0

    .line 172
    :sswitch_c
    const-string v0, "TYPE_TEXT_VARIATION_WEB_EDIT_TEXT"

    goto :goto_0

    .line 174
    :sswitch_d
    const-string v0, "TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS"

    goto :goto_0

    .line 176
    :sswitch_e
    const-string v0, "TYPE_TEXT_VARIATION_WEB_PASSWORD"

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x10 -> :sswitch_a
        0x20 -> :sswitch_0
        0x30 -> :sswitch_1
        0x40 -> :sswitch_9
        0x50 -> :sswitch_3
        0x60 -> :sswitch_6
        0x70 -> :sswitch_8
        0x80 -> :sswitch_5
        0x90 -> :sswitch_b
        0xa0 -> :sswitch_c
        0xb0 -> :sswitch_2
        0xc0 -> :sswitch_7
        0xd0 -> :sswitch_d
        0xe0 -> :sswitch_e
    .end sparse-switch
.end method

.method private static toVariationString(II)Ljava/lang/String;
    .locals 1
    .param p0, "inputClass"    # I
    .param p1, "variation"    # I

    .prologue
    .line 133
    packed-switch p0, :pswitch_data_0

    .line 141
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 135
    :pswitch_1
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->toTextVariationString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->toNumberVariationString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_3
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/InputAttributesUtil;->toDatetimeVariationString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
