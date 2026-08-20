.class public abstract Lcom/android/internal/telecom/IVideoProvider$Stub;
.super Landroid/os/Binder;
.source "IVideoProvider.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoProvider"

.field static final greylist-max-o TRANSACTION_addVideoCallback:I = 0x1

.field static final greylist-max-o TRANSACTION_removeVideoCallback:I = 0x2

.field static final greylist-max-o TRANSACTION_requestCallDataUsage:I = 0xb

.field static final greylist-max-o TRANSACTION_requestCameraCapabilities:I = 0xa

.field static final greylist-max-o TRANSACTION_sendSessionModifyRequest:I = 0x8

.field static final greylist-max-o TRANSACTION_sendSessionModifyResponse:I = 0x9

.field static final greylist-max-o TRANSACTION_setCamera:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceOrientation:I = 0x6

.field static final greylist-max-o TRANSACTION_setDisplaySurface:I = 0x5

.field static final greylist-max-o TRANSACTION_setPauseImage:I = 0xc

.field static final greylist-max-o TRANSACTION_setPreviewSurface:I = 0x4

.field static final greylist-max-o TRANSACTION_setZoom:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "com.android.internal.telecom.IVideoProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IVideoProvider;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_34

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 134
    :pswitch_5
    const-string/jumbo v0, "setPauseImage"

    return-object v0

    .line 130
    :pswitch_9
    const-string/jumbo v0, "requestCallDataUsage"

    return-object v0

    .line 126
    :pswitch_d
    const-string/jumbo v0, "requestCameraCapabilities"

    return-object v0

    .line 122
    :pswitch_11
    const-string/jumbo v0, "sendSessionModifyResponse"

    return-object v0

    .line 118
    :pswitch_15
    const-string/jumbo v0, "sendSessionModifyRequest"

    return-object v0

    .line 114
    :pswitch_19
    const-string/jumbo v0, "setZoom"

    return-object v0

    .line 110
    :pswitch_1d
    const-string/jumbo v0, "setDeviceOrientation"

    return-object v0

    .line 106
    :pswitch_21
    const-string/jumbo v0, "setDisplaySurface"

    return-object v0

    .line 102
    :pswitch_25
    const-string/jumbo v0, "setPreviewSurface"

    return-object v0

    .line 98
    :pswitch_29
    const-string/jumbo v0, "setCamera"

    return-object v0

    .line 94
    :pswitch_2d
    const-string/jumbo v0, "removeVideoCallback"

    return-object v0

    .line 90
    :pswitch_31
    const-string v0, "addVideoCallback"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 443
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 145
    invoke-static {p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 149
    const-string v0, "com.android.internal.telecom.IVideoProvider"

    .line 150
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_d
    packed-switch p1, :pswitch_data_bc

    .line 161
    packed-switch p1, :pswitch_data_c2

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 157
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v1

    .line 254
    :pswitch_1c
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 255
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    .line 257
    goto/16 :goto_ba

    .line 248
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCallDataUsage()V

    .line 249
    goto/16 :goto_ba

    .line 243
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCameraCapabilities()V

    .line 244
    goto/16 :goto_ba

    .line 236
    :pswitch_36
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 237
    .local v2, "_arg0":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 239
    goto/16 :goto_ba

    .line 226
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    :pswitch_46
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 228
    .restart local v2    # "_arg0":Landroid/telecom/VideoProfile;
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 229
    .local v3, "_arg1":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 231
    goto :goto_ba

    .line 218
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    .end local v3    # "_arg1":Landroid/telecom/VideoProfile;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 219
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setZoom(F)V

    .line 221
    goto :goto_ba

    .line 210
    .end local v2    # "_arg0":F
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDeviceOrientation(I)V

    .line 213
    goto :goto_ba

    .line 202
    .end local v2    # "_arg0":I
    :pswitch_73
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 203
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    .line 205
    goto :goto_ba

    .line 194
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_82
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 195
    .restart local v2    # "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    .line 197
    goto :goto_ba

    .line 182
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 187
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    goto :goto_ba

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 175
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->removeVideoCallback(Landroid/os/IBinder;)V

    .line 177
    goto :goto_ba

    .line 166
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 167
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->addVideoCallback(Landroid/os/IBinder;)V

    .line 169
    nop

    .line 264
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :goto_ba
    return v1

    nop

    :pswitch_data_bc
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_af
        :pswitch_a4
        :pswitch_91
        :pswitch_82
        :pswitch_73
        :pswitch_68
        :pswitch_5d
        :pswitch_46
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
