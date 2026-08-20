.class public abstract Lcom/android/internal/telecom/ICallDiagnosticService$Stub;
.super Landroid/os/Binder;
.source "ICallDiagnosticService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callQualityChanged:I = 0x7

.field static final blacklist TRANSACTION_initializeDiagnosticCall:I = 0x2

.field static final blacklist TRANSACTION_notifyCallDisconnected:I = 0x9

.field static final blacklist TRANSACTION_receiveBluetoothCallQualityReport:I = 0x8

.field static final blacklist TRANSACTION_receiveDeviceToDeviceMessage:I = 0x6

.field static final blacklist TRANSACTION_removeDiagnosticCall:I = 0x5

.field static final blacklist TRANSACTION_setAdapter:I = 0x1

.field static final blacklist TRANSACTION_updateCall:I = 0x3

.field static final blacklist TRANSACTION_updateCallAudioState:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallDiagnosticService;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallDiagnosticService;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v0, "notifyCallDisconnected"

    return-object v0

    .line 109
    :pswitch_9
    const-string/jumbo v0, "receiveBluetoothCallQualityReport"

    return-object v0

    .line 105
    :pswitch_d
    const-string v0, "callQualityChanged"

    return-object v0

    .line 101
    :pswitch_10
    const-string/jumbo v0, "receiveDeviceToDeviceMessage"

    return-object v0

    .line 97
    :pswitch_14
    const-string/jumbo v0, "removeDiagnosticCall"

    return-object v0

    .line 93
    :pswitch_18
    const-string/jumbo v0, "updateCallAudioState"

    return-object v0

    .line 89
    :pswitch_1c
    const-string/jumbo v0, "updateCall"

    return-object v0

    .line 85
    :pswitch_20
    const-string/jumbo v0, "initializeDiagnosticCall"

    return-object v0

    .line 81
    :pswitch_24
    const-string/jumbo v0, "setAdapter"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
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

    .line 369
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 128
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

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
    packed-switch p1, :pswitch_data_ae

    .line 140
    packed-switch p1, :pswitch_data_b4

    .line 224
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/DisconnectCause;

    .line 218
    .local v3, "_arg1":Landroid/telecom/DisconnectCause;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->notifyCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 220
    goto/16 :goto_ac

    .line 207
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/DisconnectCause;
    :pswitch_30
    sget-object v2, Landroid/telecom/BluetoothCallQualityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/BluetoothCallQualityReport;

    .line 208
    .local v2, "_arg0":Landroid/telecom/BluetoothCallQualityReport;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->receiveBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V

    .line 210
    goto :goto_ac

    .line 197
    .end local v2    # "_arg0":Landroid/telecom/BluetoothCallQualityReport;
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CallQuality;

    .line 200
    .local v3, "_arg1":Landroid/telephony/CallQuality;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->callQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V

    .line 202
    goto :goto_ac

    .line 185
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/CallQuality;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 190
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->receiveDeviceToDeviceMessage(Ljava/lang/String;II)V

    .line 192
    goto :goto_ac

    .line 177
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->removeDiagnosticCall(Ljava/lang/String;)V

    .line 180
    goto :goto_ac

    .line 169
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_70
    sget-object v2, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallAudioState;

    .line 170
    .local v2, "_arg0":Landroid/telecom/CallAudioState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->updateCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 172
    goto :goto_ac

    .line 161
    .end local v2    # "_arg0":Landroid/telecom/CallAudioState;
    :pswitch_7f
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    .line 162
    .local v2, "_arg0":Landroid/telecom/ParcelableCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    .line 164
    goto :goto_ac

    .line 153
    .end local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    :pswitch_8e
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    .line 154
    .restart local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->initializeDiagnosticCall(Landroid/telecom/ParcelableCall;)V

    .line 156
    goto :goto_ac

    .line 145
    .end local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    move-result-object v2

    .line 146
    .local v2, "_arg0":Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->setAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    .line 148
    nop

    .line 227
    .end local v2    # "_arg0":Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    :goto_ac
    return v1

    nop

    :pswitch_data_ae
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_8e
        :pswitch_7f
        :pswitch_70
        :pswitch_65
        :pswitch_52
        :pswitch_3f
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method
