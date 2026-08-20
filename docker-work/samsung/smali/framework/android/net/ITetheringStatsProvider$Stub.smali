.class public abstract Landroid/net/ITetheringStatsProvider$Stub;
.super Landroid/os/Binder;
.source "ITetheringStatsProvider.java"

# interfaces
.implements Landroid/net/ITetheringStatsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ITetheringStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ITetheringStatsProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.ITetheringStatsProvider"

.field static final greylist-max-o TRANSACTION_getTetherStats:I = 0x1

.field static final greylist-max-o TRANSACTION_setInterfaceQuota:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.net.ITetheringStatsProvider"

    invoke-virtual {p0, p0, v0}, Landroid/net/ITetheringStatsProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.net.ITetheringStatsProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/ITetheringStatsProvider;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/net/ITetheringStatsProvider;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/net/ITetheringStatsProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ITetheringStatsProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_c

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_5
    const-string v0, "setInterfaceQuota"

    return-object v0

    .line 73
    :pswitch_8
    const-string v0, "getTetherStats"

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

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Landroid/net/ITetheringStatsProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 92
    const-string v0, "android.net.ITetheringStatsProvider"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_d
    packed-switch p1, :pswitch_data_42

    .line 104
    packed-switch p1, :pswitch_data_48

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 100
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 119
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 122
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/ITetheringStatsProvider$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    goto :goto_40

    .line 109
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Landroid/net/ITetheringStatsProvider$Stub;->getTetherStats(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 112
    .local v3, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 114
    nop

    .line 132
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/net/NetworkStats;
    :goto_40
    return v1

    nop

    :pswitch_data_42
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
