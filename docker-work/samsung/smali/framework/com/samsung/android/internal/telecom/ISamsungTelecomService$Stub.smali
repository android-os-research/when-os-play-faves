.class public abstract Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;
.super Landroid/os/Binder;
.source "ISamsungTelecomService.java"

# interfaces
.implements Lcom/samsung/android/internal/telecom/ISamsungTelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptRingingCall:I = 0x8

.field static final blacklist TRANSACTION_acceptRingingCallWithVideoState:I = 0x9

.field static final blacklist TRANSACTION_addConferenceParticipants:I = 0x5

.field static final blacklist TRANSACTION_endCall:I = 0x7

.field static final blacklist TRANSACTION_getAllowedPhoneAccountInfo:I = 0x2

.field static final blacklist TRANSACTION_getAllowedPhoneAccountInfos:I = 0x3

.field static final blacklist TRANSACTION_getAllowedPhoneAccounts:I = 0x4

.field static final blacklist TRANSACTION_getAllowedSelfManagedPhoneAccounts:I = 0x1

.field static final blacklist TRANSACTION_silenceRinger:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "com.samsung.android.internal.telecom.ISamsungTelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "com.samsung.android.internal.telecom.ISamsungTelecomService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_22

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 123
    :pswitch_5
    const-string v0, "acceptRingingCallWithVideoState"

    return-object v0

    .line 119
    :pswitch_8
    const-string v0, "acceptRingingCall"

    return-object v0

    .line 115
    :pswitch_b
    const-string v0, "endCall"

    return-object v0

    .line 111
    :pswitch_e
    const-string/jumbo v0, "silenceRinger"

    return-object v0

    .line 107
    :pswitch_12
    const-string v0, "addConferenceParticipants"

    return-object v0

    .line 103
    :pswitch_15
    const-string v0, "getAllowedPhoneAccounts"

    return-object v0

    .line 99
    :pswitch_18
    const-string v0, "getAllowedPhoneAccountInfos"

    return-object v0

    .line 95
    :pswitch_1b
    const-string v0, "getAllowedPhoneAccountInfo"

    return-object v0

    .line 91
    :pswitch_1e
    const-string v0, "getAllowedSelfManagedPhoneAccounts"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
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

    .line 504
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 134
    invoke-static {p1}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 138
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.internal.telecom.ISamsungTelecomService"

    .line 139
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 140
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_15
    packed-switch v7, :pswitch_data_13a

    .line 150
    packed-switch v7, :pswitch_data_140

    .line 288
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 146
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v11

    .line 272
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 274
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 276
    .local v13, "_arg1":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 278
    .local v14, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 280
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 281
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->acceptRingingCallWithVideoState(IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto/16 :goto_139

    .line 257
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Landroid/os/Bundle;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 261
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->acceptRingingCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto/16 :goto_139

    .line 241
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 245
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->endCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 250
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 252
    goto/16 :goto_139

    .line 226
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 230
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->silenceRinger(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto/16 :goto_139

    .line 211
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_b1
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 215
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->addConferenceParticipants(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto :goto_139

    .line 195
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 197
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 199
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->getAllowedPhoneAccounts(ZZLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 204
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lcom/samsung/android/telecom/SemPhoneAccount;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_139

    .line 179
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lcom/samsung/android/telecom/SemPhoneAccount;>;"
    :pswitch_ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 181
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 183
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->getAllowedPhoneAccountInfos(ZZLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 188
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    goto :goto_139

    .line 167
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/Bundle;>;"
    :pswitch_10d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->getAllowedPhoneAccountInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 172
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 174
    goto :goto_139

    .line 155
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/Bundle;>;"
    :pswitch_123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->getAllowedSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 160
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 162
    nop

    .line 291
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccount;>;"
    :goto_139
    return v11

    :pswitch_data_13a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_123
        :pswitch_10d
        :pswitch_ef
        :pswitch_d1
        :pswitch_b1
        :pswitch_92
        :pswitch_6f
        :pswitch_50
        :pswitch_24
    .end packed-switch
.end method
