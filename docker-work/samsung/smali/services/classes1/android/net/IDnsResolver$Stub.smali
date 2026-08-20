.class public abstract Landroid/net/IDnsResolver$Stub;
.super Landroid/os/Binder;
.source "IDnsResolver.java"

# interfaces
.implements Landroid/net/IDnsResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IDnsResolver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_createNetworkCache:I = 0x8

.field public static final TRANSACTION_destroyNetworkCache:I = 0x9

.field public static final TRANSACTION_flushNetworkCache:I = 0xb

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_getPrefix64:I = 0x7

.field public static final TRANSACTION_getResolverInfo:I = 0x4

.field public static final TRANSACTION_isAlive:I = 0x1

.field public static final TRANSACTION_registerEventListener:I = 0x2

.field public static final TRANSACTION_registerUnsolicitedEventListener:I = 0xd

.field public static final TRANSACTION_setLogSeverity:I = 0xa

.field public static final TRANSACTION_setPrefix64:I = 0xc

.field public static final TRANSACTION_setResolverConfiguration:I = 0x3

.field public static final TRANSACTION_setResolverOptions:I = 0xe

.field public static final TRANSACTION_startPrefix64Discovery:I = 0x5

.field public static final TRANSACTION_stopPrefix64Discovery:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    sget-object v0, Landroid/net/IDnsResolver;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_4
    sget-object v0, Landroid/net/IDnsResolver;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 94
    instance-of v1, v0, Landroid/net/IDnsResolver;

    if-eqz v1, :cond_13

    .line 95
    check-cast v0, Landroid/net/IDnsResolver;

    return-object v0

    .line 97
    :cond_13
    new-instance v0, Landroid/net/IDnsResolver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/IDnsResolver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    .line 105
    sget-object v3, Landroid/net/IDnsResolver;->DESCRIPTOR:Ljava/lang/String;

    const/4 v9, 0x1

    if-lt v1, v9, :cond_15

    const v4, 0xffffff

    if-gt v1, v4, :cond_15

    .line 107
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    sparse-switch v1, :sswitch_data_156

    packed-switch v1, :pswitch_data_164

    .line 297
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 113
    :sswitch_20
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    .line 118
    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-interface/range {p0 .. p0}, Landroid/net/IDnsResolver;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 124
    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-interface/range {p0 .. p0}, Landroid/net/IDnsResolver;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    .line 288
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    sget-object v3, Landroid/net/ResolverOptionsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ResolverOptionsParcel;

    .line 291
    invoke-interface {v0, v1, v2}, Landroid/net/IDnsResolver;->setResolverOptions(ILandroid/net/ResolverOptionsParcel;)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_155

    .line 280
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;

    move-result-object v1

    .line 281
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->registerUnsolicitedEventListener(Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_155

    .line 270
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-interface {v0, v1, v2}, Landroid/net/IDnsResolver;->setPrefix64(ILjava/lang/String;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_155

    .line 262
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->flushNetworkCache(I)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_155

    .line 254
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->setLogSeverity(I)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_155

    .line 246
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->destroyNetworkCache(I)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_155

    .line 238
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 239
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->createNetworkCache(I)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_155

    .line 229
    :pswitch_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->getPrefix64(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_155

    .line 221
    :pswitch_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->stopPrefix64Discovery(I)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_155

    .line 213
    :pswitch_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->startPrefix64Discovery(I)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_155

    .line 157
    :pswitch_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_d3

    move-object v10, v4

    goto :goto_d6

    .line 163
    :cond_d3
    new-array v3, v3, [Ljava/lang/String;

    move-object v10, v3

    .line 166
    :goto_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_de

    move-object v11, v4

    goto :goto_e1

    .line 170
    :cond_de
    new-array v3, v3, [Ljava/lang/String;

    move-object v11, v3

    .line 173
    :goto_e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_e9

    move-object v12, v4

    goto :goto_ec

    .line 177
    :cond_e9
    new-array v3, v3, [Ljava/lang/String;

    move-object v12, v3

    .line 180
    :goto_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_f4

    move-object v13, v4

    goto :goto_f7

    .line 184
    :cond_f4
    new-array v3, v3, [I

    move-object v13, v3

    .line 187
    :goto_f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_ff

    move-object v14, v4

    goto :goto_102

    .line 191
    :cond_ff
    new-array v3, v3, [I

    move-object v14, v3

    .line 194
    :goto_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_109

    goto :goto_10b

    .line 198
    :cond_109
    new-array v4, v2, [I

    :goto_10b
    move-object v15, v4

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    .line 200
    invoke-interface/range {v0 .. v7}, Landroid/net/IDnsResolver;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 203
    invoke-virtual {v8, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 204
    invoke-virtual {v8, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 205
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 206
    invoke-virtual {v8, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 207
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_155

    .line 149
    :pswitch_12d
    sget-object v1, Landroid/net/ResolverParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ResolverParamsParcel;

    .line 150
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_155

    .line 141
    :pswitch_13c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/metrics/INetdEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;

    move-result-object v1

    .line 142
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->registerEventListener(Landroid/net/metrics/INetdEventListener;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_155

    .line 133
    :pswitch_14b
    invoke-interface/range {p0 .. p0}, Landroid/net/IDnsResolver;->isAlive()Z

    move-result v0

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_155
    return v9

    :sswitch_data_156
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_14b
        :pswitch_13c
        :pswitch_12d
        :pswitch_c6
        :pswitch_ba
        :pswitch_ae
        :pswitch_9e
        :pswitch_92
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
        :pswitch_5e
        :pswitch_4e
        :pswitch_3a
    .end packed-switch
.end method
