.class public abstract Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;
.super Landroid/os/Binder;
.source "IKnoxAnalyticsService.java"

# interfaces
.implements Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_log:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.samsung.android.knox.analytics.IKnoxAnalyticsService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_4
    const-string v0, "com.samsung.android.knox.analytics.IKnoxAnalyticsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    if-eqz v1, :cond_14

    .line 37
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    return-object v1

    .line 39
    :cond_14
    new-instance v1, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const-string v0, "com.samsung.android.knox.analytics.IKnoxAnalyticsService"

    .line 48
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    :cond_d
    packed-switch p1, :pswitch_data_30

    .line 59
    packed-switch p1, :pswitch_data_36

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 55
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v1

    .line 64
    :pswitch_1c
    sget-object v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 65
    .local v2, "_arg0":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 66
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    nop

    .line 75
    .end local v2    # "_arg0":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
