.class public abstract Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;
.super Landroid/os/Binder;
.source "IAudioConfigChangedCallback.java"

# interfaces
.implements Landroid/companion/virtual/audio/IAudioConfigChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onPlaybackConfigChanged:I = 0x1

.field static final blacklist TRANSACTION_onRecordingConfigChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.companion.virtual.audio.IAudioConfigChangedCallback"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.companion.virtual.audio.IAudioConfigChangedCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_e

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 72
    :pswitch_5
    const-string/jumbo v0, "onRecordingConfigChanged"

    return-object v0

    .line 68
    :pswitch_9
    const-string/jumbo v0, "onPlaybackConfigChanged"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 83
    invoke-static {p1}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 87
    const-string v0, "android.companion.virtual.audio.IAudioConfigChangedCallback"

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    :cond_d
    packed-switch p1, :pswitch_data_38

    .line 99
    packed-switch p1, :pswitch_data_3e

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 112
    :pswitch_1c
    sget-object v2, Landroid/media/AudioRecordingConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->onRecordingConfigChanged(Ljava/util/List;)V

    .line 115
    goto :goto_36

    .line 104
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :pswitch_29
    sget-object v2, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 105
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 107
    nop

    .line 122
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :goto_36
    return v1

    nop

    :pswitch_data_38
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_1c
    .end packed-switch
.end method
