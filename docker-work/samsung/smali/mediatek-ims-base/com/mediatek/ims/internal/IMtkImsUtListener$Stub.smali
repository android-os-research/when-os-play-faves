.class public abstract Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;
.super Landroid/os/Binder;
.source "IMtkImsUtListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsUtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_utConfigurationCallForwardInTimeSlotQueried:I = 0x1

.field static final blacklist TRANSACTION_utConfigurationCallForwardQueried:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.mediatek.ims.internal.IMtkImsUtListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUtListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsUtListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsUtListener;

    if-eqz v1, :cond_14

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsUtListener;

    return-object v1

    .line 44
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 48
    return-object p0
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

    .line 52
    const-string v0, "com.mediatek.ims.internal.IMtkImsUtListener"

    .line 53
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    :cond_d
    packed-switch p1, :pswitch_data_5a

    .line 64
    packed-switch p1, :pswitch_data_60

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 60
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v1

    .line 82
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v2

    .line 84
    .local v2, "_arg0":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .local v3, "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 87
    .local v4, "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;->utConfigurationCallForwardQueried(Lcom/mediatek/ims/internal/IMtkImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    goto :goto_58

    .line 69
    .end local v2    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v2

    .line 71
    .restart local v2    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .restart local v3    # "_arg1":I
    sget-object v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 74
    .local v4, "_arg2":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;->utConfigurationCallForwardInTimeSlotQueried(Lcom/mediatek/ims/internal/IMtkImsUt;I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    nop

    .line 97
    .end local v2    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_1c
    .end packed-switch
.end method
