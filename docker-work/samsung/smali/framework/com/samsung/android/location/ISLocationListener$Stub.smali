.class public abstract Lcom/samsung/android/location/ISLocationListener$Stub;
.super Landroid/os/Binder;
.source "ISLocationListener.java"

# interfaces
.implements Lcom/samsung/android/location/ISLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/ISLocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onLocationAvailable:I = 0x1

.field static final blacklist TRANSACTION_onLocationChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.samsung.android.location.ISLocationListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/location/ISLocationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "com.samsung.android.location.ISLocationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/location/ISLocationListener;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/location/ISLocationListener;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Lcom/samsung/android/location/ISLocationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/location/ISLocationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 52
    packed-switch p0, :pswitch_data_c

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 60
    :pswitch_5
    const-string v0, "onLocationChanged"

    return-object v0

    .line 56
    :pswitch_8
    const-string v0, "onLocationAvailable"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 71
    invoke-static {p1}, Lcom/samsung/android/location/ISLocationListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 75
    const-string v0, "com.samsung.android.location.ISLocationListener"

    .line 76
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    :cond_d
    packed-switch p1, :pswitch_data_44

    .line 87
    packed-switch p1, :pswitch_data_4a

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 83
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 100
    :pswitch_1c
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 102
    .local v2, "_arg0":Landroid/location/Location;
    sget-object v3, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 103
    .local v3, "_arg1":Landroid/location/Address;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/location/ISLocationListener$Stub;->onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V

    .line 105
    goto :goto_42

    .line 92
    .end local v2    # "_arg0":Landroid/location/Location;
    .end local v3    # "_arg1":Landroid/location/Address;
    :pswitch_33
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/location/Location;

    .line 93
    .local v2, "_arg0":[Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2}, Lcom/samsung/android/location/ISLocationListener$Stub;->onLocationAvailable([Landroid/location/Location;)V

    .line 95
    nop

    .line 112
    .end local v2    # "_arg0":[Landroid/location/Location;
    :goto_42
    return v1

    nop

    :pswitch_data_44
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
