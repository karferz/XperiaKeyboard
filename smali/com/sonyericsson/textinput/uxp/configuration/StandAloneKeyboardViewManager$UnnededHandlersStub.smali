.class Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$UnnededHandlersStub;
.super Ljava/lang/Object;
.source "StandAloneKeyboardViewManager.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;
.implements Landroid/os/IBinder;
.implements Lcom/sonyericsson/ned/model/ITextBuffer;
.implements Lcom/sonyericsson/ned/controller/ICursor;
.implements Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnnededHandlersStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$1;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$UnnededHandlersStub;-><init>()V

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "completionInfo"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public delete(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    return-void
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public getComposingText()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCursorPosition()I
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractEditText()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFuturePosition(I)Lcom/sonyericsson/ned/controller/CursorPosition;
    .locals 1
    .param p1, "movement"    # I

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFuturePosition(ILcom/sonyericsson/ned/controller/CursorPosition;)Lcom/sonyericsson/ned/controller/CursorPosition;
    .locals 1
    .param p1, "movement"    # I
    .param p2, "referencePosition"    # Lcom/sonyericsson/ned/controller/CursorPosition;

    .prologue
    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFuturePosition(Lcom/sonyericsson/ned/controller/CursorPosition;I)Lcom/sonyericsson/ned/controller/CursorPosition;
    .locals 1
    .param p1, "startPosition"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p2, "movement"    # I

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Lcom/sonyericsson/ned/controller/CursorPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/ned/controller/CursorPosition;-><init>(I)V

    return-object v0
.end method

.method public getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "chars"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 381
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "chars"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 375
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getText()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWritingDirection(Lcom/sonyericsson/ned/controller/CursorPosition;)I
    .locals 1
    .param p1, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public insert(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 1
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public isExtractViewShown()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method public pingBinder()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public reSetComposingText(I)Z
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public reSetComposingText(II)Z
    .locals 1
    .param p1, "cursorPos"    # I
    .param p2, "length"    # I

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public replace(ILcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 1
    .param p1, "count"    # I
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .param p1, "keycode"    # I

    .prologue
    .line 318
    return-void
.end method

.method public setComposingRegionSilent(I)Z
    .locals 1
    .param p1, "lengthBeforeCursor"    # I

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 1
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "cursorIndex"    # I

    .prologue
    .line 366
    return-void
.end method

.method public setPosition(Lcom/sonyericsson/ned/controller/CursorPosition;)V
    .locals 0
    .param p1, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;

    .prologue
    .line 370
    return-void
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public showTextNotification(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "string"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "composingText"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 447
    return-void
.end method

.method public suitableToReSetComposingText(I)Z
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "googleVoiceInput"    # Ljava/lang/String;

    .prologue
    .line 332
    return-void
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public updateComposingTextSpan()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method
