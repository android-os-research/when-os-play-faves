.class public abstract Landroid/hardware/location/IContextHubClientCallback$Stub;
.super Landroid/os/Binder;
.source "IContextHubClientCallback.java"

# interfaces
.implements Landroid/hardware/location/IContextHubClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubClientCallback"

.field static final blacklist TRANSACTION_onClientAuthorizationChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_onHubReset:I = 0x2

.field static final greylist-max-o TRANSACTION_onMessageFromNanoApp:I = 0x1

.field static final greylist-max-o TRANSACTION_onNanoAppAborted:I = 0x3

.field static final greylist-max-o TRANSACTION_onNanoAppDisabled:I = 0x7

.field static final greylist-max-o TRANSACTION_onNanoAppEnabled:I = 0x6

.field static final greylist-max-o TRANSACTION_onNanoAppLoaded:I = 0x4

.field static final greylist-max-o TRANSACTION_onNanoAppUnloaded:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubClientCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClientCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IContextHubClientCallback;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IContextHubClientCallback;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_1e

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_5
    const-string v0, "onClientAuthorizationChanged"

    return-object v0

    .line 111
    :pswitch_8
    const-string v0, "onNanoAppDisabled"

    return-object v0

    .line 107
    :pswitch_b
    const-string v0, "onNanoAppEnabled"

    return-object v0

    .line 103
    :pswitch_e
    const-string v0, "onNanoAppUnloaded"

    return-object v0

    .line 99
    :pswitch_11
    const-string v0, "onNanoAppLoaded"

    return-object v0

    .line 95
    :pswitch_14
    const-string v0, "onNanoAppAborted"

    return-object v0

    .line 91
    :pswitch_17
    const-string v0, "onHubReset"

    return-object v0

    .line 87
    :pswitch_1a
    const-string v0, "onMessageFromNanoApp"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 349
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 130
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    packed-switch p1, :pswitch_data_7a

    .line 142
    packed-switch p1, :pswitch_data_80

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 202
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 204
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 205
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onClientAuthorizationChanged(JI)V

    .line 207
    goto :goto_79

    .line 194
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 195
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppDisabled(J)V

    .line 197
    goto :goto_79

    .line 186
    .end local v2    # "_arg0":J
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 187
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppEnabled(J)V

    .line 189
    goto :goto_79

    .line 178
    .end local v2    # "_arg0":J
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 179
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppUnloaded(J)V

    .line 181
    goto :goto_79

    .line 170
    .end local v2    # "_arg0":J
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 171
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppLoaded(J)V

    .line 173
    goto :goto_79

    .line 160
    .end local v2    # "_arg0":J
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 162
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 163
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppAborted(JI)V

    .line 165
    goto :goto_79

    .line 154
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_66
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onHubReset()V

    .line 155
    goto :goto_79

    .line 147
    :pswitch_6a
    sget-object v2, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppMessage;

    .line 148
    .local v2, "_arg0":Landroid/hardware/location/NanoAppMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V

    .line 150
    nop

    .line 214
    .end local v2    # "_arg0":Landroid/hardware/location/NanoAppMessage;
    :goto_79
    return v1

    :pswitch_data_7a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_66
        :pswitch_57
        :pswitch_4c
        :pswitch_41
        :pswitch_36
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
