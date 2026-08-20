.class public abstract Landroid/net/INetdUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/INetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdUnsolicitedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_onInterfaceAdded:I = 0x6

.field public static final TRANSACTION_onInterfaceAddressRemoved:I = 0x5

.field public static final TRANSACTION_onInterfaceAddressUpdated:I = 0x4

.field public static final TRANSACTION_onInterfaceChanged:I = 0x8

.field public static final TRANSACTION_onInterfaceClassActivityChanged:I = 0x1

.field public static final TRANSACTION_onInterfaceDnsServerInfo:I = 0x3

.field public static final TRANSACTION_onInterfaceLinkStateChanged:I = 0x9

.field public static final TRANSACTION_onInterfaceRemoved:I = 0x7

.field public static final TRANSACTION_onQuotaLimitReached:I = 0x2

.field public static final TRANSACTION_onRouteChanged:I = 0xa

.field public static final TRANSACTION_onStrictCleartextDetected:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_4
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 83
    instance-of v1, v0, Landroid/net/INetdUnsolicitedEventListener;

    if-eqz v1, :cond_13

    .line 84
    check-cast v0, Landroid/net/INetdUnsolicitedEventListener;

    return-object v0

    .line 86
    :cond_13
    new-instance v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_d6

    packed-switch p1, :pswitch_data_e4

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 102
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 107
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-interface {p0}, Landroid/net/INetdUnsolicitedEventListener;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 113
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-interface {p0}, Landroid/net/INetdUnsolicitedEventListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 227
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 230
    invoke-interface {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onStrictCleartextDetected(ILjava/lang/String;)V

    goto/16 :goto_d5

    .line 214
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 221
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener;->onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d5

    .line 205
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    .line 208
    invoke-interface {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    goto/16 :goto_d5

    .line 196
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    .line 199
    invoke-interface {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceChanged(Ljava/lang/String;Z)V

    goto :goto_d5

    .line 189
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-interface {p0, p1}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceRemoved(Ljava/lang/String;)V

    goto :goto_d5

    .line 182
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-interface {p0, p1}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceAdded(Ljava/lang/String;)V

    goto :goto_d5

    .line 169
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 176
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_d5

    .line 156
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 163
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_d5

    .line 145
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    goto :goto_d5

    .line 136
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-interface {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    .line 123
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 130
    invoke-interface/range {v2 .. v7}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceClassActivityChanged(ZIJI)V

    :goto_d5
    return v1

    :sswitch_data_d6
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_b5
        :pswitch_a5
        :pswitch_91
        :pswitch_7d
        :pswitch_75
        :pswitch_6d
        :pswitch_61
        :pswitch_54
        :pswitch_3f
        :pswitch_32
    .end packed-switch
.end method
