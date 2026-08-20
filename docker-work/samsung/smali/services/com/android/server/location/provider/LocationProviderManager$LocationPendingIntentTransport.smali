.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
.implements Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationPendingIntentTransport"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public static synthetic $r8$lambda$kOVkie5sOwJMV6Eu59iu8_O_uiM(Landroid/os/IRemoteCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->lambda$deliverOnLocationChanged$0(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 3

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    .line 285
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static synthetic lambda$deliverOnLocationChanged$0(Landroid/os/IRemoteCallback;)V
    .registers 2

    const/4 v0, 0x0

    .line 310
    :try_start_1
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    .line 312
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 323
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 324
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    const/4 v1, 0x0

    .line 325
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 327
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v1, "flushComplete"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 328
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 327
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 292
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v6

    const/4 v7, 0x1

    .line 293
    invoke-virtual {v6, v7}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    const-wide/16 v1, 0x2710

    const/4 v3, 0x0

    const/16 v4, 0x138

    const-string v5, ""

    move-object v0, v6

    .line 295
    invoke-virtual/range {v0 .. v5}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    const-string/jumbo v2, "location"

    .line 300
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 302
    invoke-virtual {p1}, Landroid/location/LocationResult;->size()I

    move-result v1

    if-le v1, v7, :cond_3c

    .line 303
    invoke-virtual {p1}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/location/Location;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    const-string/jumbo v1, "locations"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3c
    const/4 p1, 0x0

    if-eqz p2, :cond_44

    .line 308
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda0;-><init>(Landroid/os/IRemoteCallback;)V

    .line 317
    :cond_44
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 317
    invoke-static {p2, p0, v0, p1, v1}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender;->send(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Runnable;Landroid/os/Bundle;)V

    return-void
.end method

.method public deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 334
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v0, 0x1

    .line 335
    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "providerEnabled"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 338
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 337
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
