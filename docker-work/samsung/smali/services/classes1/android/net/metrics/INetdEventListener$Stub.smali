.class public abstract Landroid/net/metrics/INetdEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_onConnectEvent:I = 0x3

.field public static final TRANSACTION_onDnsEvent:I = 0x1

.field public static final TRANSACTION_onNat64PrefixEvent:I = 0x6

.field public static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x2

.field public static final TRANSACTION_onTcpSocketStatsEvent:I = 0x5

.field public static final TRANSACTION_onWakeupEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    sget-object v0, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    sget-object v0, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 67
    instance-of v1, v0, Landroid/net/metrics/INetdEventListener;

    if-eqz v1, :cond_13

    .line 68
    check-cast v0, Landroid/net/metrics/INetdEventListener;

    return-object v0

    .line 70
    :cond_13
    new-instance v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/metrics/INetdEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 78
    sget-object v3, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v12, 0x1

    if-lt v1, v12, :cond_15

    const v4, 0xffffff

    if-gt v1, v4, :cond_15

    move-object/from16 v4, p2

    .line 80
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_17

    :cond_15
    move-object/from16 v4, p2

    :goto_17
    sparse-switch v1, :sswitch_data_100

    packed-switch v1, :pswitch_data_10e

    .line 210
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 86
    :sswitch_22
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 91
    :sswitch_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-interface {p0}, Landroid/net/metrics/INetdEventListener;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 97
    :sswitch_31
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-interface {p0}, Landroid/net/metrics/INetdEventListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 198
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 205
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/net/metrics/INetdEventListener;->onNat64PrefixEvent(IZLjava/lang/String;I)V

    goto/16 :goto_fe

    .line 183
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    move-object v0, p0

    move-object v4, v5

    move-object v5, v6

    .line 192
    invoke-interface/range {v0 .. v5}, Landroid/net/metrics/INetdEventListener;->onTcpSocketStatsEvent([I[I[I[I[I)V

    goto/16 :goto_fe

    .line 158
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    move-object v0, p0

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-wide v10, v13

    .line 177
    invoke-interface/range {v0 .. v11}, Landroid/net/metrics/INetdEventListener;->onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_fe

    .line 141
    :pswitch_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v4, v5

    move v5, v6

    move v6, v7

    .line 152
    invoke-interface/range {v0 .. v6}, Landroid/net/metrics/INetdEventListener;->onConnectEvent(IIILjava/lang/String;II)V

    goto :goto_fe

    .line 128
    :pswitch_c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 135
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/net/metrics/INetdEventListener;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_fe

    .line 107
    :pswitch_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v0, p0

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    .line 122
    invoke-interface/range {v0 .. v8}, Landroid/net/metrics/INetdEventListener;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V

    :goto_fe
    return v12

    nop

    :sswitch_data_100
    .sparse-switch
        0xfffffe -> :sswitch_31
        0xffffff -> :sswitch_26
        0x5f4e5446 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_c1
        :pswitch_a1
        :pswitch_6d
        :pswitch_51
        :pswitch_3c
    .end packed-switch
.end method
