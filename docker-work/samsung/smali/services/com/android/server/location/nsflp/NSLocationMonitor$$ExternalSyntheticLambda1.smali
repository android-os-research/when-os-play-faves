.class public final synthetic Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/DeviceIdleInternal$StationaryListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    return-void
.end method


# virtual methods
.method public final onDeviceStationaryChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->$r8$lambda$jb4zijYltfidJtfeSvRE7QWDGBw(Lcom/android/server/location/nsflp/NSLocationMonitor;Z)V

    return-void
.end method
