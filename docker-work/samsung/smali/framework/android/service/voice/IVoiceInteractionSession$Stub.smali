.class public abstract Landroid/service/voice/IVoiceInteractionSession$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSession.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionSession"

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x7

.field static final greylist-max-o TRANSACTION_destroy:I = 0x9

.field static final greylist-max-o TRANSACTION_handleAssist:I = 0x3

.field static final greylist-max-o TRANSACTION_handleScreenshot:I = 0x4

.field static final greylist-max-o TRANSACTION_hide:I = 0x2

.field static final greylist-max-o TRANSACTION_onLockscreenShown:I = 0x8

.field static final greylist-max-o TRANSACTION_show:I = 0x1

.field static final greylist-max-o TRANSACTION_taskFinished:I = 0x6

.field static final greylist-max-o TRANSACTION_taskStarted:I = 0x5

.field static final blacklist TRANSACTION_updateVisibleActivityInfo:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.service.voice.IVoiceInteractionSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/service/voice/IVoiceInteractionSession;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_2c

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_5
    const-string/jumbo v0, "updateVisibleActivityInfo"

    return-object v0

    .line 112
    :pswitch_9
    const-string v0, "destroy"

    return-object v0

    .line 108
    :pswitch_c
    const-string/jumbo v0, "onLockscreenShown"

    return-object v0

    .line 104
    :pswitch_10
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 100
    :pswitch_13
    const-string/jumbo v0, "taskFinished"

    return-object v0

    .line 96
    :pswitch_17
    const-string/jumbo v0, "taskStarted"

    return-object v0

    .line 92
    :pswitch_1b
    const-string/jumbo v0, "handleScreenshot"

    return-object v0

    .line 88
    :pswitch_1f
    const-string/jumbo v0, "handleAssist"

    return-object v0

    .line 84
    :pswitch_23
    const-string/jumbo v0, "hide"

    return-object v0

    .line 80
    :pswitch_27
    const-string/jumbo v0, "show"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 399
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 127
    invoke-static {p1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    const-string v11, "android.service.voice.IVoiceInteractionSession"

    .line 132
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v9, v12, :cond_13

    const v0, 0xffffff

    if-gt v9, v0, :cond_13

    .line 133
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_13
    packed-switch v9, :pswitch_data_e4

    .line 143
    move-object/from16 v13, p3

    packed-switch v9, :pswitch_data_ea

    .line 237
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 139
    :pswitch_20
    move-object/from16 v13, p3

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v12

    .line 228
    :pswitch_26
    sget-object v0, Landroid/service/voice/VisibleActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VisibleActivityInfo;

    .line 230
    .local v0, "_arg0":Landroid/service/voice/VisibleActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v8, v0, v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->updateVisibleActivityInfo(Landroid/service/voice/VisibleActivityInfo;I)V

    .line 233
    goto/16 :goto_e2

    .line 222
    .end local v0    # "_arg0":Landroid/service/voice/VisibleActivityInfo;
    .end local v1    # "_arg1":I
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->destroy()V

    .line 223
    goto/16 :goto_e2

    .line 217
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->onLockscreenShown()V

    .line 218
    goto/16 :goto_e2

    .line 212
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->closeSystemDialogs()V

    .line 213
    goto/16 :goto_e2

    .line 203
    :pswitch_49
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 205
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v8, v0, v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskFinished(Landroid/content/Intent;I)V

    .line 208
    goto/16 :goto_e2

    .line 193
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":I
    :pswitch_5d
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 195
    .restart local v0    # "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v8, v0, v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskStarted(Landroid/content/Intent;I)V

    .line 198
    goto/16 :goto_e2

    .line 185
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":I
    :pswitch_71
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 186
    .local v0, "_arg0":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {v8, v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleScreenshot(Landroid/graphics/Bitmap;)V

    .line 188
    goto :goto_e2

    .line 165
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 167
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 169
    .local v15, "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 171
    .local v16, "_arg2":Landroid/os/Bundle;
    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/assist/AssistStructure;

    .line 173
    .local v17, "_arg3":Landroid/app/assist/AssistStructure;
    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/assist/AssistContent;

    .line 175
    .local v18, "_arg4":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 177
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 178
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V

    .line 180
    goto :goto_e2

    .line 159
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Landroid/os/IBinder;
    .end local v16    # "_arg2":Landroid/os/Bundle;
    .end local v17    # "_arg3":Landroid/app/assist/AssistStructure;
    .end local v18    # "_arg4":Landroid/app/assist/AssistContent;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_c3
    invoke-virtual/range {p0 .. p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->hide()V

    .line 160
    goto :goto_e2

    .line 148
    :pswitch_c7
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 150
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    move-result-object v2

    .line 153
    .local v2, "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {v8, v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession$Stub;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 155
    nop

    .line 240
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    :goto_e2
    return v12

    nop

    :pswitch_data_e4
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_c3
        :pswitch_80
        :pswitch_71
        :pswitch_5d
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_26
    .end packed-switch
.end method
