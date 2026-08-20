.class public abstract Landroid/hardware/ISerialManager$Stub;
.super Landroid/os/Binder;
.source "ISerialManager.java"

# interfaces
.implements Landroid/hardware/ISerialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISerialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISerialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.ISerialManager"

.field static final greylist-max-o TRANSACTION_getSerialPorts:I = 0x1

.field static final greylist-max-o TRANSACTION_openSerialPort:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "android.hardware.ISerialManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ISerialManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/ISerialManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_4
    const-string v0, "android.hardware.ISerialManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ISerialManager;

    if-eqz v1, :cond_14

    .line 45
    move-object v1, v0

    check-cast v1, Landroid/hardware/ISerialManager;

    return-object v1

    .line 47
    :cond_14
    new-instance v1, Landroid/hardware/ISerialManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ISerialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 56
    packed-switch p0, :pswitch_data_c

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 64
    :pswitch_5
    const-string/jumbo v0, "openSerialPort"

    return-object v0

    .line 60
    :pswitch_9
    const-string v0, "getSerialPorts"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 180
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 181
    .local v0, "ctx":Landroid/content/Context;
    const-string v1, ""

    invoke-static {v0, p1, p2, p3, v1}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 51
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 75
    invoke-static {p1}, Landroid/hardware/ISerialManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const-string v0, "android.hardware.ISerialManager"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    packed-switch p1, :pswitch_data_72

    .line 91
    const-string v2, "Access denied, requires: android.Manifest.permission.SERIAL_PORT"

    const-string v3, "android.permission.SERIAL_PORT"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_78

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 87
    :pswitch_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 106
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingPid()I

    move-result v6

    new-instance v7, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8, v4, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v6, v7}, Landroid/hardware/ISerialManager$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v3

    if-ne v3, v1, :cond_46

    .line 111
    invoke-virtual {p0, v5}, Landroid/hardware/ISerialManager$Stub;->openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 112
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 114
    goto :goto_6a

    .line 109
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_46
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v5    # "_arg0":Ljava/lang/String;
    :pswitch_4c
    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingPid()I

    move-result v5

    new-instance v6, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7, v4, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v5, v6}, Landroid/hardware/ISerialManager$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v3

    if-ne v3, v1, :cond_6b

    .line 98
    invoke-virtual {p0}, Landroid/hardware/ISerialManager$Stub;->getSerialPorts()[Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 101
    nop

    .line 121
    .end local v2    # "_result":[Ljava/lang/String;
    :goto_6a
    return v1

    .line 96
    :cond_6b
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_72
    .packed-switch 0x5f4e5446
        :pswitch_1d
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_21
    .end packed-switch
.end method
