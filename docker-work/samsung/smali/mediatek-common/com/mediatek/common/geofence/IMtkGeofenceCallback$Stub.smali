.class public abstract Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub;
.super Landroid/os/Binder;
.source "IMtkGeofenceCallback.java"

# interfaces
.implements Lcom/mediatek/common/geofence/IMtkGeofenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/geofence/IMtkGeofenceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onGeofenceAdd:I = 0x2

.field static final blacklist TRANSACTION_onGeofencePause:I = 0x4

.field static final blacklist TRANSACTION_onGeofenceRemove:I = 0x3

.field static final blacklist TRANSACTION_onGeofenceResume:I = 0x5

.field static final blacklist TRANSACTION_onGeofenceTransition:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.mediatek.common.geofence.IMtkGeofenceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/geofence/IMtkGeofenceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "com.mediatek.common.geofence.IMtkGeofenceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/geofence/IMtkGeofenceCallback;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/geofence/IMtkGeofenceCallback;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.mediatek.common.geofence.IMtkGeofenceCallback"

    .line 60
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 61
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    :cond_13
    packed-switch v7, :pswitch_data_86

    .line 71
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_8c

    .line 129
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 67
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return v10

    .line 120
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub;->onGeofenceResume(II)V

    .line 125
    goto :goto_84

    .line 110
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub;->onGeofencePause(II)V

    .line 115
    goto :goto_84

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub;->onGeofenceRemove(II)V

    .line 105
    goto :goto_84

    .line 90
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub;->onGeofenceAdd(II)V

    .line 95
    goto :goto_84

    .line 76
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 78
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 80
    .local v13, "_arg1":I
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/location/Location;

    .line 82
    .local v14, "_arg2":Landroid/location/Location;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 83
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 84
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub;->onGeofenceTransition(IILandroid/location/Location;J)V

    .line 85
    nop

    .line 132
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Landroid/location/Location;
    .end local v15    # "_arg3":J
    :goto_84
    return v10

    nop

    :pswitch_data_86
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_62
        :pswitch_53
        :pswitch_44
        :pswitch_35
        :pswitch_26
    .end packed-switch
.end method
