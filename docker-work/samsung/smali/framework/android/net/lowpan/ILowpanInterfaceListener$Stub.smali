.class public abstract Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.super Landroid/os/Binder;
.source "ILowpanInterfaceListener.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnectedChanged:I = 0x2

.field static final blacklist TRANSACTION_onEnabledChanged:I = 0x1

.field static final blacklist TRANSACTION_onLinkAddressAdded:I = 0x9

.field static final blacklist TRANSACTION_onLinkAddressRemoved:I = 0xa

.field static final blacklist TRANSACTION_onLinkNetworkAdded:I = 0x7

.field static final blacklist TRANSACTION_onLinkNetworkRemoved:I = 0x8

.field static final blacklist TRANSACTION_onLowpanIdentityChanged:I = 0x6

.field static final blacklist TRANSACTION_onReceiveFromCommissioner:I = 0xb

.field static final blacklist TRANSACTION_onRoleChanged:I = 0x4

.field static final blacklist TRANSACTION_onStateChanged:I = 0x5

.field static final blacklist TRANSACTION_onUpChanged:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterfaceListener;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanInterfaceListener;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_26

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 123
    :pswitch_5
    const-string v0, "onReceiveFromCommissioner"

    return-object v0

    .line 119
    :pswitch_8
    const-string v0, "onLinkAddressRemoved"

    return-object v0

    .line 115
    :pswitch_b
    const-string v0, "onLinkAddressAdded"

    return-object v0

    .line 111
    :pswitch_e
    const-string v0, "onLinkNetworkRemoved"

    return-object v0

    .line 107
    :pswitch_11
    const-string v0, "onLinkNetworkAdded"

    return-object v0

    .line 103
    :pswitch_14
    const-string v0, "onLowpanIdentityChanged"

    return-object v0

    .line 99
    :pswitch_17
    const-string v0, "onStateChanged"

    return-object v0

    .line 95
    :pswitch_1a
    const-string v0, "onRoleChanged"

    return-object v0

    .line 91
    :pswitch_1d
    const-string v0, "onUpChanged"

    return-object v0

    .line 87
    :pswitch_20
    const-string v0, "onConnectedChanged"

    return-object v0

    .line 83
    :pswitch_23
    const-string v0, "onEnabledChanged"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 409
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 134
    invoke-static {p1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

    .line 139
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_d
    packed-switch p1, :pswitch_data_a4

    .line 150
    packed-switch p1, :pswitch_data_aa

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v1

    .line 235
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 236
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onReceiveFromCommissioner([B)V

    .line 238
    goto/16 :goto_a3

    .line 227
    .end local v2    # "_arg0":[B
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressRemoved(Ljava/lang/String;)V

    .line 230
    goto/16 :goto_a3

    .line 219
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressAdded(Ljava/lang/String;)V

    .line 222
    goto :goto_a3

    .line 211
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3f
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 212
    .local v2, "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    .line 214
    goto :goto_a3

    .line 203
    .end local v2    # "_arg0":Landroid/net/IpPrefix;
    :pswitch_4e
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 204
    .restart local v2    # "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    .line 206
    goto :goto_a3

    .line 195
    .end local v2    # "_arg0":Landroid/net/IpPrefix;
    :pswitch_5d
    sget-object v2, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanIdentity;

    .line 196
    .local v2, "_arg0":Landroid/net/lowpan/LowpanIdentity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    .line 198
    goto :goto_a3

    .line 187
    .end local v2    # "_arg0":Landroid/net/lowpan/LowpanIdentity;
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onStateChanged(Ljava/lang/String;)V

    .line 190
    goto :goto_a3

    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onRoleChanged(Ljava/lang/String;)V

    .line 182
    goto :goto_a3

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 172
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onUpChanged(Z)V

    .line 174
    goto :goto_a3

    .line 163
    .end local v2    # "_arg0":Z
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 164
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onConnectedChanged(Z)V

    .line 166
    goto :goto_a3

    .line 155
    .end local v2    # "_arg0":Z
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 156
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onEnabledChanged(Z)V

    .line 158
    nop

    .line 245
    .end local v2    # "_arg0":Z
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_98
        :pswitch_8d
        :pswitch_82
        :pswitch_77
        :pswitch_6c
        :pswitch_5d
        :pswitch_4e
        :pswitch_3f
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
