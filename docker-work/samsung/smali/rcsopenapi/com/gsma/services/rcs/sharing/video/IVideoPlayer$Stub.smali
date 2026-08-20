.class public abstract Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;
.super Landroid/os/Binder;
.source "IVideoPlayer.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCodec:I = 0x2

.field static final TRANSACTION_getLocalRtpPort:I = 0x1

.field static final TRANSACTION_getSupportedCodecs:I = 0x3

.field static final TRANSACTION_setRemoteInfo:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoPlayer"

    .line 61
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 62
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    :cond_d
    packed-switch p1, :pswitch_data_5c

    .line 72
    packed-switch p1, :pswitch_data_62

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 68
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 98
    :pswitch_1c
    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    .line 100
    .local v2, "_arg0":Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 105
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;->setRemoteInfo(Lcom/gsma/services/rcs/sharing/video/VideoCodec;Ljava/lang/String;II)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto :goto_5b

    .line 90
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_3a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;->getSupportedCodecs()[Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    move-result-object v2

    .line 91
    .local v2, "_result":[Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 93
    goto :goto_5b

    .line 83
    .end local v2    # "_result":[Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    :pswitch_45
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;->getCodec()Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    move-result-object v2

    .line 84
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 86
    goto :goto_5b

    .line 76
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    :pswitch_50
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;->getLocalRtpPort()I

    move-result v2

    .line 77
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    nop

    .line 115
    .end local v2    # "_result":I
    :goto_5b
    return v1

    :pswitch_data_5c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_50
        :pswitch_45
        :pswitch_3a
        :pswitch_1c
    .end packed-switch
.end method
