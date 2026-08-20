.class public abstract Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;
.super Landroid/os/Binder;
.source "IGnssDebugReportService.java"

# interfaces
.implements Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addListener:I = 0x3

.field static final blacklist TRANSACTION_removeListener:I = 0x4

.field static final blacklist TRANSACTION_startDebug:I = 0x1

.field static final blacklist TRANSACTION_stopDebug:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
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

    .line 58
    const-string v0, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 60
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    :cond_d
    packed-switch p1, :pswitch_data_6e

    .line 70
    packed-switch p1, :pswitch_data_74

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 66
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v1

    .line 104
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v2

    .line 105
    .local v2, "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->removeListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto :goto_6c

    .line 95
    .end local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v2

    .line 96
    .restart local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->addListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    goto :goto_6c

    .line 85
    .end local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v2

    .line 86
    .restart local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    invoke-virtual {p0, v2}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->stopDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z

    move-result v3

    .line 88
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 90
    goto :goto_6c

    .line 75
    .end local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .end local v3    # "_result":Z
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v2

    .line 76
    .restart local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 77
    invoke-virtual {p0, v2}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->startDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z

    move-result v3

    .line 78
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 80
    nop

    .line 115
    .end local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .end local v3    # "_result":Z
    :goto_6c
    return v1

    nop

    :pswitch_data_6e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_56
        :pswitch_40
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
