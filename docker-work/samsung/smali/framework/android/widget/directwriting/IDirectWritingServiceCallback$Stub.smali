.class public abstract Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IDirectWritingServiceCallback.java"

# interfaces
.implements Landroid/widget/directwriting/IDirectWritingServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/directwriting/IDirectWritingServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_bindEditIn:I = 0xb

.field static final blacklist TRANSACTION_getBaseLine:I = 0x36

.field static final blacklist TRANSACTION_getBottom:I = 0x33

.field static final blacklist TRANSACTION_getCursorLocation:I = 0x5b

.field static final blacklist TRANSACTION_getHeight:I = 0x29

.field static final blacklist TRANSACTION_getImeOptions:I = 0x66

.field static final blacklist TRANSACTION_getInputType:I = 0x67

.field static final blacklist TRANSACTION_getLeft:I = 0x31

.field static final blacklist TRANSACTION_getLineAscent:I = 0x53

.field static final blacklist TRANSACTION_getLineBaseline:I = 0x50

.field static final blacklist TRANSACTION_getLineBottom:I = 0x4e

.field static final blacklist TRANSACTION_getLineCount:I = 0x35

.field static final blacklist TRANSACTION_getLineDescent:I = 0x54

.field static final blacklist TRANSACTION_getLineEnd:I = 0x4c

.field static final blacklist TRANSACTION_getLineForOffset:I = 0x4a

.field static final blacklist TRANSACTION_getLineHeight:I = 0x34

.field static final blacklist TRANSACTION_getLineHeightByIndex:I = 0x51

.field static final blacklist TRANSACTION_getLineMax:I = 0x49

.field static final blacklist TRANSACTION_getLineMaxIncludePadding:I = 0x52

.field static final blacklist TRANSACTION_getLineStart:I = 0x4b

.field static final blacklist TRANSACTION_getLineTop:I = 0x4d

.field static final blacklist TRANSACTION_getLineVisibleEnd:I = 0x4f

.field static final blacklist TRANSACTION_getOffsetForPosition:I = 0x21

.field static final blacklist TRANSACTION_getPaddingBottom:I = 0x2e

.field static final blacklist TRANSACTION_getPaddingEnd:I = 0x2f

.field static final blacklist TRANSACTION_getPaddingStart:I = 0x2c

.field static final blacklist TRANSACTION_getPaddingTop:I = 0x2d

.field static final blacklist TRANSACTION_getParagraphDirection:I = 0x47

.field static final blacklist TRANSACTION_getPrimaryHorizontal:I = 0x48

.field static final blacklist TRANSACTION_getPrivateImeOptions:I = 0x65

.field static final blacklist TRANSACTION_getRight:I = 0x30

.field static final blacklist TRANSACTION_getScrollY:I = 0x2b

.field static final blacklist TRANSACTION_getSelectionEnd:I = 0x20

.field static final blacklist TRANSACTION_getSelectionStart:I = 0x1f

.field static final blacklist TRANSACTION_getText:I = 0x22

.field static final blacklist TRANSACTION_getTextAreaRect:I = 0x55

.field static final blacklist TRANSACTION_getTop:I = 0x32

.field static final blacklist TRANSACTION_getVersion:I = 0x1

.field static final blacklist TRANSACTION_getWidth:I = 0x2a

.field static final blacklist TRANSACTION_isHoverIconShowing:I = 0x387

.field static final blacklist TRANSACTION_length:I = 0x23

.field static final blacklist TRANSACTION_onAppPrivateCommand:I = 0x70

.field static final blacklist TRANSACTION_onEditorAction:I = 0x6f

.field static final blacklist TRANSACTION_onExtraCommand:I = 0x385

.field static final blacklist TRANSACTION_onFinishRecognition:I = 0x2

.field static final blacklist TRANSACTION_onTextViewExtraCommand:I = 0x386

.field static final blacklist TRANSACTION_semForceHideSoftInput:I = 0x71

.field static final blacklist TRANSACTION_setSelection:I = 0x17

.field static final blacklist TRANSACTION_setText:I = 0x16

.field static final blacklist TRANSACTION_setTextSelection:I = 0x15

