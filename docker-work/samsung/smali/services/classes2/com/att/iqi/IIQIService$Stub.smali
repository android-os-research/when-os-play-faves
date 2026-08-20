.class public abstract Lcom/att/iqi/IIQIService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/att/iqi/IIQIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IIQIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IIQIService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.att.iqi.IIQIService"

.field public static final TRANSACTION_disableService:I = 0xc

.field public static final TRANSACTION_forceStopService:I = 0xb

.field public static final TRANSACTION_getTimestamp:I = 0xa

.field public static final TRANSACTION_registerMetricQueryCallback:I = 0x3

.field public static final TRANSACTION_registerMetricSourcingCallback:I = 0x5

.field public static final TRANSACTION_registerProfileChangedCallback:I = 0x7

.field public static final TRANSACTION_reportKeyCode:I = 0x9

.field public static final TRANSACTION_shouldSubmitMetric:I = 0x1

.field public static final TRANSACTION_submitMetric:I = 0x2

.field public static final TRANSACTION_unregisterMetricQueryCallback:I = 0x4

.field public static final TRANSACTION_unregisterMetricSourcingCallback:I = 0x6

.field public static final TRANSACTION_unregisterProfileChangedCallback:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.att.iqi.IIQIService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.att.iqi.IIQIService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/att/iqi/IIQIService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/att/iqi/IIQIService;

    return-object v0

    :cond_13
    new-instance v0, Lcom/att/iqi/IIQIService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/att/iqi/IIQIService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/att/iqi/IIQIService;
    .registers 1

    sget-object v0, Lcom/att/iqi/IIQIService$Stub$Proxy;->sDefaultImpl:Lcom/att/iqi/IIQIService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/att/iqi/IIQIService;)Z
    .registers 2

    sget-object v0, Lcom/att/iqi/IIQIService$Stub$Proxy;->sDefaultImpl:Lcom/att/iqi/IIQIService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/att/iqi/IIQIService$Stub$Proxy;->sDefaultImpl:Lcom/att/iqi/IIQIService;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public abstract synthetic disableService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic forceStopService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic getTimestamp()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.att.iqi.IIQIService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_108

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_10c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/att/iqi/IIQIService$Stub;->disableService()V

    return v0

    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/att/iqi/IIQIService$Stub;->forceStopService()V

    return v0

    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/att/iqi/IIQIService$Stub;->getTimestamp()J

    move-result-wide p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v0

    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/att/iqi/IIQIService$Stub;->reportKeyCode([B)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/IProfileChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IProfileChangedCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/att/iqi/IIQIService$Stub;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    return v0

    :pswitch_4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/IProfileChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IProfileChangedCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/att/iqi/IIQIService$Stub;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    return v0

    :pswitch_5d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6f

    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/att/iqi/lib/Metric$ID;

    :cond_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/IMetricSourcingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricSourcingCallback;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/att/iqi/IIQIService$Stub;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    return v0

    :pswitch_7b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8d

    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/att/iqi/lib/Metric$ID;

    :cond_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/IMetricSourcingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricSourcingCallback;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/att/iqi/IIQIService$Stub;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    return v0

    :pswitch_99
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ab

    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/att/iqi/lib/Metric$ID;

    :cond_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/IMetricQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricQueryCallback;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/att/iqi/IIQIService$Stub;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    return v0

    :pswitch_b7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c9

    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/att/iqi/lib/Metric$ID;

    :cond_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/IMetricQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricQueryCallback;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/att/iqi/IIQIService$Stub;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    return v0

    :pswitch_d5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e7

    sget-object p1, Lcom/att/iqi/lib/Metric;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/att/iqi/lib/Metric;

    :cond_e7
    invoke-virtual {p0, v2}, Lcom/att/iqi/IIQIService$Stub;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    return v0

    :pswitch_eb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_fd

    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/att/iqi/lib/Metric$ID;

    :cond_fd
    invoke-virtual {p0, v2}, Lcom/att/iqi/IIQIService$Stub;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_108
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_d5
        :pswitch_b7
        :pswitch_99
        :pswitch_7b
        :pswitch_5d
        :pswitch_4e
        :pswitch_3f
        :pswitch_2d
        :pswitch_1f
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method

.method public abstract synthetic registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic reportKeyCode([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic submitMetric(Lcom/att/iqi/lib/Metric;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
