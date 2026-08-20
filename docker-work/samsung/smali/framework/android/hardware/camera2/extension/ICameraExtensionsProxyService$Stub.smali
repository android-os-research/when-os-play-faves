.class public abstract Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;
.super Landroid/os/Binder;
.source "ICameraExtensionsProxyService.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_advancedExtensionsSupported:I = 0x3

.field static final blacklist TRANSACTION_initializeAdvancedExtension:I = 0x8

.field static final blacklist TRANSACTION_initializeImageExtension:I = 0x7

.field static final blacklist TRANSACTION_initializePreviewExtension:I = 0x6

.field static final blacklist TRANSACTION_initializeSession:I = 0x4

.field static final blacklist TRANSACTION_registerClient:I = 0x1

.field static final blacklist TRANSACTION_releaseSession:I = 0x5

.field static final blacklist TRANSACTION_unregisterClient:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_14

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    return-object v1

    .line 66
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_20

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string v0, "initializeAdvancedExtension"

    return-object v0

    .line 103
    :pswitch_8
    const-string v0, "initializeImageExtension"

    return-object v0

    .line 99
    :pswitch_b
    const-string v0, "initializePreviewExtension"

    return-object v0

    .line 95
    :pswitch_e
    const-string/jumbo v0, "releaseSession"

    return-object v0

    .line 91
    :pswitch_12
    const-string v0, "initializeSession"

    return-object v0

    .line 87
    :pswitch_15
    const-string v0, "advancedExtensionsSupported"

    return-object v0

    .line 83
    :pswitch_18
    const-string/jumbo v0, "unregisterClient"

    return-object v0

    .line 79
    :pswitch_1c
    const-string/jumbo v0, "registerClient"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 370
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    packed-switch p1, :pswitch_data_90

    .line 134
    packed-switch p1, :pswitch_data_96

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 197
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    .line 200
    .local v3, "_result":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 202
    goto :goto_8f

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v3

    .line 190
    .local v3, "_result":Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 192
    goto :goto_8f

    .line 177
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v3

    .line 180
    .local v3, "_result":Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 182
    goto :goto_8f

    .line 170
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    :pswitch_52
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->releaseSession()V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_8f

    .line 162
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    move-result-object v2

    .line 163
    .local v2, "_arg0":Landroid/hardware/camera2/extension/IInitializeSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_8f

    .line 154
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/IInitializeSessionCallback;
    :pswitch_6b
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->advancedExtensionsSupported()Z

    move-result v2

    .line 155
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    goto :goto_8f

    .line 146
    .end local v2    # "_result":Z
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 147
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->unregisterClient(J)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_8f

    .line 138
    .end local v2    # "_arg0":J
    :pswitch_84
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->registerClient()J

    move-result-wide v2

    .line 139
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    nop

    .line 209
    .end local v2    # "_result":J
    :goto_8f
    return v1

    :pswitch_data_90
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_84
        :pswitch_76
        :pswitch_6b
        :pswitch_59
        :pswitch_52
        :pswitch_40
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
