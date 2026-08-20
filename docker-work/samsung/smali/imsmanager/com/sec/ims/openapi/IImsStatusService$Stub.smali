.class public abstract Lcom/sec/ims/openapi/IImsStatusService$Stub;
.super Landroid/os/Binder;
.source "IImsStatusService.java"

# interfaces
.implements Lcom/sec/ims/openapi/IImsStatusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/openapi/IImsStatusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/openapi/IImsStatusService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCallCount:I = 0x5

.field static final TRANSACTION_registerImsCallEventListener:I = 0x3

.field static final TRANSACTION_registerImsRegistrationListener:I = 0x1

.field static final TRANSACTION_unregisterImsCallEventListener:I = 0x4

.field static final TRANSACTION_unregisterImsRegistrationListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.sec.ims.openapi.IImsStatusService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/openapi/IImsStatusService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/openapi/IImsStatusService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.sec.ims.openapi.IImsStatusService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/openapi/IImsStatusService;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/openapi/IImsStatusService;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/sec/ims/openapi/IImsStatusService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/openapi/IImsStatusService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 60
    const-string v0, "com.sec.ims.openapi.IImsStatusService"

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
    packed-switch p1, :pswitch_data_70

    .line 72
    packed-switch p1, :pswitch_data_76

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 68
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 112
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/ims/openapi/IImsStatusService$Stub;->getCallCount()[I

    move-result-object v2

    .line 113
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 115
    goto :goto_6f

    .line 104
    .end local v2    # "_result":[I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v2

    .line 105
    .local v2, "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IImsStatusService$Stub;->unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto :goto_6f

    .line 95
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v2

    .line 96
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IImsStatusService$Stub;->registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    goto :goto_6f

    .line 86
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 87
    .local v2, "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IImsStatusService$Stub;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    goto :goto_6f

    .line 77
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 78
    .restart local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 79
    invoke-virtual {p0, v2}, Lcom/sec/ims/openapi/IImsStatusService$Stub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    nop

    .line 122
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    :goto_6f
    return v1

    :pswitch_data_70
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
