.class public final synthetic Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    return-void
.end method


# virtual methods
.method public final onLocationPowerSaveModeChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->$r8$lambda$SoG2y29JC9KayzdFJozx0gQmLXg(Lcom/android/server/location/nsflp/NSLocationMonitor;I)V

    return-void
.end method
