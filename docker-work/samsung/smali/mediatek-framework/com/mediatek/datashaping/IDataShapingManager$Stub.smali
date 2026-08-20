.class public abstract Lcom/mediatek/datashaping/IDataShapingManager$Stub;
.super Landroid/os/Binder;
.source "IDataShapingManager.java"

# interfaces
.implements Lcom/mediatek/datashaping/IDataShapingManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datashaping/IDataShapingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableDataShaping:I = 0x2

.field static final blacklist TRANSACTION_enableDataShaping:I = 0x1

.field static final blacklist TRANSACTION_isDataShapingWhitelistApp:I = 0x5

.field static final blacklist TRANSACTION_openLteDataUpLinkGate:I = 0x3

.field static final blacklist TRANSACTION_setDeviceIdleMode:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.mediatek.datashaping.IDataShapingManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/datashaping/IDataShapingManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.mediatek.datashaping.IDataShapingManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/datashaping/IDataShapingManager;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/mediatek/datashaping/IDataShapingManager;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
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

    .line 63
    const-string v0, "com.mediatek.datashaping.IDataShapingManager"

    .line 64
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    :cond_d
    packed-switch p1, :pswitch_data_5e

    .line 75
    packed-switch p1, :pswitch_data_64

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 71
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v1

    .line 111
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v2}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->isDataShapingWhitelistApp(Ljava/lang/String;)Z

    move-result v3

    .line 114
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    goto :goto_5c

    .line 102
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 103
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->setDeviceIdleMode(Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    goto :goto_5c

    .line 92
    .end local v2    # "_arg0":Z
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 93
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->openLteDataUpLinkGate(Z)Z

    move-result v3

    .line 95
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 97
    goto :goto_5c

    .line 85
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_4e
    invoke-virtual {p0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->disableDataShaping()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    goto :goto_5c

    .line 79
    :pswitch_55
    invoke-virtual {p0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->enableDataShaping()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    nop

    .line 123
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4e
        :pswitch_3c
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
