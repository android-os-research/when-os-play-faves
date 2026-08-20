.class Lcom/sec/vsim/ericssonnsds/IBulkEntitlementCheckListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBulkEntitlementCheckListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/IBulkEntitlementCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/IBulkEntitlementCheckListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/IBulkEntitlementCheckListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/IBulkEntitlementCheckListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 91
    const-string v0, "com.sec.vsim.ericssonnsds.IBulkEntitlementCheckListener"

    return-object v0
.end method

.method public onServiceEntitlementStatusUpdated(Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;)V
    .registers 7
    .param p1, "entitlementStatus"    # Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.vsim.ericssonnsds.IBulkEntitlementCheckListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v3, p0, Lcom/sec/vsim/ericssonnsds/IBulkEntitlementCheckListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 101
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 104
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    nop

    .line 107
    return-void

    .line 104
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    throw v2
.end method
