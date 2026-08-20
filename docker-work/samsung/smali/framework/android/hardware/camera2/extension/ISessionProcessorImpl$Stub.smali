.class public abstract Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;
.super Landroid/os/Binder;
.source "ISessionProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ISessionProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ISessionProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deInitSession:I = 0x2

.field static final blacklist TRANSACTION_initSession:I = 0x1

.field static final blacklist TRANSACTION_onCaptureSessionEnd:I = 0x4

.field static final blacklist TRANSACTION_onCaptureSessionStart:I = 0x3

.field static final blacklist TRANSACTION_setParameters:I = 0x8

.field static final blacklist TRANSACTION_startCapture:I = 0x7

.field static final blacklist TRANSACTION_startRepeating:I = 0x5

.field static final blacklist TRANSACTION_startTrigger:I = 0x9

.field static final blacklist TRANSACTION_stopRepeating:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_28

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 113
    :pswitch_5
    const-string/jumbo v0, "startTrigger"

    return-object v0

    .line 109
    :pswitch_9
    const-string/jumbo v0, "setParameters"

    return-object v0

    .line 105
    :pswitch_d
    const-string/jumbo v0, "startCapture"

    return-object v0

    .line 101
    :pswitch_11
    const-string/jumbo v0, "stopRepeating"

    return-object v0

    .line 97
    :pswitch_15
    const-string/jumbo v0, "startRepeating"

    return-object v0

    .line 93
    :pswitch_19
    const-string/jumbo v0, "onCaptureSessionEnd"

    return-object v0

    .line 89
    :pswitch_1d
    const-string/jumbo v0, "onCaptureSessionStart"

    return-object v0

    .line 85
    :pswitch_21
    const-string v0, "deInitSession"

    return-object v0

    .line 81
    :pswitch_24
    const-string v0, "initSession"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 406
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 128
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    .line 129
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_d
    packed-switch p1, :pswitch_data_c4

    .line 140
    packed-switch p1, :pswitch_data_ca

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 136
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 215
    :pswitch_1c
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 217
    .local v2, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object v3

    .line 218
    .local v3, "_arg1":Landroid/hardware/camera2/extension/ICaptureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v4

    .line 220
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    goto/16 :goto_c3

    .line 206
    .end local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/ICaptureCallback;
    .end local v4    # "_result":I
    :pswitch_3b
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 207
    .restart local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_c3

    .line 196
    .end local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object v2

    .line 197
    .local v2, "_arg0":Landroid/hardware/camera2/extension/ICaptureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v3

    .line 199
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    goto :goto_c3

    .line 189
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/ICaptureCallback;
    .end local v3    # "_result":I
    :pswitch_64
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->stopRepeating()V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_c3

    .line 180
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object v2

    .line 181
    .restart local v2    # "_arg0":Landroid/hardware/camera2/extension/ICaptureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v3

    .line 183
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    goto :goto_c3

    .line 173
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/ICaptureCallback;
    .end local v3    # "_result":I
    :pswitch_81
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->onCaptureSessionEnd()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_c3

    .line 165
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    move-result-object v2

    .line 166
    .local v2, "_arg0":Landroid/hardware/camera2/extension/IRequestProcessorImpl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_c3

    .line 158
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/IRequestProcessorImpl;
    :pswitch_9a
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->deInitSession()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_c3

    .line 145
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/OutputSurface;

    .line 149
    .local v3, "_arg1":Landroid/hardware/camera2/extension/OutputSurface;
    sget-object v4, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/OutputSurface;

    .line 150
    .local v4, "_arg2":Landroid/hardware/camera2/extension/OutputSurface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->initSession(Ljava/lang/String;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object v5

    .line 152
    .local v5, "_result":Landroid/hardware/camera2/extension/CameraSessionConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    nop

    .line 229
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/OutputSurface;
    .end local v4    # "_arg2":Landroid/hardware/camera2/extension/OutputSurface;
    .end local v5    # "_result":Landroid/hardware/camera2/extension/CameraSessionConfig;
    :goto_c3
    return v1

    :pswitch_data_c4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_9a
        :pswitch_88
        :pswitch_81
        :pswitch_6b
        :pswitch_64
        :pswitch_4e
        :pswitch_3b
        :pswitch_1c
    .end packed-switch
.end method
