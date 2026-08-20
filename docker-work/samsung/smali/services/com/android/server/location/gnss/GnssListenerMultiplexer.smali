.class public abstract Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "GnssListenerMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener::Landroid/os/IInterface;",
        "TMergedRegistration:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/ListenerMultiplexer<",
        "Landroid/os/IBinder;",
        "TT",
        "Listener;",
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "TTRequest;TT",
        "Listener;",
        "TTMergedRegistration;>.Gnss",
        "ListenerRegistration;",
        "TTMergedRegistration;>;"
    }
.end annotation


# static fields
.field public static final MAX_REGISTRATIONS_PER_UID:I = 0x1e


# instance fields
.field public final mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

.field public final mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

.field public final mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

.field public final mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mProviderEnabledChangedListener:Landroid/location/LocationManagerInternal$ProviderEnabledListener;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

.field public final mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

.field public final mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;


# direct methods
.method public static synthetic $r8$lambda$4govjCMOUnAAjNnDNy-j_xj20CY(Ljava/lang/String;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->lambda$onLocationPermissionsChanged$5(Ljava/lang/String;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8m_7GHPEnujdn0UbSvHzjRAZ4vc(Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->lambda$getPredicate$0(Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D0snTG2JOzVWN9aUQx5r-qo2MkU(Lcom/android/server/location/gnss/GnssListenerMultiplexer;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$G8uSx8NnvK__FetuUGRgbtKaTZA(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->lambda$onLocationPackageBlacklistChanged$4(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GiVpExniosYFEYhFiZMi3GOu8kw(Lcom/android/server/location/gnss/GnssListenerMultiplexer;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onUserChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$U69eWXhEKNDU7LUmWKogFzq3Luc(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onBackgroundThrottlePackageWhitelistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$VL3WSbAul5QINTq5awpvQgEDOak(Lcom/android/server/location/gnss/GnssListenerMultiplexer;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onLocationPackageBlacklistChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dvcjoTM8Wyp5lfUJymbRQOEddFs(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->lambda$onUserChanged$1(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fDUC_dRPexkylTZXA5TekBBkirY(IZLcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->lambda$onAppForegroundChanged$7(IZLcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$i2ezBk9nxqDWhvJ9IViiJHjEh-M(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->lambda$onLocationPermissionsChanged$6(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jkZfCc6Bl_dl-NkJVw0LDYeOM_c(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->lambda$onBackgroundThrottlePackageWhitelistChanged$3(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mKZNWqk2dieEvAXnn4d3fArnudw(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/String;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onProviderEnabledChanged(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xFDTVgriV6hIr7xr9qCe1uaBEUg(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->lambda$onProviderEnabledChanged$2(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/gnss/GnssListenerMultiplexer;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onLocationPermissionsChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onLocationPermissionsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateGnssDataListener(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Landroid/os/IBinder;ZLjava/lang/String;II)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/Injector;)V
    .registers 4

    .line 242
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 217
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 218
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mProviderEnabledChangedListener:Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 220
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 223
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 226
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 239
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    .line 243
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    .line 244
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 245
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 246
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    .line 247
    const-class v0, Landroid/location/LocationManagerInternal;

    .line 248
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManagerInternal;

    .line 247
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 249
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public static synthetic lambda$getPredicate$0(Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    .line 302
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p1

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p0

    if-ne p1, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static synthetic lambda$onAppForegroundChanged$7(IZLcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 3

    .line 451
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onForegroundChanged(IZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onBackgroundThrottlePackageWhitelistChanged$3(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$onLocationPackageBlacklistChanged$4(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    .line 439
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$onLocationPermissionsChanged$5(Ljava/lang/String;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    .line 443
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onLocationPermissionsChanged(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onLocationPermissionsChanged$6(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    .line 447
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onLocationPermissionsChanged(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onProviderEnabledChanged$2(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    .line 431
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$onUserChanged$1(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 2

    .line 425
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;II)V
    .registers 13

    .line 465
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-nez v0, :cond_5

    return-void

    .line 470
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;

    move-result-object v4

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 469
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;II)V

    return-void
.end method


# virtual methods
.method public final addGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz v0, :cond_26

    .line 475
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 477
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;

    move-result-object v4

    .line 479
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v5

    .line 480
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v6

    .line 481
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isPermitted()Z

    move-result v7

    .line 482
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v8

    move-object v2, p1

    .line 476
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;IIZZ)V

    :cond_26
    return-void
.end method

.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method public addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    :try_start_4
    new-instance v2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$2;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$2;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Landroid/os/IInterface;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;)V

    invoke-virtual {p0, v2, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->checkLimitAndPutRegistration(Ljava/lang/Runnable;Landroid/location/util/identity/CallerIdentity;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    throw p0
.end method

.method public checkLimitAndPutRegistration(Ljava/lang/Runnable;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5

    .line 294
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 295
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->getPredicate(Landroid/location/util/identity/CallerIdentity;)Ljava/util/function/Predicate;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getRegistrationCountWith(Ljava/util/function/Predicate;)I

    move-result p0

    const/16 p2, 0x1e

    if-ge p0, p2, :cond_17

    .line 297
    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void
.end method

.method public createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>.Gnss",
            "ListenerRegistration;"
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-object v0
.end method

.method public abstract getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
.end method

.method public getPredicate(Landroid/location/util/identity/CallerIdentity;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/util/identity/CallerIdentity;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>.Gnss",
            "ListenerRegistration;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda10;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda10;-><init>(Landroid/location/util/identity/CallerIdentity;)V

    return-object p0
.end method

.method public getServiceState()Ljava/lang/String;
    .registers 2

    .line 456
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isSupported()Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo p0, "unsupported"

    return-object p0

    .line 459
    :cond_a
    invoke-super {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getServiceState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "GnssManager"

    return-object p0
.end method

.method public final isActive(Landroid/location/util/identity/CallerIdentity;)Z
    .registers 6

    .line 338
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    const-string/jumbo v1, "gps"

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 339
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    .line 340
    invoke-virtual {p0}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result p0

    .line 339
    invoke-virtual {p1, v1, p0}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_44

    return v2

    .line 344
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 345
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    .line 344
    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    return v2

    .line 348
    :cond_26
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v0

    if-nez v0, :cond_33

    return v2

    .line 351
    :cond_33
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    .line 352
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_44

    return v2

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public isActive(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>.Gnss",
            "ListenerRegistration;",
            ")Z"
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 331
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 332
    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isPermitted()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 333
    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isBackgroundRestrictionExempt(Landroid/location/util/identity/CallerIdentity;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 334
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isActive(Landroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public bridge synthetic isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .registers 2

    .line 65
    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isActive(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p0

    return p0
.end method

.method public final isBackgroundRestrictionExempt(Landroid/location/util/identity/CallerIdentity;)Z
    .registers 5

    .line 361
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    .line 365
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    .line 366
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 367
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {v0, v2}, Lcom/android/server/location/injector/SettingsHelper;->isBackgroundThrottlingAllowlistByNsflp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_2f

    .line 371
    :cond_27
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    return p0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public isSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>.Gnss",
            "ListenerRegistration;",
            ">;)TTMergedRegistration;"
        }
    .end annotation

    .line 380
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_21

    .line 381
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 382
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_8

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onAppForegroundChanged(IZ)V
    .registers 4

    .line 451
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda3;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onBackgroundThrottlePackageWhitelistChanged()V
    .registers 2

    .line 435
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onLocationPackageBlacklistChanged(I)V
    .registers 3

    .line 439
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onLocationPermissionsChanged(I)V
    .registers 3

    .line 447
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onLocationPermissionsChanged(Ljava/lang/String;)V
    .registers 3

    .line 443
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onProviderEnabledChanged(Ljava/lang/String;IZ)V
    .registers 4

    const-string/jumbo p3, "gps"

    .line 430
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 431
    new-instance p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onRegister()V
    .registers 4

    .line 391
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isSupported()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 395
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 396
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mProviderEnabledChangedListener:Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManagerInternal;->addProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 398
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 402
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->addListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/AppForegroundHelper;->addListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    return-void
.end method

.method public onUnregister()V
    .registers 4

    .line 408
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isSupported()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 412
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->removeListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mProviderEnabledChangedListener:Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManagerInternal;->removeProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 419
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->removeListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/AppForegroundHelper;->removeListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    return-void
.end method

.method public final onUserChanged(II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 425
    new-instance p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    :cond_b
    return-void
.end method

.method public final removeGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz v0, :cond_19

    .line 488
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 489
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 490
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;

    move-result-object p0

    .line 491
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    .line 492
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result p2

    .line 489
    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->removeGnssDataListener(Landroid/os/IBinder;Landroid/location/LocationConstants$LISTENER_TYPE;II)V

    :cond_19
    return-void
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 317
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    :try_start_4
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 321
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    throw p0
.end method
