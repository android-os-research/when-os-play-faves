.class public abstract Lcom/sec/ims/openapi/IOpenApiService$Stub;
.super Landroid/os/Binder;
.source "IOpenApiService.java"

# interfaces
.implements Lcom/sec/ims/openapi/IOpenApiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/openapi/IOpenApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/openapi/IOpenApiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerDialogEventListener:I = 0x6

.field static final TRANSACTION_registerImsCallEventListener:I = 0x4

.field static final TRANSACTION_registerImsRegistrationListener:I = 0x8

.field static final TRANSACTION_registerIncomingSipMessageListener:I = 0x2

.field static final TRANSACTION_sendSip:I = 0xa

.field static final TRANSACTION_setFeatureTags:I = 0x1

.field static final TRANSACTION_setupMediaPath:I = 0xb

.field static final TRANSACTION_unregisterDialogEventListener:I = 0x7

.field static final TRANSACTION_unregisterImsCallEventListener:I = 0x5

.field static final TRANSACTION_unregisterImsRegistrationListener:I = 0x9

.field static final TRANSACTION_unregisterIncomingSipMessageListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "com.sec.ims.openapi.IOpenApiService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/openapi/IOpenApiService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "com.sec.ims.openapi.IOpenApiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/openapi/IOpenApiService;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/openapi/IOpenApiService;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Lcom/sec/ims/openapi/IOpenApiService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/openapi/IOpenApiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 74
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

    .line 78
    const-string v0, "com.sec.ims.openapi.IOpenApiService"

    .line 79
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    :cond_d
    packed-switch p1, :pswitch_data_f0

    .line 90
    packed-switch p1, :pswitch_data_f6

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 86
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 190
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->setupMediaPath([Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto/16 :goto_ee

    .line 176
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_2b
    sget-object v2, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 178
    .local v2, "_arg0":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/openapi/ISipDialogListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/openapi/ISipDialogListener;

    move-result-object v4

    .line 181
    .local v4, "_arg2":Lcom/sec/ims/openapi/ISipDialogListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->sendSip(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z

    move-result v5

    .line 183
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 185
    goto/16 :goto_ee

    .line 167
    .end local v2    # "_arg0":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/sec/ims/openapi/ISipDialogListener;
    .end local v5    # "_result":Z
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 168
    .local v2, "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto/16 :goto_ee

    .line 158
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 159
    .restart local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto/16 :goto_ee

    .line 149
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object v2

    .line 150
    .local v2, "_arg0":Lcom/sec/ims/IDialogEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_ee

    .line 140
    .end local v2    # "_arg0":Lcom/sec/ims/IDialogEventListener;
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":Lcom/sec/ims/IDialogEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_ee

    .line 131
    .end local v2    # "_arg0":Lcom/sec/ims/IDialogEventListener;
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v2

    .line 132
    .local v2, "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_ee

    .line 122
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v2

    .line 123
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_ee

    .line 113
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/openapi/ISipDialogListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/openapi/ISipDialogListener;

    move-result-object v2

    .line 114
    .local v2, "_arg0":Lcom/sec/ims/openapi/ISipDialogListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto :goto_ee

    .line 104
    .end local v2    # "_arg0":Lcom/sec/ims/openapi/ISipDialogListener;
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/openapi/ISipDialogListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/openapi/ISipDialogListener;

    move-result-object v2

    .line 105
    .restart local v2    # "_arg0":Lcom/sec/ims/openapi/ISipDialogListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto :goto_ee

    .line 95
    .end local v2    # "_arg0":Lcom/sec/ims/openapi/ISipDialogListener;
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IOpenApiService$Stub;->setFeatureTags([Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    nop

    .line 201
    .end local v2    # "_arg0":[Ljava/lang/String;
    :goto_ee
    return v1

    nop

    :pswitch_data_f0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_ce
        :pswitch_bc
        :pswitch_aa
        :pswitch_98
        :pswitch_86
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
