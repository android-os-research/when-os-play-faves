.class public abstract Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceCallbacks.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceCallbacks"

.field static final greylist-max-o TRANSACTION_onCaptureStarted:I = 0x3

.field static final greylist-max-o TRANSACTION_onDeviceError:I = 0x1

.field static final greylist-max-o TRANSACTION_onDeviceIdle:I = 0x2

.field static final greylist-max-o TRANSACTION_onPrepared:I = 0x5

.field static final greylist-max-o TRANSACTION_onRepeatingRequestError:I = 0x6

.field static final greylist-max-o TRANSACTION_onRequestQueueEmpty:I = 0x7

.field static final greylist-max-o TRANSACTION_onResultReceived:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceCallbacks;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/ICameraDeviceCallbacks;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_22

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string/jumbo v0, "onRequestQueueEmpty"

    return-object v0

    .line 98
    :pswitch_9
    const-string/jumbo v0, "onRepeatingRequestError"

    return-object v0

    .line 94
    :pswitch_d
    const-string/jumbo v0, "onPrepared"

    return-object v0

    .line 90
    :pswitch_11
    const-string/jumbo v0, "onResultReceived"

    return-object v0

    .line 86
    :pswitch_15
    const-string/jumbo v0, "onCaptureStarted"

    return-object v0

    .line 82
    :pswitch_19
    const-string/jumbo v0, "onDeviceIdle"

    return-object v0

    .line 78
    :pswitch_1d
    const-string/jumbo v0, "onDeviceError"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
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

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 319
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 117
    const-string v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    packed-switch p1, :pswitch_data_84

    .line 129
    packed-switch p1, :pswitch_data_8a

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 188
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onRequestQueueEmpty()V

    .line 189
    goto :goto_83

    .line 179
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 181
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onRepeatingRequestError(JI)V

    .line 184
    goto :goto_83

    .line 171
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onPrepared(I)V

    .line 174
    goto :goto_83

    .line 159
    .end local v2    # "_arg0":I
    :pswitch_3a
    sget-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 161
    .local v2, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v3, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 163
    .local v3, "_arg1":Landroid/hardware/camera2/impl/CaptureResultExtras;
    sget-object v4, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 164
    .local v4, "_arg2":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 166
    goto :goto_83

    .line 149
    .end local v2    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local v4    # "_arg2":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :pswitch_59
    sget-object v2, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 151
    .local v2, "_arg0":Landroid/hardware/camera2/impl/CaptureResultExtras;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 152
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    .line 154
    goto :goto_83

    .line 143
    .end local v2    # "_arg0":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local v3    # "_arg1":J
    :pswitch_6c
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onDeviceIdle()V

    .line 144
    goto :goto_83

    .line 134
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 137
    .local v3, "_arg1":Landroid/hardware/camera2/impl/CaptureResultExtras;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 139
    nop

    .line 196
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_83
    return v1

    :pswitch_data_84
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6c
        :pswitch_59
        :pswitch_3a
        :pswitch_2f
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
