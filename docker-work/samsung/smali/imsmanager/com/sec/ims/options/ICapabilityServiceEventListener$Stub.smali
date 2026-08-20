.class public abstract Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;
.super Landroid/os/Binder;
.source "ICapabilityServiceEventListener.java"

# interfaces
.implements Lcom/sec/ims/options/ICapabilityServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/options/ICapabilityServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCapabilitiesChanged:I = 0x2

.field static final TRANSACTION_onCapabilityAndAvailabilityPublished:I = 0x4

.field static final TRANSACTION_onMultipleCapabilitiesChanged:I = 0x3

.field static final TRANSACTION_onOwnCapabilitiesChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.sec.ims.options.ICapabilityServiceEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.sec.ims.options.ICapabilityServiceEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/options/ICapabilityServiceEventListener;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/options/ICapabilityServiceEventListener;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 56
    const-string v0, "com.sec.ims.options.ICapabilityServiceEventListener"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    :cond_d
    packed-switch p1, :pswitch_data_60

    .line 68
    packed-switch p1, :pswitch_data_66

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 101
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;->onCapabilityAndAvailabilityPublished(I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    goto :goto_5f

    .line 90
    .end local v2    # "_arg0":I
    :pswitch_2a
    sget-object v2, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 92
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v3, Lcom/sec/ims/options/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 93
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;->onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    goto :goto_5f

    .line 79
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    :pswitch_40
    sget-object v2, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 81
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v3, Lcom/sec/ims/options/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/Capabilities;

    .line 82
    .local v3, "_arg1":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;->onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    goto :goto_5f

    .line 72
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v3    # "_arg1":Lcom/sec/ims/options/Capabilities;
    :pswitch_58
    invoke-virtual {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;->onOwnCapabilitiesChanged()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    nop

    .line 112
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_58
        :pswitch_40
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
