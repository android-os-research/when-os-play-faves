.class public abstract Landroid/media/IPlayer$Stub;
.super Landroid/os/Binder;
.source "IPlayer.java"

# interfaces
.implements Landroid/media/IPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IPlayer"

.field static final greylist-max-o TRANSACTION_applyVolumeShaper:I = 0x7

.field static final greylist-max-o TRANSACTION_pause:I = 0x2

.field static final greylist-max-o TRANSACTION_setPan:I = 0x5

.field static final greylist-max-o TRANSACTION_setStartDelayMs:I = 0x6

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x4

.field static final greylist-max-o TRANSACTION_start:I = 0x1

.field static final greylist-max-o TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.media.IPlayer"

    invoke-virtual {p0, p0, v0}, Landroid/media/IPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.media.IPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IPlayer;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/media/IPlayer;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/media/IPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_1e

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 95
    :pswitch_5
    const-string v0, "applyVolumeShaper"

    return-object v0

    .line 91
    :pswitch_8
    const-string/jumbo v0, "setStartDelayMs"

    return-object v0

    .line 87
    :pswitch_c
    const-string v0, "setPan"

    return-object v0

    .line 83
    :pswitch_f
    const-string/jumbo v0, "setVolume"

    return-object v0

    .line 79
    :pswitch_13
    const-string/jumbo v0, "stop"

    return-object v0

    .line 75
    :pswitch_17
    const-string v0, "pause"

    return-object v0

    .line 71
    :pswitch_1a
    const-string/jumbo v0, "start"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 289
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 106
    invoke-static {p1}, Landroid/media/IPlayer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const-string v0, "android.media.IPlayer"

    .line 111
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    :cond_d
    packed-switch p1, :pswitch_data_62

    .line 122
    packed-switch p1, :pswitch_data_68

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 118
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 166
    :pswitch_1c
    sget-object v2, Landroid/media/VolumeShaperConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/VolumeShaperConfiguration;

    .line 168
    .local v2, "_arg0":Landroid/media/VolumeShaperConfiguration;
    sget-object v3, Landroid/media/VolumeShaperOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/VolumeShaperOperation;

    .line 169
    .local v3, "_arg1":Landroid/media/VolumeShaperOperation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Landroid/media/IPlayer$Stub;->applyVolumeShaper(Landroid/media/VolumeShaperConfiguration;Landroid/media/VolumeShaperOperation;)V

    .line 171
    goto :goto_60

    .line 158
    .end local v2    # "_arg0":Landroid/media/VolumeShaperConfiguration;
    .end local v3    # "_arg1":Landroid/media/VolumeShaperOperation;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Landroid/media/IPlayer$Stub;->setStartDelayMs(I)V

    .line 161
    goto :goto_60

    .line 150
    .end local v2    # "_arg0":I
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 151
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/media/IPlayer$Stub;->setPan(F)V

    .line 153
    goto :goto_60

    .line 142
    .end local v2    # "_arg0":F
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 143
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/media/IPlayer$Stub;->setVolume(F)V

    .line 145
    goto :goto_60

    .line 136
    .end local v2    # "_arg0":F
    :pswitch_54
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->stop()V

    .line 137
    goto :goto_60

    .line 131
    :pswitch_58
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->pause()V

    .line 132
    goto :goto_60

    .line 126
    :pswitch_5c
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->start()V

    .line 127
    nop

    .line 178
    :goto_60
    return v1

    nop

    :pswitch_data_62
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_49
        :pswitch_3e
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
