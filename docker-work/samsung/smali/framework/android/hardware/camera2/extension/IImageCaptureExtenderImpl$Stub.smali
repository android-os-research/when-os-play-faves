.class public abstract Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IImageCaptureExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAvailableCaptureRequestKeys:I = 0xd

.field static final blacklist TRANSACTION_getAvailableCaptureResultKeys:I = 0xe

.field static final blacklist TRANSACTION_getCaptureProcessor:I = 0x8

.field static final blacklist TRANSACTION_getCaptureStages:I = 0x9

.field static final blacklist TRANSACTION_getEstimatedCaptureLatencyRange:I = 0xc

.field static final blacklist TRANSACTION_getMaxCaptureStage:I = 0xa

.field static final blacklist TRANSACTION_getSupportedResolutions:I = 0xb

.field static final blacklist TRANSACTION_init:I = 0x7

.field static final blacklist TRANSACTION_isExtensionAvailable:I = 0x6

.field static final blacklist TRANSACTION_onDeInit:I = 0x2

.field static final blacklist TRANSACTION_onDisableSession:I = 0x5

.field static final blacklist TRANSACTION_onEnableSession:I = 0x4

.field static final blacklist TRANSACTION_onInit:I = 0x1

.field static final blacklist TRANSACTION_onPresetSession:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.hardware.camera2.extension.IImageCaptureExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IImageCaptureExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    if-eqz v1, :cond_14

    .line 88
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    return-object v1

    .line 90
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 99
    packed-switch p0, :pswitch_data_34

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 155
    :pswitch_5
    const-string v0, "getAvailableCaptureResultKeys"

    return-object v0

    .line 151
    :pswitch_8
    const-string v0, "getAvailableCaptureRequestKeys"

    return-object v0

    .line 147
    :pswitch_b
    const-string v0, "getEstimatedCaptureLatencyRange"

    return-object v0

    .line 143
    :pswitch_e
    const-string v0, "getSupportedResolutions"

    return-object v0

    .line 139
    :pswitch_11
    const-string v0, "getMaxCaptureStage"

    return-object v0

    .line 135
    :pswitch_14
    const-string v0, "getCaptureStages"

    return-object v0

    .line 131
    :pswitch_17
    const-string v0, "getCaptureProcessor"

    return-object v0

    .line 127
    :pswitch_1a
    const-string v0, "init"

    return-object v0

    .line 123
    :pswitch_1d
    const-string v0, "isExtensionAvailable"

    return-object v0

    .line 119
    :pswitch_20
    const-string/jumbo v0, "onDisableSession"

    return-object v0

    .line 115
    :pswitch_24
    const-string/jumbo v0, "onEnableSession"

    return-object v0

    .line 111
    :pswitch_28
    const-string/jumbo v0, "onPresetSession"

    return-object v0

    .line 107
    :pswitch_2c
    const-string/jumbo v0, "onDeInit"

    return-object v0

    .line 103
    :pswitch_30
    const-string/jumbo v0, "onInit"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
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

    .line 94
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 573
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 166
    invoke-static {p1}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 170
    const-string v0, "android.hardware.camera2.extension.IImageCaptureExtenderImpl"

    .line 171
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 172
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    :cond_d
    packed-switch p1, :pswitch_data_ea

    .line 182
    packed-switch p1, :pswitch_data_f0

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 178
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v1

    .line 292
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getAvailableCaptureResultKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 293
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    goto/16 :goto_e8

    .line 285
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getAvailableCaptureRequestKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 286
    .restart local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 288
    goto/16 :goto_e8

    .line 276
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_34
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    .line 277
    .local v2, "_arg0":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getEstimatedCaptureLatencyRange(Landroid/hardware/camera2/extension/Size;)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v3

    .line 279
    .local v3, "_result":Landroid/hardware/camera2/extension/LatencyRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 281
    goto/16 :goto_e8

    .line 268
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Size;
    .end local v3    # "_result":Landroid/hardware/camera2/extension/LatencyRange;
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getSupportedResolutions()Ljava/util/List;

    move-result-object v2

    .line 269
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 271
    goto/16 :goto_e8

    .line 261
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_57
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getMaxCaptureStage()I

    move-result v2

    .line 262
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    goto/16 :goto_e8

    .line 254
    .end local v2    # "_result":I
    :pswitch_63
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getCaptureStages()Ljava/util/List;

    move-result-object v2

    .line 255
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 257
    goto/16 :goto_e8

    .line 247
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    :pswitch_6f
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v2

    .line 248
    .local v2, "_result":Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 250
    goto :goto_e8

    .line 237
    .end local v2    # "_result":Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 240
    .local v3, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto :goto_e8

    .line 225
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 228
    .restart local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    .line 230
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    goto :goto_e8

    .line 217
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_result":Z
    :pswitch_aa
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 218
    .local v2, "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 220
    goto :goto_e8

    .line 210
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_b5
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 211
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    goto :goto_e8

    .line 203
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_c0
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 204
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_e8

    .line 197
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_cb
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onDeInit()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_e8

    .line 187
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 190
    .restart local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    nop

    .line 302
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_e8
    return v1

    nop

    :pswitch_data_ea
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_cb
        :pswitch_c0
        :pswitch_b5
        :pswitch_aa
        :pswitch_90
        :pswitch_7a
        :pswitch_6f
        :pswitch_63
        :pswitch_57
        :pswitch_4b
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
