.class public abstract Lcom/android/internal/view/IInputContext$Stub;
.super Landroid/os/Binder;
.source "IInputContext.java"

# interfaces
.implements Lcom/android/internal/view/IInputContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContext$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContext"

.field static final greylist-max-o TRANSACTION_beginBatchEdit:I = 0x11

.field static final greylist-max-o TRANSACTION_clearMetaKeyStates:I = 0x14

.field static final greylist-max-o TRANSACTION_commitCompletion:I = 0xc

.field static final greylist-max-o TRANSACTION_commitContent:I = 0x1c

.field static final greylist-max-o TRANSACTION_commitCorrection:I = 0xd

.field static final greylist-max-o TRANSACTION_commitText:I = 0xa

.field static final blacklist TRANSACTION_commitTextWithTextAttribute:I = 0xb

.field static final greylist-max-o TRANSACTION_deleteSurroundingText:I = 0x5

.field static final greylist-max-o TRANSACTION_deleteSurroundingTextInCodePoints:I = 0x6

.field static final greylist-max-o TRANSACTION_endBatchEdit:I = 0x12

.field static final greylist-max-o TRANSACTION_finishComposingText:I = 0x9

.field static final greylist-max-o TRANSACTION_getCursorCapsMode:I = 0x3

.field static final greylist-max-o TRANSACTION_getExtractedText:I = 0x4

.field static final greylist-max-o TRANSACTION_getSelectedText:I = 0x19

.field static final blacklist TRANSACTION_getSurroundingText:I = 0x1d

.field static final greylist-max-o TRANSACTION_getTextAfterCursor:I = 0x2

.field static final greylist-max-o TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final greylist-max-o TRANSACTION_performContextMenuAction:I = 0x10

.field static final greylist-max-o TRANSACTION_performEditorAction:I = 0xf

.field static final greylist-max-o TRANSACTION_performPrivateCommand:I = 0x16

.field static final blacklist TRANSACTION_performSpellCheck:I = 0x15

.field static final blacklist TRANSACTION_requestCursorUpdates:I = 0x1a

.field static final blacklist TRANSACTION_requestCursorUpdatesWithFilter:I = 0x1b

.field static final greylist-max-o TRANSACTION_sendKeyEvent:I = 0x13

.field static final greylist-max-o TRANSACTION_setComposingRegion:I = 0x17

.field static final blacklist TRANSACTION_setComposingRegionWithTextAttribute:I = 0x18

.field static final greylist-max-o TRANSACTION_setComposingText:I = 0x7

.field static final blacklist TRANSACTION_setComposingTextWithTextAttribute:I = 0x8

.field static final blacklist TRANSACTION_setImeConsumesInput:I = 0x1e

