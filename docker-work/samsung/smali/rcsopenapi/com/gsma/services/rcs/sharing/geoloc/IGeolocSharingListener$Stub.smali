.class public abstract Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;
.super Landroid/os/Binder;
.source "IGeolocSharingListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeleted:I = 0x3

.field static final TRANSACTION_onProgressUpdate:I = 0x2

.field static final TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingListener"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingListener"

    .line 55
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_13

    const v0, 0xffffff

    if-gt v8, v0, :cond_13

    .line 56
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_13
    packed-switch v8, :pswitch_data_8a

    .line 66
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_90

    .line 111
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 62
    :pswitch_20
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v11

    .line 101
    :pswitch_26
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 103
    .local v0, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {v7, v0, v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    goto :goto_88

    .line 86
    .end local v0    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3c
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/gsma/services/rcs/contact/ContactId;

    .line 88
    .local v13, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 90
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 92
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 93
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-wide v3, v15

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    goto :goto_88

    .line 71
    .end local v13    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":J
    :pswitch_62
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 73
    .restart local v0    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    .line 77
    .local v2, "_arg2":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    sget-object v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 78
    .local v3, "_arg3":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 79
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    nop

    .line 114
    .end local v0    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .end local v3    # "_arg3":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    :goto_88
    return v11

    nop

    :pswitch_data_8a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_62
        :pswitch_3c
        :pswitch_26
    .end packed-switch
.end method
