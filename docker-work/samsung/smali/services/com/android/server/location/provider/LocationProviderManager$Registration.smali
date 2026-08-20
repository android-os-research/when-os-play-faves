.class public abstract Lcom/android/server/location/provider/LocationProviderManager$Registration;
.super Lcom/android/server/location/listeners/RemoteListenerRegistration;
.source "LocationProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Registration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/RemoteListenerRegistration<",
        "Landroid/location/LocationRequest;",
        "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
        ">;"
    }
.end annotation


# instance fields
.field public isListenerType:Z

.field public mForeground:Z

.field public mIsUsingHighPower:Z

.field public mLastLocation:Landroid/location/Location;

.field public mListenerId:Ljava/lang/String;

.field public final mPermissionLevel:I

.field public mPermitted:Z

.field public mProviderLocationRequest:Landroid/location/LocationRequest;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public static synthetic $r8$lambda$UKyh0I9tYNGzP0cUu4iw8BDd7xs(Lcom/android/server/location/provider/LocationProviderManager$Registration;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->lambda$flush$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_shPEktTFzsHWYBibeHBex3HXzQ(ILcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->lambda$flush$0(ILcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V
    .registers 7

    .line 401
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 402
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/location/listeners/RemoteListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType:Z

    .line 404
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_17

    move p4, p1

    goto :goto_18

    :cond_17
    move p4, v0

    :goto_18
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-lez p5, :cond_1e

    move v0, p1

    .line 405
    :cond_1e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 406
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/WorkSource;->isEmpty()Z

    move-result p4

    xor-int/2addr p1, p4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 408
    iput p5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 409
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 412
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    .line 413
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mUid:I

    return-void
.end method

.method public static synthetic lambda$flush$0(ILcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 575
    invoke-interface {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnFlushComplete(I)V

    return-void
.end method

.method private synthetic lambda$flush$1(I)V
    .registers 3

    .line 574
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method private onLocationPermissionsChanged()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 641
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 642
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 645
    :cond_f
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 646
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    .line 645
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    .line 647
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    if-eq v0, v1, :cond_8c

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permitted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    if-eqz v0, :cond_60

    .line 656
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientPermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    goto :goto_6d

    .line 658
    :cond_60
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientUnpermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    .line 662
    :goto_6d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->getReasonByCaller(I)Landroid/location/LocationConstants$PAUSED_BY;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$fgetmNSLocationProviderHelper(Lcom/android/server/location/provider/LocationProviderManager;)Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateRegistrationAccessStatus(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;Landroid/location/LocationConstants$PAUSED_BY;)V

    const/4 p0, 0x1

    return p0

    :cond_8c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationResult;",
            ")",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
            ">;"
        }
    .end annotation
.end method

.method public final calculateProviderLocationRequest()Landroid/location/LocationRequest;
    .registers 9

    .line 733
    invoke-super {p0}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationRequest;

    .line 734
    new-instance v1, Landroid/location/LocationRequest$Builder;

    invoke-direct {v1, v0}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 736
    iget v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2e

    const/16 v2, 0x68

    .line 737
    invoke-virtual {v1, v2}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    .line 738
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_23

    .line 739
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationRequest$Builder;->setIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 741
    :cond_23
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_2e

    .line 742
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 746
    :cond_2e
    invoke-virtual {v0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_66

    .line 749
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v4

    .line 750
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 749
    invoke-virtual {v4, v5, v6}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_63

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const/4 v5, 0x0

    .line 751
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v4

    if-nez v4, :cond_63

    move v2, v3

    .line 755
    :cond_63
    invoke-virtual {v1, v2}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    .line 758
    :cond_66
    invoke-virtual {v0}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 761
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v5, v5, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v6, "gps"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    const-string v4, "LocationManagerService"

    const-string v5, "adas gnss bypass request received in non-gps provider"

    .line 762
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 764
    :cond_81
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v5, v5, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 765
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v6

    .line 764
    invoke-virtual {v5, v6}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v5

    .line 765
    invoke-virtual {v5}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v5

    if-nez v5, :cond_98

    goto :goto_b8

    .line 767
    :cond_98
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v5, v5, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v5

    .line 768
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 767
    invoke-virtual {v5, v6, v7}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b7

    goto :goto_b8

    :cond_b7
    move v3, v4

    .line 772
    :goto_b8
    invoke-virtual {v1, v3}, Landroid/location/LocationRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/LocationRequest$Builder;

    :cond_bb
    if-nez v2, :cond_da

    .line 775
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isThrottlingExempt()Z

    move-result v2

    if-nez v2, :cond_da

    .line 777
    iget-boolean v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    if-nez v2, :cond_da

    .line 778
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 779
    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottleIntervalMs()J

    move-result-wide v4

    .line 778
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest$Builder;->setIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 783
    :cond_da
    invoke-virtual {v1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public final flush(I)V
    .registers 4

    .line 574
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$Registration;I)V

    invoke-interface {v0, v1}, Lcom/android/server/location/provider/LocationProviderController;->flush(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getLastDeliveredLocation()Landroid/location/Location;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 555
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getListenerId()Ljava/lang/String;
    .registers 1

    .line 424
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .registers 1

    .line 381
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getOwner()Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    return-object p0
.end method

.method public final getOwner()Lcom/android/server/location/provider/LocationProviderManager;
    .registers 1

    .line 580
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    return-object p0
.end method

.method public getPermissionLevel()I
    .registers 1

    .line 559
    iget p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    return p0
.end method

.method public final getRequest()Landroid/location/LocationRequest;
    .registers 1

    .line 545
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    return-object p0
.end method

.method public bridge synthetic getRequest()Ljava/lang/Object;
    .registers 1

    .line 381
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 428
    iget p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mUid:I

    return p0
.end method

.method public final isForeground()Z
    .registers 1

    .line 563
    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    return p0
.end method

.method public isListenerType()Z
    .registers 1

    .line 432
    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType:Z

    return p0
.end method

.method public final isPermitted()Z
    .registers 1

    .line 567
    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    return p0
.end method

.method public final isThrottlingExempt()Z
    .registers 3

    .line 787
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    .line 788
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 790
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 789
    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->isBackgroundThrottlingAllowlistByNsflp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_37

    .line 794
    :cond_29
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    return p0

    :cond_37
    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method public final isUsingHighPower()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 607
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 608
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 611
    :cond_f
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->getProperties()Landroid/location/provider/ProviderProperties;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return v1

    .line 616
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 617
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long p0, v2, v4

    if-gez p0, :cond_36

    .line 618
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->getPowerUsage()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_36

    const/4 v1, 0x1

    :cond_36
    return v1
.end method

.method public final onActive()V
    .registers 4

    .line 501
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 502
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 505
    :cond_f
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientActive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    if-nez v0, :cond_33

    .line 508
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v1, 0x29

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/AppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 510
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    .line 512
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onProviderListenerActive()V

    return-void
.end method

.method public final onAdasGnssLocationEnabledChanged(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 673
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 674
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 677
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_1e

    .line 678
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onProviderLocationRequestChanged()Z

    move-result p0

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method final onForegroundChanged(IZ)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 686
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 687
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 690
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_74

    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    if-eq p2, v0, :cond_74

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " foreground = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    if-eqz p2, :cond_55

    .line 698
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p2, p2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    goto :goto_62

    .line 700
    :cond_55
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p2, p2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientBackground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    .line 704
    :goto_62
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onProviderLocationRequestChanged()Z

    move-result p1

    if-nez p1, :cond_73

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    .line 705
    invoke-virtual {p0}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->getLocationPowerSaveMode()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_74

    :cond_73
    const/4 v1, 0x1

    :cond_74
    return v1
.end method

.method public final onHighPowerUsageChanged()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 591
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isUsingHighPower()Z

    move-result v0

    .line 592
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    if-eq v0, v1, :cond_31

    .line 593
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    .line 595
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    if-nez v0, :cond_31

    .line 596
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    const/16 v1, 0x2a

    if-eqz v0, :cond_26

    .line 597
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/injector/AppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    goto :goto_31

    .line 599
    :cond_26
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/injector/AppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public final onInactive()V
    .registers 4

    .line 517
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 518
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 521
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    .line 522
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    if-nez v0, :cond_29

    .line 523
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v1, 0x29

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/AppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    .line 526
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onProviderListenerInactive()V

    .line 528
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientInactive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    return-void
.end method

.method final onLocationPermissionsChanged(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 632
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_f

    .line 633
    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method final onLocationPermissionsChanged(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-eqz p1, :cond_13

    .line 623
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    .line 624
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged()Z

    move-result p0

    return p0
.end method

.method public onProviderListenerActive()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    return-void
.end method

.method public onProviderListenerInactive()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    return-void
.end method

.method public onProviderListenerRegister()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    return-void
.end method

.method public onProviderListenerUnregister()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    return-void
.end method

.method public final onProviderLocationRequestChanged()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 714
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 715
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 718
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->calculateProviderLocationRequest()Landroid/location/LocationRequest;

    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1, v0}, Landroid/location/LocationRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    return v2

    .line 723
    :cond_1d
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 724
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 725
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    .line 726
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # invokes: Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V
    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager;->access$000(Lcom/android/server/location/provider/LocationProviderManager;)V

    .line 729
    invoke-virtual {v1}, Landroid/location/LocationRequest;->isBypass()Z

    move-result p0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v0

    if-eq p0, v0, :cond_34

    const/4 v2, 0x1

    :cond_34
    return v2
.end method

.method public final onProviderPropertiesChanged()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    const/4 p0, 0x0

    return p0
.end method

.method public final onRemovableListenerRegister()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 439
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 440
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 444
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider added registration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    .line 444
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-super {p0}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationRequest;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientRegistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    .line 451
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 452
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v3

    .line 451
    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    .line 453
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/AppForegroundHelper;->isAppForeground(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    .line 456
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$fgetmNSLocationProviderHelper(Lcom/android/server/location/provider/LocationProviderManager;)Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 457
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$fgetmNSLocationProviderHelper(Lcom/android/server/location/provider/LocationProviderManager;)Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateRequestInfo(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    .line 461
    :cond_86
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->calculateProviderLocationRequest()Landroid/location/LocationRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 462
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isUsingHighPower()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    .line 464
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onProviderListenerRegister()V

    .line 466
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    if-eqz v1, :cond_a4

    .line 467
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    :cond_a4
    return-void
.end method

.method public final onRemovableListenerUnregister()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 474
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 475
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 478
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onProviderListenerUnregister()V

    .line 480
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientUnregistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider removed registration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocationManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setLastDeliveredLocation(Landroid/location/Location;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    return-void
.end method

.method public setPendingIntentId(Landroid/app/PendingIntent;)V
    .registers 2

    .line 419
    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 420
    iput-boolean p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 806
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 807
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "bg"

    .line 808
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v2

    if-nez v2, :cond_29

    const-string/jumbo v2, "na"

    .line 811
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_29
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_37

    .line 814
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 817
    :cond_37
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    const-string v1, " (COARSE)"

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