.field static final greylist-max-o TRANSACTION_setSelection:I = 0xe


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 116
    const-string v0, "com.android.internal.view.IInputContext"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 124
    if-nez p0, :cond_4

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_4
    const-string v0, "com.android.internal.view.IInputContext"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 128
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputContext;

    if-eqz v1, :cond_14

    .line 129
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputContext;

    return-object v1

    .line 131
    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputContext$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 140
    packed-switch p0, :pswitch_data_68

    .line 264
    const/4 v0, 0x0

    return-object v0

    .line 260
    :pswitch_5
    const-string/jumbo v0, "setImeConsumesInput"

    return-object v0

    .line 256
    :pswitch_9
    const-string v0, "getSurroundingText"

    return-object v0

    .line 252
    :pswitch_c
    const-string v0, "commitContent"

    return-object v0

    .line 248
    :pswitch_f
    const-string/jumbo v0, "requestCursorUpdatesWithFilter"

    return-object v0

    .line 244
    :pswitch_13
    const-string/jumbo v0, "requestCursorUpdates"

    return-object v0

    .line 240
    :pswitch_17
    const-string v0, "getSelectedText"

    return-object v0

    .line 236
    :pswitch_1a
    const-string/jumbo v0, "setComposingRegionWithTextAttribute"

    return-object v0

    .line 232
    :pswitch_1e
    const-string/jumbo v0, "setComposingRegion"

    return-object v0

    .line 228
    :pswitch_22
    const-string v0, "performPrivateCommand"

    return-object v0

    .line 224
    :pswitch_25
    const-string v0, "performSpellCheck"

    return-object v0

    .line 220
    :pswitch_28
    const-string v0, "clearMetaKeyStates"

    return-object v0

    .line 216
    :pswitch_2b
    const-string/jumbo v0, "sendKeyEvent"

    return-object v0

    .line 212
    :pswitch_2f
    const-string v0, "endBatchEdit"

    return-object v0

    .line 208
    :pswitch_32
    const-string v0, "beginBatchEdit"

    return-object v0

    .line 204
    :pswitch_35
    const-string v0, "performContextMenuAction"

    return-object v0

    .line 200
    :pswitch_38
    const-string v0, "performEditorAction"

    return-object v0

    .line 196
    :pswitch_3b
    const-string/jumbo v0, "setSelection"

    return-object v0

    .line 192
    :pswitch_3f
    const-string v0, "commitCorrection"

    return-object v0

    .line 188
    :pswitch_42
    const-string v0, "commitCompletion"

    return-object v0

    .line 184
    :pswitch_45
    const-string v0, "commitTextWithTextAttribute"

    return-object v0

    .line 180
    :pswitch_48
    const-string v0, "commitText"

    return-object v0

    .line 176
    :pswitch_4b
    const-string v0, "finishComposingText"

    return-object v0

    .line 172
    :pswitch_4e
    const-string/jumbo v0, "setComposingTextWithTextAttribute"

    return-object v0

    .line 168
    :pswitch_52
    const-string/jumbo v0, "setComposingText"

    return-object v0

    .line 164
    :pswitch_56
    const-string v0, "deleteSurroundingTextInCodePoints"

    return-object v0

    .line 160
    :pswitch_59
    const-string v0, "deleteSurroundingText"

    return-object v0

    .line 156
    :pswitch_5c
    const-string v0, "getExtractedText"

    return-object v0

    .line 152
    :pswitch_5f
    const-string v0, "getCursorCapsMode"

    return-object v0

    .line 148
    :pswitch_62
    const-string v0, "getTextAfterCursor"

    return-object v0

    .line 144
    :pswitch_65
    const-string v0, "getTextBeforeCursor"

    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 135
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1144
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 271
    invoke-static {p1}, Lcom/android/internal/view/IInputContext$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.android.internal.view.IInputContext"

    .line 276
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 277
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    :cond_13
    packed-switch v7, :pswitch_data_36a

    .line 287
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_370

    .line 647
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 283
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    return v10

    .line 638
    :pswitch_26
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 640
    .local v0, "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 641
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    .line 643
    goto/16 :goto_369

    .line 622
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Z
    :pswitch_3a
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 624
    .local v12, "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 626
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 628
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 630
    .local v15, "_arg3":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/infra/AndroidFuture;

    .line 631
    .local v16, "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputContext$Stub;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 633
    goto/16 :goto_369

    .line 606
    .end local v12    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_69
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 608
    .restart local v12    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v0, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/inputmethod/InputContentInfo;

    .line 610
    .local v13, "_arg1":Landroid/view/inputmethod/InputContentInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 612
    .restart local v14    # "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 614
    .local v15, "_arg3":Landroid/os/Bundle;
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/infra/AndroidFuture;

    .line 615
    .restart local v16    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputContext$Stub;->commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V

    .line 617
    goto/16 :goto_369

    .line 590
    .end local v12    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v13    # "_arg1":Landroid/view/inputmethod/InputContentInfo;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_a2
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 592
    .restart local v12    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 594
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 596
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 598
    .local v15, "_arg3":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/infra/AndroidFuture;

    .line 599
    .restart local v16    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputContext$Stub;->requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 601
    goto/16 :goto_369

    .line 576
    .end local v12    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_d1
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 578
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 580
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 582
    .local v2, "_arg2":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 583
    .local v3, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V

    .line 585
    goto/16 :goto_369

    .line 564
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_f1
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 566
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 568
    .restart local v1    # "_arg1":I
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 569
    .local v2, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V

    .line 571
    goto/16 :goto_369

    .line 550
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_10d
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 552
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 554
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 556
    .local v2, "_arg2":I
    sget-object v3, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/TextAttribute;

    .line 557
    .local v3, "_arg3":Landroid/view/inputmethod/TextAttribute;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    .line 559
    goto/16 :goto_369

    .line 538
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    :pswitch_12d
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 540
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 542
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 543
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 545
    goto/16 :goto_369

    .line 526
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_145
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 528
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 531
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 533
    goto/16 :goto_369

    .line 518
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_161
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 519
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {v6, v0}, Lcom/android/internal/view/IInputContext$Stub;->performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 521
    goto/16 :goto_369

    .line 508
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    :pswitch_171
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 510
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 511
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 513
    goto/16 :goto_369

    .line 498
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    :pswitch_185
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 500
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 501
    .local v1, "_arg1":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    .line 503
    goto/16 :goto_369

    .line 490
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Landroid/view/KeyEvent;
    :pswitch_19d
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 491
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v6, v0}, Lcom/android/internal/view/IInputContext$Stub;->endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 493
    goto/16 :goto_369

    .line 482
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    :pswitch_1ad
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 483
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {v6, v0}, Lcom/android/internal/view/IInputContext$Stub;->beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 485
    goto/16 :goto_369

    .line 472
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    :pswitch_1bd
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 474
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 477
    goto/16 :goto_369

    .line 462
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    :pswitch_1d1
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 464
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 465
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 467
    goto/16 :goto_369

    .line 450
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    :pswitch_1e5
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 452
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 454
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 455
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 457
    goto/16 :goto_369

    .line 440
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1fd
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 442
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/CorrectionInfo;

    .line 443
    .local v1, "_arg1":Landroid/view/inputmethod/CorrectionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    .line 445
    goto/16 :goto_369

    .line 430
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Landroid/view/inputmethod/CorrectionInfo;
    :pswitch_215
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 432
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/CompletionInfo;

    .line 433
    .local v1, "_arg1":Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    .line 435
    goto/16 :goto_369

    .line 416
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Landroid/view/inputmethod/CompletionInfo;
    :pswitch_22d
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 418
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 420
    .local v1, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 422
    .restart local v2    # "_arg2":I
    sget-object v3, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/TextAttribute;

    .line 423
    .restart local v3    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 425
    goto/16 :goto_369

    .line 404
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    :pswitch_251
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 406
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 408
    .restart local v1    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 409
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    .line 411
    goto/16 :goto_369

    .line 396
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":I
    :pswitch_26d
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 397
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {v6, v0}, Lcom/android/internal/view/IInputContext$Stub;->finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 399
    goto/16 :goto_369

    .line 382
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    :pswitch_27d
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 384
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 386
    .restart local v1    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .restart local v2    # "_arg2":I
    sget-object v3, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/TextAttribute;

    .line 389
    .restart local v3    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 391
    goto/16 :goto_369

    .line 370
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    :pswitch_2a1
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 372
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 374
    .restart local v1    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 375
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    .line 377
    goto/16 :goto_369

    .line 358
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":I
    :pswitch_2bd
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 360
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 363
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 365
    goto/16 :goto_369

    .line 346
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_2d5
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 348
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 353
    goto/16 :goto_369

    .line 332
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_2ed
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 334
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ExtractedTextRequest;

    .line 336
    .local v1, "_arg1":Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    .restart local v2    # "_arg2":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 339
    .local v3, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V

    .line 341
    goto :goto_369

    .line 320
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_310
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 322
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    .local v1, "_arg1":I
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 325
    .local v2, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V

    .line 327
    goto :goto_369

    .line 306
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_32b
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 308
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg2":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 313
    .restart local v3    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V

    .line 315
    goto :goto_369

    .line 292
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_34a
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 294
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .restart local v2    # "_arg2":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 299
    .restart local v3    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V

    .line 301
    nop

    .line 650
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :goto_369
    return v10

    :pswitch_data_36a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_370
    .packed-switch 0x1
        :pswitch_34a
        :pswitch_32b
        :pswitch_310
        :pswitch_2ed
        :pswitch_2d5
        :pswitch_2bd
        :pswitch_2a1
        :pswitch_27d
        :pswitch_26d
        :pswitch_251
        :pswitch_22d
        :pswitch_215
        :pswitch_1fd
        :pswitch_1e5
        :pswitch_1d1
        :pswitch_1bd
        :pswitch_1ad
        :pswitch_19d
        :pswitch_185
        :pswitch_171
        :pswitch_161
        :pswitch_145
        :pswitch_12d
        :pswitch_10d
        :pswitch_f1
        :pswitch_d1
        :pswitch_a2
        :pswitch_69
        :pswitch_3a
        :pswitch_26
    .end packed-switch
.end method
