.class public abstract Lcom/android/server/profcollect/IProfCollectd$Stub;
.super Landroid/os/Binder;
.source "IProfCollectd.java"

# interfaces
.implements Lcom/android/server/profcollect/IProfCollectd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/profcollect/IProfCollectd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_get_supported_provider:I = 0x6

.field public static final TRANSACTION_process:I = 0x4

.field public static final TRANSACTION_registerProviderStatusCallback:I = 0x7

.field public static final TRANSACTION_report:I = 0x5

.field public static final TRANSACTION_schedule:I = 0x1

.field public static final TRANSACTION_terminate:I = 0x2

.field public static final TRANSACTION_trace_once:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.server.profcollect.IProfCollectd"

    .line 45
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/server/profcollect/IProfCollectd;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.server.profcollect.IProfCollectd"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 57
    instance-of v1, v0, Lcom/android/server/profcollect/IProfCollectd;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Lcom/android/server/profcollect/IProfCollectd;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.android.server.profcollect.IProfCollectd"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 70
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_65

    packed-switch p1, :pswitch_data_6a

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 126
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/profcollect/IProviderStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/profcollect/IProviderStatusCallback;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-interface {p0, p1}, Lcom/android/server/profcollect/IProfCollectd;->registerProviderStatusCallback(Lcom/android/server/profcollect/IProviderStatusCallback;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_64

    .line 118
    :pswitch_2c
    invoke-interface {p0}, Lcom/android/server/profcollect/IProfCollectd;->get_supported_provider()Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_64

    .line 111
    :pswitch_37
    invoke-interface {p0}, Lcom/android/server/profcollect/IProfCollectd;->report()Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_64

    .line 105
    :pswitch_42
    invoke-interface {p0}, Lcom/android/server/profcollect/IProfCollectd;->process()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_64

    .line 97
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-interface {p0, p1}, Lcom/android/server/profcollect/IProfCollectd;->trace_once(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_64

    .line 90
    :pswitch_57
    invoke-interface {p0}, Lcom/android/server/profcollect/IProfCollectd;->terminate()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_64

    .line 84
    :pswitch_5e
    invoke-interface {p0}, Lcom/android/server/profcollect/IProfCollectd;->schedule()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_64
    return v0

    .line 76
    :cond_65
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_57
        :pswitch_49
        :pswitch_42
        :pswitch_37
        :pswitch_2c
        :pswitch_1a
    .end packed-switch
.end method
