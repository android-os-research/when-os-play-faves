.class public Lcom/android/server/location/provider/LocationProviderManager$LastLocation;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastLocation"
.end annotation


# instance fields
.field public mCoarseBypassLocation:Landroid/location/Location;

.field public mCoarseLocation:Landroid/location/Location;

.field public mFineBypassLocation:Landroid/location/Location;

.field public mFineLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateNextCoarse(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .registers 7

    if-nez p1, :cond_3

    return-object p2

    .line 3030
    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    sub-long/2addr v0, v2

    .line 3031
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_14

    return-object p2

    :cond_14
    return-object p1
.end method

.method public final calculateNextFine(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .registers 7

    if-nez p1, :cond_3

    return-object p2

    .line 3017
    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_10

    return-object p2

    :cond_10
    return-object p1
.end method

.method public clearLocations()V
    .registers 2

    const/4 v0, 0x0

    .line 2976
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 2977
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    return-void
.end method

.method public clearMock()V
    .registers 3

    .line 2961
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2962
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 2964
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2965
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 2967
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2968
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 2970
    :cond_25
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2971
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    :cond_31
    return-void
.end method

.method public get(IZ)Landroid/location/Location;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    if-eqz p2, :cond_b

    .line 2985
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    return-object p0

    .line 2987
    :cond_b
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    return-object p0

    .line 2997
    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_14
    if-eqz p2, :cond_19

    .line 2991
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    return-object p0

    .line 2993
    :cond_19
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    return-object p0
.end method

.method public set(Landroid/location/Location;)V
    .registers 3

    .line 3002
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextFine(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 3003
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextCoarse(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    return-void
.end method

.method public setBypass(Landroid/location/Location;)V
    .registers 3

    .line 3007
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextFine(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 3008
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextCoarse(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    return-void
.end method
