.class public abstract Landroid/widget/directwriting/IDirectWritingService$Stub;
.super Landroid/os/Binder;
.source "IDirectWritingService.java"

# interfaces
.implements Landroid/widget/directwriting/IDirectWritingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/directwriting/IDirectWritingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/directwriting/IDirectWritingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getConfiguration:I = 0x11

.field static final blacklist TRANSACTION_getPackageName:I = 0x4

.field static final blacklist TRANSACTION_getVersion:I = 0x1

.field static final blacklist TRANSACTION_onBoundedEditTextChanged:I = 0xd

.field static final blacklist TRANSACTION_onDispatchEvent:I = 0xf

.field static final blacklist TRANSACTION_onEditTextActionModeStarted:I = 0x10

.field static final blacklist TRANSACTION_onExtraCommand:I = 0x385

.field static final blacklist TRANSACTION_onStartRecognition:I = 0xb

.field static final blacklist TRANSACTION_onStopRecognition:I = 0xc

.field static final blacklist TRANSACTION_onTextViewExtraCommand:I = 0x386

.field static final blacklist TRANSACTION_onUpdateImeOptions:I = 0x12

.field static final blacklist TRANSACTION_onWindowFocusLost:I = 0xe

.field static final blacklist TRANSACTION_registerCallback:I = 0x2

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 163
    const-string v0, "android.widget.directwriting.IDirectWritingService"

    invoke-virtual {p0, p0, v0}, Landroid/widget/directwriting/IDirectWritingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/widget/directwriting/IDirectWritingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 171
    if-nez p0, :cond_4

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_4
    const-string v0, "android.widget.directwriting.IDirectWritingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 175
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/widget/directwriting/IDirectWritingService;

    if-eqz v1, :cond_14

    .line 176
    move-object v1, v0

    check-cast v1, Landroid/widget/directwriting/IDirectWritingService;

    return-object v1

    .line 178
    :cond_14
    new-instance v1, Landroid/widget/directwriting/IDirectWritingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/widget/directwriting/IDirectWritingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 187
    sparse-switch p0, :sswitch_data_3a

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 243
    :sswitch_5
    const-string/jumbo v0, "onTextViewExtraCommand"

    return-object v0

    .line 239
    :sswitch_9
    const-string/jumbo v0, "onExtraCommand"

    return-object v0

    .line 235
    :sswitch_d
    const-string/jumbo v0, "onUpdateImeOptions"

    return-object v0

    .line 231
    :sswitch_11
    const-string v0, "getConfiguration"

    return-object v0

    .line 227
    :sswitch_14
    const-string/jumbo v0, "onEditTextActionModeStarted"

    return-object v0

    .line 223
    :sswitch_18
    const-string/jumbo v0, "onDispatchEvent"

    return-object v0

    .line 219
    :sswitch_1c
    const-string/jumbo v0, "onWindowFocusLost"

    return-object v0

    .line 215
    :sswitch_20
    const-string/jumbo v0, "onBoundedEditTextChanged"

    return-object v0

    .line 211
    :sswitch_24
    const-string/jumbo v0, "onStopRecognition"

    return-object v0

    .line 207
    :sswitch_28
    const-string/jumbo v0, "onStartRecognition"

    return-object v0

    .line 203
    :sswitch_2c
    const-string v0, "getPackageName"

    return-object v0

    .line 199
    :sswitch_2f
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 195
    :sswitch_33
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 191
    :sswitch_37
    const-string v0, "getVersion"

    return-object v0

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_37
        0x2 -> :sswitch_33
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_2c
        0xb -> :sswitch_28
        0xc -> :sswitch_24
        0xd -> :sswitch_20
        0xe -> :sswitch_1c
        0xf -> :sswitch_18
        0x10 -> :sswitch_14
        0x11 -> :sswitch_11
        0x12 -> :sswitch_d
        0x385 -> :sswitch_9
        0x386 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 182
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 781
    const/16 v0, 0x385

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 254
    invoke-static {p1}, Landroid/widget/directwriting/IDirectWritingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    const-string v0, "android.widget.directwriting.IDirectWritingService"

    .line 259
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 260
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    :cond_d
    packed-switch p1, :pswitch_data_134

    .line 270
    sparse-switch p1, :sswitch_data_13a

    .line 410
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 266
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    return v1

    .line 399
    :sswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 402
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v2, v3}, Landroid/widget/directwriting/IDirectWritingService$Stub;->onTextViewExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 406
    goto/16 :goto_132

    .line 387
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 390
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v2, v3}, Landroid/widget/directwriting/IDirectWritingService$Stub;->onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 394
    goto/16 :goto_132

    .line 378
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->onUpdateImeOptions(I)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto/16 :goto_132

    .line 368
    .end local v2    # "_arg0":I
    :sswitch_5f
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 369
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->getConfiguration(Landroid/os/Bundle;)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 373
    goto/16 :goto_132

    .line 359
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_75
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 360
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->onEditTextActionModeStarted(Landroid/os/Bundle;)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_132

    .line 350
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_88
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 351
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->onDispatchEvent(Landroid/os/Bundle;)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_132

    .line 341
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->onWindowFocusLost(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_132

    .line 331
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_aa
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 332
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->onBoundedEditTextChanged(Landroid/os/Bundle;)Z

    move-result v3

    .line 334
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 336
    goto :goto_132

    .line 321
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :sswitch_c0
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 322
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->onStopRecognition(Landroid/os/Bundle;)Z

    move-result v3

    .line 324
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    goto :goto_132

    .line 311
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :sswitch_d6
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 312
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->onStartRecognition(Landroid/os/Bundle;)Z

    move-result v3

    .line 314
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 316
    goto :goto_132

    .line 303
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :sswitch_ec
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingService$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    goto :goto_132

    .line 294
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/widget/directwriting/IDirectWritingServiceCallback;

    move-result-object v2

    .line 295
    .local v2, "_arg0":Landroid/widget/directwriting/IDirectWritingServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->unregisterCallback(Landroid/widget/directwriting/IDirectWritingServiceCallback;)Z

    move-result v3

    .line 297
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 299
    goto :goto_132

    .line 282
    .end local v2    # "_arg0":Landroid/widget/directwriting/IDirectWritingServiceCallback;
    .end local v3    # "_result":Z
    :sswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/widget/directwriting/IDirectWritingServiceCallback;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Landroid/widget/directwriting/IDirectWritingServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Landroid/widget/directwriting/IDirectWritingService$Stub;->registerCallback(Landroid/widget/directwriting/IDirectWritingServiceCallback;Ljava/lang/String;)Z

    move-result v4

    .line 287
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 289
    goto :goto_132

    .line 274
    .end local v2    # "_arg0":Landroid/widget/directwriting/IDirectWritingServiceCallback;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_127
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingService$Stub;->getVersion()I

    move-result v2

    .line 275
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    nop

    .line 413
    .end local v2    # "_result":I
    :goto_132
    return v1

    nop

    :pswitch_data_134
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :sswitch_data_13a
    .sparse-switch
        0x1 -> :sswitch_127
        0x2 -> :sswitch_10d
        0x3 -> :sswitch_f7
        0x4 -> :sswitch_ec
        0xb -> :sswitch_d6
        0xc -> :sswitch_c0
        0xd -> :sswitch_aa
        0xe -> :sswitch_9b
        0xf -> :sswitch_88
        0x10 -> :sswitch_75
        0x11 -> :sswitch_5f
        0x12 -> :sswitch_50
        0x385 -> :sswitch_36
        0x386 -> :sswitch_1c
    .end sparse-switch
.end method
