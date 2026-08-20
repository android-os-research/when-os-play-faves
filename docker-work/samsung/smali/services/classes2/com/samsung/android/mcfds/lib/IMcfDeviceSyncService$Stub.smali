.class public abstract Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;
.super Landroid/os/Binder;
.source "IMcfDeviceSyncService.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_internalCommand:I = 0x1

.field public static final TRANSACTION_internalCommandWithReturnValue:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    .line 33
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    .line 44
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 45
    instance-of v1, v0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    return-object v0

    .line 48
    :cond_13
    new-instance v0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 58
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4a

    if-eq p1, v0, :cond_37

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 82
    :cond_1c
    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    .line 84
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 85
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I

    move-result p0

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    # invokes: Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, p2, v0}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_49

    .line 73
    :cond_37
    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    .line 74
    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;->internalCommand(Landroid/os/Message;)I

    move-result p0

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_49
    return v0

    .line 64
    :cond_4a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
