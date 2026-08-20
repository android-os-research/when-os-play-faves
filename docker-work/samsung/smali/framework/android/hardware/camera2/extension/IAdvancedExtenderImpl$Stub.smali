.class public abstract Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IAdvancedExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAvailableCaptureRequestKeys:I = 0x7

.field static final blacklist TRANSACTION_getAvailableCaptureResultKeys:I = 0x8

.field static final blacklist TRANSACTION_getEstimatedCaptureLatencyRange:I = 0x3

.field static final blacklist TRANSACTION_getSessionProcessor:I = 0x6

.field static final blacklist TRANSACTION_getSupportedCaptureOutputResolutions:I = 0x5

.field static final blacklist TRANSACTION_getSupportedPreviewOutputResolutions:I = 0x4

.field static final blacklist TRANSACTION_init:I = 0x2

.field static final blacklist TRANSACTION_isExtensionAvailable:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_1e

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_5
    const-string v0, "getAvailableCaptureResultKeys"

    return-object v0

    .line 105
    :pswitch_8
    const-string v0, "getAvailableCaptureRequestKeys"

    return-object v0

    .line 101
    :pswitch_b
    const-string v0, "getSessionProcessor"

    return-object v0

    .line 97
    :pswitch_e
    const-string v0, "getSupportedCaptureOutputResolutions"

    return-object v0

    .line 93
    :pswitch_11
    const-string v0, "getSupportedPreviewOutputResolutions"

    return-object v0

    .line 89
    :pswitch_14
    const-string v0, "getEstimatedCaptureLatencyRange"

    return-object v0

    .line 85
    :pswitch_17
    const-string v0, "init"

    return-object v0

    .line 81
    :pswitch_1a
    const-string v0, "isExtensionAvailable"

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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 394
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 124
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_d
    packed-switch p1, :pswitch_data_b0

    .line 136
    packed-switch p1, :pswitch_data_b6

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 132
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 211
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 214
    .local v3, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto/16 :goto_ae

    .line 201
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 204
    .restart local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_ae

    .line 193
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_41
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object v2

    .line 194
    .local v2, "_result":Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 196
    goto :goto_ae

    .line 184
    .end local v2    # "_result":Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 187
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 189
    goto :goto_ae

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 177
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 179
    goto :goto_ae

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/Size;

    .line 164
    .local v3, "_arg1":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    .line 167
    .local v5, "_result":Landroid/hardware/camera2/extension/LatencyRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    goto :goto_ae

    .line 151
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/Size;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/hardware/camera2/extension/LatencyRange;
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->init(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_ae

    .line 141
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;)Z

    move-result v3

    .line 144
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    nop

    .line 223
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :goto_ae
    return v1

    nop

    :pswitch_data_b0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_8e
        :pswitch_70
        :pswitch_5e
        :pswitch_4c
        :pswitch_41
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