.field static final blacklist TRANSACTION_updateBoundedEditTextRect:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 328
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 329
    const-string v0, "android.widget.directwriting.IDirectWritingServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/widget/directwriting/IDirectWritingServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 337
    if-nez p0, :cond_4

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 340
    :cond_4
    const-string v0, "android.widget.directwriting.IDirectWritingServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 341
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/widget/directwriting/IDirectWritingServiceCallback;

    if-eqz v1, :cond_14

    .line 342
    move-object v1, v0

    check-cast v1, Landroid/widget/directwriting/IDirectWritingServiceCallback;

    return-object v1

    .line 344
    :cond_14
    new-instance v1, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 353
    sparse-switch p0, :sswitch_data_aa

    .line 561
    const/4 v0, 0x0

    return-object v0

    .line 557
    :sswitch_5
    const-string v0, "isHoverIconShowing"

    return-object v0

    .line 553
    :sswitch_8
    const-string/jumbo v0, "onTextViewExtraCommand"

    return-object v0

    .line 549
    :sswitch_c
    const-string/jumbo v0, "onExtraCommand"

    return-object v0

    .line 545
    :sswitch_10
    const-string/jumbo v0, "semForceHideSoftInput"

    return-object v0

    .line 541
    :sswitch_14
    const-string/jumbo v0, "onAppPrivateCommand"

    return-object v0

    .line 537
    :sswitch_18
    const-string/jumbo v0, "onEditorAction"

    return-object v0

    .line 533
    :sswitch_1c
    const-string v0, "getInputType"

    return-object v0

    .line 529
    :sswitch_1f
    const-string v0, "getImeOptions"

    return-object v0

    .line 525
    :sswitch_22
    const-string v0, "getPrivateImeOptions"

    return-object v0

    .line 521
    :sswitch_25
    const-string v0, "getCursorLocation"

    return-object v0

    .line 517
    :sswitch_28
    const-string v0, "getTextAreaRect"

    return-object v0

    .line 513
    :sswitch_2b
    const-string v0, "getLineDescent"

    return-object v0

    .line 509
    :sswitch_2e
    const-string v0, "getLineAscent"

    return-object v0

    .line 505
    :sswitch_31
    const-string v0, "getLineMaxIncludePadding"

    return-object v0

    .line 501
    :sswitch_34
    const-string v0, "getLineHeightByIndex"

    return-object v0

    .line 497
    :sswitch_37
    const-string v0, "getLineBaseline"

    return-object v0

    .line 493
    :sswitch_3a
    const-string v0, "getLineVisibleEnd"

    return-object v0

    .line 489
    :sswitch_3d
    const-string v0, "getLineBottom"

    return-object v0

    .line 485
    :sswitch_40
    const-string v0, "getLineTop"

    return-object v0

    .line 481
    :sswitch_43
    const-string v0, "getLineEnd"

    return-object v0

    .line 477
    :sswitch_46
    const-string v0, "getLineStart"

    return-object v0

    .line 473
    :sswitch_49
    const-string v0, "getLineForOffset"

    return-object v0

    .line 469
    :sswitch_4c
    const-string v0, "getLineMax"

    return-object v0

    .line 465
    :sswitch_4f
    const-string v0, "getPrimaryHorizontal"

    return-object v0

    .line 461
    :sswitch_52
    const-string v0, "getParagraphDirection"

    return-object v0

    .line 457
    :sswitch_55
    const-string v0, "getBaseLine"

    return-object v0

    .line 453
    :sswitch_58
    const-string v0, "getLineCount"

    return-object v0

    .line 449
    :sswitch_5b
    const-string v0, "getLineHeight"

    return-object v0

    .line 445
    :sswitch_5e
    const-string v0, "getBottom"

    return-object v0

    .line 441
    :sswitch_61
    const-string v0, "getTop"

    return-object v0

    .line 437
    :sswitch_64
    const-string v0, "getLeft"

    return-object v0

    .line 433
    :sswitch_67
    const-string v0, "getRight"

    return-object v0

    .line 429
    :sswitch_6a
    const-string v0, "getPaddingEnd"

    return-object v0

    .line 425
    :sswitch_6d
    const-string v0, "getPaddingBottom"

    return-object v0

    .line 421
    :sswitch_70
    const-string v0, "getPaddingTop"

    return-object v0

    .line 417
    :sswitch_73
    const-string v0, "getPaddingStart"

    return-object v0

    .line 413
    :sswitch_76
    const-string v0, "getScrollY"

    return-object v0

    .line 409
    :sswitch_79
    const-string v0, "getWidth"

    return-object v0

    .line 405
    :sswitch_7c
    const-string v0, "getHeight"

    return-object v0

    .line 401
    :sswitch_7f
    const-string/jumbo v0, "length"

    return-object v0

    .line 397
    :sswitch_83
    const-string v0, "getText"

    return-object v0

    .line 393
    :sswitch_86
    const-string v0, "getOffsetForPosition"

    return-object v0

    .line 389
    :sswitch_89
    const-string v0, "getSelectionEnd"

    return-object v0

    .line 385
    :sswitch_8c
    const-string v0, "getSelectionStart"

    return-object v0

    .line 381
    :sswitch_8f
    const-string/jumbo v0, "setSelection"

    return-object v0

    .line 377
    :sswitch_93
    const-string/jumbo v0, "setText"

    return-object v0

    .line 373
    :sswitch_97
    const-string/jumbo v0, "setTextSelection"

    return-object v0

    .line 369
    :sswitch_9b
    const-string/jumbo v0, "updateBoundedEditTextRect"

    return-object v0

    .line 365
    :sswitch_9f
    const-string v0, "bindEditIn"

    return-object v0

    .line 361
    :sswitch_a2
    const-string/jumbo v0, "onFinishRecognition"

    return-object v0

    .line 357
    :sswitch_a6
    const-string v0, "getVersion"

    return-object v0

    nop

    :sswitch_data_aa
    .sparse-switch
        0x1 -> :sswitch_a6
        0x2 -> :sswitch_a2
        0xb -> :sswitch_9f
        0xc -> :sswitch_9b
        0x15 -> :sswitch_97
        0x16 -> :sswitch_93
        0x17 -> :sswitch_8f
        0x1f -> :sswitch_8c
        0x20 -> :sswitch_89
        0x21 -> :sswitch_86
        0x22 -> :sswitch_83
        0x23 -> :sswitch_7f
        0x29 -> :sswitch_7c
        0x2a -> :sswitch_79
        0x2b -> :sswitch_76
        0x2c -> :sswitch_73
        0x2d -> :sswitch_70
        0x2e -> :sswitch_6d
        0x2f -> :sswitch_6a
        0x30 -> :sswitch_67
        0x31 -> :sswitch_64
        0x32 -> :sswitch_61
        0x33 -> :sswitch_5e
        0x34 -> :sswitch_5b
        0x35 -> :sswitch_58
        0x36 -> :sswitch_55
        0x47 -> :sswitch_52
        0x48 -> :sswitch_4f
        0x49 -> :sswitch_4c
        0x4a -> :sswitch_49
        0x4b -> :sswitch_46
        0x4c -> :sswitch_43
        0x4d -> :sswitch_40
        0x4e -> :sswitch_3d
        0x4f -> :sswitch_3a
        0x50 -> :sswitch_37
        0x51 -> :sswitch_34
        0x52 -> :sswitch_31
        0x53 -> :sswitch_2e
        0x54 -> :sswitch_2b
        0x55 -> :sswitch_28
        0x5b -> :sswitch_25
        0x65 -> :sswitch_22
        0x66 -> :sswitch_1f
        0x67 -> :sswitch_1c
        0x6f -> :sswitch_18
        0x70 -> :sswitch_14
        0x71 -> :sswitch_10
        0x385 -> :sswitch_c
        0x386 -> :sswitch_8
        0x387 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 348
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2101
    const/16 v0, 0x386

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 568
    invoke-static {p1}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 572
    const-string v0, "android.widget.directwriting.IDirectWritingServiceCallback"

    .line 573
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 574
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    :cond_d
    packed-switch p1, :pswitch_data_338

    .line 584
    sparse-switch p1, :sswitch_data_33e

    .line 1029
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 580
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    return v1

    .line 1022
    :sswitch_1c
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->isHoverIconShowing()Z

    move-result v2

    .line 1023
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1025
    goto/16 :goto_337

    .line 1011
    .end local v2    # "_result":Z
    :sswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1013
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1014
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-virtual {p0, v2, v3}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->onTextViewExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1018
    goto/16 :goto_337

    .line 999
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1002
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {p0, v2, v3}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1006
    goto/16 :goto_337

    .line 992
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_5c
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->semForceHideSoftInput()V

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    goto/16 :goto_337

    .line 982
    :sswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 984
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 985
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {p0, v2, v3}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    goto/16 :goto_337

    .line 973
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 974
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->onEditorAction(I)V

    .line 976
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    goto/16 :goto_337

    .line 965
    .end local v2    # "_arg0":I
    :sswitch_8a
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getInputType()I

    move-result v2

    .line 966
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    goto/16 :goto_337

    .line 958
    .end local v2    # "_result":I
    :sswitch_96
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getImeOptions()I

    move-result v2

    .line 959
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    goto/16 :goto_337

    .line 951
    .end local v2    # "_result":I
    :sswitch_a2
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 954
    goto/16 :goto_337

    .line 942
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 943
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getCursorLocation(I)Landroid/graphics/PointF;

    move-result-object v3

    .line 945
    .local v3, "_result":Landroid/graphics/PointF;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 947
    goto/16 :goto_337

    .line 932
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/PointF;
    :sswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 933
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getTextAreaRect(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 935
    .local v3, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 937
    goto/16 :goto_337

    .line 922
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/Rect;
    :sswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 923
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineDescent(I)I

    move-result v3

    .line 925
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    goto/16 :goto_337

    .line 912
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 913
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineAscent(I)I

    move-result v3

    .line 915
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    goto/16 :goto_337

    .line 902
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 903
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineMaxIncludePadding(I)I

    move-result v3

    .line 905
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    goto/16 :goto_337

    .line 892
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 893
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineHeightByIndex(I)I

    move-result v3

    .line 895
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    goto/16 :goto_337

    .line 882
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 883
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineBaseline(I)I

    move-result v3

    .line 885
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    goto/16 :goto_337

    .line 872
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 873
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineVisibleEnd(I)I

    move-result v3

    .line 875
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    goto/16 :goto_337

    .line 862
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 863
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineBottom(I)I

    move-result v3

    .line 865
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    goto/16 :goto_337

    .line 852
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 853
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineTop(I)I

    move-result v3

    .line 855
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    goto/16 :goto_337

    .line 842
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 843
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineEnd(I)I

    move-result v3

    .line 845
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    goto/16 :goto_337

    .line 832
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 833
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineStart(I)I

    move-result v3

    .line 835
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    goto/16 :goto_337

    .line 822
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineForOffset(I)I

    move-result v3

    .line 825
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    goto/16 :goto_337

    .line 812
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineMax(I)F

    move-result v3

    .line 815
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 817
    goto/16 :goto_337

    .line 802
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :sswitch_1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 803
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getPrimaryHorizontal(I)F

    move-result v3

    .line 805
    .restart local v3    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 807
    goto/16 :goto_337

    .line 792
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :sswitch_1cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 793
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getParagraphDirection(I)I

    move-result v3

    .line 795
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    goto/16 :goto_337

    .line 784
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_1de
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getBaseLine()I

    move-result v2

    .line 785
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    goto/16 :goto_337

    .line 777
    .end local v2    # "_result":I
    :sswitch_1ea
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineCount()I

    move-result v2

    .line 778
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    goto/16 :goto_337

    .line 770
    .end local v2    # "_result":I
    :sswitch_1f6
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLineHeight()I

    move-result v2

    .line 771
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    goto/16 :goto_337

    .line 763
    .end local v2    # "_result":I
    :sswitch_202
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getBottom()I

    move-result v2

    .line 764
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    goto/16 :goto_337

    .line 756
    .end local v2    # "_result":I
    :sswitch_20e
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getTop()I

    move-result v2

    .line 757
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    goto/16 :goto_337

    .line 749
    .end local v2    # "_result":I
    :sswitch_21a
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getLeft()I

    move-result v2

    .line 750
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    goto/16 :goto_337

    .line 742
    .end local v2    # "_result":I
    :sswitch_226
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getRight()I

    move-result v2

    .line 743
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    goto/16 :goto_337

    .line 735
    .end local v2    # "_result":I
    :sswitch_232
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getPaddingEnd()I

    move-result v2

    .line 736
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    goto/16 :goto_337

    .line 728
    .end local v2    # "_result":I
    :sswitch_23e
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getPaddingBottom()I

    move-result v2

    .line 729
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    goto/16 :goto_337

    .line 721
    .end local v2    # "_result":I
    :sswitch_24a
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getPaddingTop()I

    move-result v2

    .line 722
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    goto/16 :goto_337

    .line 714
    .end local v2    # "_result":I
    :sswitch_256
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getPaddingStart()I

    move-result v2

    .line 715
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    goto/16 :goto_337

    .line 707
    .end local v2    # "_result":I
    :sswitch_262
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getScrollY()I

    move-result v2

    .line 708
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    goto/16 :goto_337

    .line 700
    .end local v2    # "_result":I
    :sswitch_26e
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getWidth()I

    move-result v2

    .line 701
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    goto/16 :goto_337

    .line 693
    .end local v2    # "_result":I
    :sswitch_27a
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getHeight()I

    move-result v2

    .line 694
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    goto/16 :goto_337

    .line 686
    .end local v2    # "_result":I
    :sswitch_286
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->length()I

    move-result v2

    .line 687
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    goto/16 :goto_337

    .line 673
    .end local v2    # "_result":I
    :sswitch_292
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 674
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v2, :cond_2a3

    .line 676
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    invoke-static {v2, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_337

    .line 680
    :cond_2a3
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    goto/16 :goto_337

    .line 662
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :sswitch_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 664
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 665
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, v2, v3}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getOffsetForPosition(FF)I

    move-result v4

    .line 667
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    goto/16 :goto_337

    .line 654
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    .end local v4    # "_result":I
    :sswitch_2c0
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getSelectionEnd()I

    move-result v2

    .line 655
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    goto :goto_337

    .line 647
    .end local v2    # "_result":I
    :sswitch_2cb
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getSelectionStart()I

    move-result v2

    .line 648
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    goto :goto_337

    .line 639
    .end local v2    # "_result":I
    :sswitch_2d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->setSelection(I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto :goto_337

    .line 630
    .end local v2    # "_arg0":I
    :sswitch_2e4
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 631
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v2}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->setText(Ljava/lang/CharSequence;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto :goto_337

    .line 619
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_2f6
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 621
    .restart local v2    # "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 622
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, v2, v3}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->setTextSelection(Ljava/lang/CharSequence;I)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto :goto_337

    .line 612
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":I
    :sswitch_30c
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->updateBoundedEditTextRect()V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    goto :goto_337

    .line 602
    :sswitch_313
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 604
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 605
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v2, v3}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->bindEditIn(FF)V

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    goto :goto_337

    .line 595
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    :sswitch_325
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->onFinishRecognition()V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto :goto_337

    .line 588
    :sswitch_32c
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;->getVersion()I

    move-result v2

    .line 589
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    nop

    .line 1032
    .end local v2    # "_result":I
    :goto_337
    return v1

    :pswitch_data_338
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :sswitch_data_33e
    .sparse-switch
        0x1 -> :sswitch_32c
        0x2 -> :sswitch_325
        0xb -> :sswitch_313
        0xc -> :sswitch_30c
        0x15 -> :sswitch_2f6
        0x16 -> :sswitch_2e4
        0x17 -> :sswitch_2d6
        0x1f -> :sswitch_2cb
        0x20 -> :sswitch_2c0
        0x21 -> :sswitch_2a9
        0x22 -> :sswitch_292
        0x23 -> :sswitch_286
        0x29 -> :sswitch_27a
        0x2a -> :sswitch_26e
        0x2b -> :sswitch_262
        0x2c -> :sswitch_256
        0x2d -> :sswitch_24a
        0x2e -> :sswitch_23e
        0x2f -> :sswitch_232
        0x30 -> :sswitch_226
        0x31 -> :sswitch_21a
        0x32 -> :sswitch_20e
        0x33 -> :sswitch_202
        0x34 -> :sswitch_1f6
        0x35 -> :sswitch_1ea
        0x36 -> :sswitch_1de
        0x47 -> :sswitch_1cb
        0x48 -> :sswitch_1b8
        0x49 -> :sswitch_1a5
        0x4a -> :sswitch_192
        0x4b -> :sswitch_17f
        0x4c -> :sswitch_16c
        0x4d -> :sswitch_159
        0x4e -> :sswitch_146
        0x4f -> :sswitch_133
        0x50 -> :sswitch_120
        0x51 -> :sswitch_10d
        0x52 -> :sswitch_fa
        0x53 -> :sswitch_e7
        0x54 -> :sswitch_d4
        0x55 -> :sswitch_c1
        0x5b -> :sswitch_ae
        0x65 -> :sswitch_a2
        0x66 -> :sswitch_96
        0x67 -> :sswitch_8a
        0x6f -> :sswitch_7b
        0x70 -> :sswitch_64
        0x71 -> :sswitch_5c
        0x385 -> :sswitch_42
        0x386 -> :sswitch_28
        0x387 -> :sswitch_1c
    .end sparse-switch
.end method
