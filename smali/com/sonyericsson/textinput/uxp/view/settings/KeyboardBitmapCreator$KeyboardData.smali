.class Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;
.super Ljava/lang/Object;
.source "KeyboardBitmapCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardData"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

.field private final mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mPaint:Landroid/graphics/Paint;

.field private final mSampleSize:I

.field private final mView:Landroid/view/View;

.field private final mWidth:I

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;Ljava/lang/String;IILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZZLcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;I)V
    .locals 18
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "keyboardXMLId"    # I
    .param p4, "keyboardXMLTemplateId"    # I
    .param p5, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .param p6, "phonepad"    # Z
    .param p7, "secondaryPrint"    # Z
    .param p8, "settings"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
    .param p9, "sampleSize"    # I

    .prologue
    .line 156
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    if-gtz p9, :cond_2

    .line 159
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mSampleSize:I

    .line 163
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->access$000(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mView:Landroid/view/View;

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mView:Landroid/view/View;

    const v4, 0x7f0f0080

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->access$100(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    move-result-object v4

    const-class v5, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->access$200(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    move-result-object v4

    const-class v5, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->init()V

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->initOptional()V

    .line 170
    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v12, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v14}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;-><init>(IIIILjava/util/List;Ljava/util/List;ILjava/util/List;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Ljava/lang/String;ZZ)V

    .line 173
    .local v2, "id":Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
    new-instance v15, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->access$300(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Landroid/content/Context;

    move-result-object v3

    .line 174
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->access$100(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-direct {v15, v3, v0, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 175
    .local v15, "keyboardInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;
    new-instance v17, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$CustomKeyboardTemplateInflater;

    .line 176
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->access$300(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Landroid/content/Context;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->access$100(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-direct {v0, v3, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$CustomKeyboardTemplateInflater;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 177
    .local v17, "templateInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;
    iget v3, v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    iget v4, v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->templateLayoutXml:I

    iget v5, v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->mode:I

    iget-object v6, v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->floatingKeyboardType:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->inflateKeyboardTemplate(IIILjava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;

    move-result-object v16

    .line 180
    .local v16, "template":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    if-eqz p6, :cond_3

    .line 181
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->inflatePhonepadKeyboard(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .line 186
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->access$300(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZZ)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->enableBuffer(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getShiftKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    const-string v3, "ara"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fas"

    .line 193
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "tha"

    .line 194
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "hin"

    .line 195
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pan"

    .line 196
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "tam"

    .line 197
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 198
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setShifted(Z)Z

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    const v4, 0x7f02004c

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setShiftIcon(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->enableSecondaryPrint(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mView:Landroid/view/View;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mWidth:I

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mHeight:I

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mView:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 210
    return-void

    .line 161
    .end local v2    # "id":Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
    .end local v15    # "keyboardInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;
    .end local v16    # "template":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .end local v17    # "templateInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;
    :cond_2
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mSampleSize:I

    goto/16 :goto_0

    .line 183
    .restart local v2    # "id":Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
    .restart local v15    # "keyboardInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;
    .restart local v16    # "template":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .restart local v17    # "templateInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->inflateQwertyKeyboard(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    goto/16 :goto_1

    .line 201
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setShifted(Z)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    const v4, 0x7f02004d

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setShiftIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private createScaledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sampleSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 264
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->initializePaintObject()V

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v2, p2

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v3, p2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 267
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 270
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 271
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    .line 272
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mPaint:Landroid/graphics/Paint;

    .line 271
    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 274
    return-object v1
.end method

.method private initializePaintObject()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mPaint:Landroid/graphics/Paint;

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 252
    return-void
.end method


# virtual methods
.method public getKeyboardBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x2

    .line 225
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3, v4, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->measure(II)V

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 230
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 229
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 233
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getMeasuredHeight()I

    move-result v5

    .line 232
    invoke-virtual {v3, v6, v6, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->layout(IIII)V

    .line 234
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->draw(Landroid/graphics/Canvas;)V

    .line 235
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mSampleSize:I

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->createScaledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 244
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    return-object v2
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->dispose()V

    .line 217
    return-void
.end method
