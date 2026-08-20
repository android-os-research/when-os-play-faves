.class public abstract Lcom/android/internal/view/IInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodSession"

.field static final greylist-max-o TRANSACTION_appPrivateCommand:I = 0x6

.field static final greylist-max-o TRANSACTION_displayCompletions:I = 0x5

.field static final greylist-max-o TRANSACTION_finishInput:I = 0xa

.field static final greylist-max-o TRANSACTION_finishSession:I = 0x7

.field static final blacklist TRANSACTION_invalidateInput:I = 0xb

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x9

.field static final blacklist TRANSACTION_showSideSyncSoftInput:I = 0xc

.field static final greylist-max-o TRANSACTION_updateCursor:I = 0x4

.field static final greylist-max-o TRANSACTION_updateCursorAnchorInfo:I = 0x8

.field static final greylist-max-o TRANSACTION_updateExtractedText:I = 0x1

.field static final greylist-max-o TRANSACTION_updateSelection:I = 0x2

.field static final greylist-max-o TRANSACTION_viewClicked:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodSession;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_30

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 135
    :pswitch_5
    const-string/jumbo v0, "showSideSyncSoftInput"

    return-object v0

    .line 131
    :pswitch_9
    const-string v0, "invalidateInput"

    return-object v0

    .line 127
    :pswitch_c
    const-string v0, "finishInput"

    return-object v0

    .line 123
    :pswitch_f
    const-string/jumbo v0, "removeImeSurface"

    return-object v0

    .line 119
    :pswitch_13
    const-string/jumbo v0, "updateCursorAnchorInfo"

    return-object v0

    .line 115
    :pswitch_17
    const-string v0, "finishSession"

    return-object v0

    .line 111
    :pswitch_1a
    const-string v0, "appPrivateCommand"

    return-object v0

    .line 107
    :pswitch_1d
    const-string v0, "displayCompletions"

    return-object v0

    .line 103
    :pswitch_20
    const-string/jumbo v0, "updateCursor"

    return-object v0

    .line 99
    :pswitch_24
    const-string/jumbo v0, "viewClicked"

    return-object v0

    .line 95
    :pswitch_28
    const-string/jumbo v0, "updateSelection"

    return-object v0

    .line 91
    :pswitch_2c
    const-string/jumbo v0, "updateExtractedText"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
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

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 460
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 146
    invoke-static {p1}, Lcom/android/internal/view/IInputMethodSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.android.internal.view.IInputMethodSession"

    .line 151
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_13

    const v0, 0xffffff

    if-gt v8, v0, :cond_13

    .line 152
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    :cond_13
    packed-switch v8, :pswitch_data_e8

    .line 162
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_ee

    .line 271
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 158
    :pswitch_20
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return v11

    .line 264
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 265
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->showSideSyncSoftInput(I)V

    .line 267
    goto/16 :goto_e6

    .line 252
    .end local v0    # "_arg0":I
    :pswitch_32
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/EditorInfo;

    .line 254
    .local v0, "_arg0":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v1

    .line 256
    .local v1, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V

    .line 259
    goto/16 :goto_e6

    .line 246
    .end local v0    # "_arg0":Landroid/view/inputmethod/EditorInfo;
    .end local v1    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v2    # "_arg2":I
    :pswitch_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishInput()V

    .line 247
    goto/16 :goto_e6

    .line 241
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->removeImeSurface()V

    .line 242
    goto/16 :goto_e6

    .line 234
    :pswitch_58
    sget-object v0, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 235
    .local v0, "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 237
    goto/16 :goto_e6

    .line 228
    .end local v0    # "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    :pswitch_68
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishSession()V

    .line 229
    goto/16 :goto_e6

    .line 219
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 222
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 224
    goto :goto_e6

    .line 211
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_80
    sget-object v0, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    .line 212
    .local v0, "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 214
    goto :goto_e6

    .line 203
    .end local v0    # "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    :pswitch_8f
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 204
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursor(Landroid/graphics/Rect;)V

    .line 206
    goto :goto_e6

    .line 195
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 196
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->viewClicked(Z)V

    .line 198
    goto :goto_e6

    .line 177
    .end local v0    # "_arg0":Z
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 179
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 181
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 183
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 185
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 187
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 188
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateSelection(IIIIII)V

    .line 190
    goto :goto_e6

    .line 167
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ExtractedText;

    .line 170
    .local v1, "_arg1":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 172
    nop

    .line 274
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/inputmethod/ExtractedText;
    :goto_e6
    return v11

    nop

    :pswitch_data_e8
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_d3
        :pswitch_a9
        :pswitch_9e
        :pswitch_8f
        :pswitch_80
        :pswitch_6d
        :pswitch_68
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_32
        :pswitch_26
    .end packed-switch
.end method
