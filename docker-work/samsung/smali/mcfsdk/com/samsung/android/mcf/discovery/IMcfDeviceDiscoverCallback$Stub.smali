.class public abstract Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onDeviceDiscovered:I = 0x1

.field public static final TRANSACTION_onDeviceRemoved:I = 0x2

.field public static final TRANSACTION_onDiscoveryStarted:I = 0x3

.field public static final TRANSACTION_onDiscoveryStopped:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4a

    packed-switch p1, :pswitch_data_4e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDiscoveryStopped(I)V

    goto :goto_49

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDiscoveryStarted(I)V

    goto :goto_49

    :pswitch_2a
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDeviceRemoved(Landroid/os/PersistableBundle;I)V

    goto :goto_49

    :pswitch_3a
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDeviceDiscovered(Landroid/os/PersistableBundle;I)V

    :goto_49
    return v0

    :cond_4a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
    .end packed-switch
.end method
