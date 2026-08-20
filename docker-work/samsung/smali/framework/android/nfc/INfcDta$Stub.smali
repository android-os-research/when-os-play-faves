.class public abstract Landroid/nfc/INfcDta$Stub;
.super Landroid/os/Binder;
.source "INfcDta.java"

# interfaces
.implements Landroid/nfc/INfcDta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcDta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcDta$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcDta"

.field static final greylist-max-o TRANSACTION_disableClient:I = 0x6

.field static final greylist-max-o TRANSACTION_disableDta:I = 0x2

.field static final greylist-max-o TRANSACTION_disableServer:I = 0x4

.field static final greylist-max-o TRANSACTION_enableClient:I = 0x5

.field static final greylist-max-o TRANSACTION_enableDta:I = 0x1

.field static final greylist-max-o TRANSACTION_enableServer:I = 0x3

.field static final greylist-max-o TRANSACTION_registerMessageService:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.nfc.INfcDta"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcDta$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcDta;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.nfc.INfcDta"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcDta;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcDta;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/nfc/INfcDta$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcDta$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_1a

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 98
    :pswitch_5
    const-string v0, "registerMessageService"

    return-object v0

    .line 94
    :pswitch_8
    const-string v0, "disableClient"

    return-object v0

    .line 90
    :pswitch_b
    const-string v0, "enableClient"

    return-object v0

    .line 86
    :pswitch_e
    const-string v0, "disableServer"

    return-object v0

    .line 82
    :pswitch_11
    const-string v0, "enableServer"

    return-object v0

    .line 78
    :pswitch_14
    const-string v0, "disableDta"

    return-object v0

    .line 74
    :pswitch_17
    const-string v0, "enableDta"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 346
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Landroid/nfc/INfcDta$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.nfc.INfcDta"

    .line 114
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    .line 115
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 114
    :cond_16
    move-object/from16 v11, p2

    .line 117
    :goto_18
    packed-switch v7, :pswitch_data_9e

    .line 125
    packed-switch v7, :pswitch_data_a4

    .line 197
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 121
    :pswitch_23
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v10

    .line 188
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {v6, v0}, Landroid/nfc/INfcDta$Stub;->registerMessageService(Ljava/lang/String;)Z

    move-result v1

    .line 191
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    goto :goto_9d

    .line 181
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcDta$Stub;->disableClient()V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_9d

    .line 166
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/nfc/INfcDta$Stub;->enableClient(Ljava/lang/String;III)Z

    move-result v4

    .line 175
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 177
    goto :goto_9d

    .line 159
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcDta$Stub;->disableServer()V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_9d

    .line 142
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 146
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 148
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 150
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 151
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/INfcDta$Stub;->enableServer(Ljava/lang/String;IIII)Z

    move-result v0

    .line 153
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 155
    goto :goto_9d

    .line 135
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_8f
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcDta$Stub;->disableDta()V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_9d

    .line 129
    :pswitch_96
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcDta$Stub;->enableDta()V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    nop

    .line 200
    :goto_9d
    return v10

    :pswitch_data_9e
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_96
        :pswitch_8f
        :pswitch_65
        :pswitch_5e
        :pswitch_40
        :pswitch_39
        :pswitch_27
    .end packed-switch
.end method
