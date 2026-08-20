.class public Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener$Default;
.super Ljava/lang/Object;
.source "IEmergencyServiceListener.java"

# interfaces
.implements Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNotify(Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;)V
    .registers 2
    .param p1, "noti"    # Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
