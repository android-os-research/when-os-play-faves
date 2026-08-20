.class public Lcom/android/server/location/provider/LocationProviderManager;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;,
        Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender;,
        Lcom/android/server/location/provider/LocationProviderManager$LastLocation;,
        Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;,
        Lcom/android/server/location/provider/LocationProviderManager$Registration;,
        Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;,
        Lcom/android/server/location/provider/LocationProviderManager$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/ListenerMultiplexer<",
        "Ljava/lang/Object;",
        "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
        "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
        "Landroid/location/provider/ProviderRequest;",
        ">;",
        "Lcom/android/server/location/provider/AbstractLocationProvider$Listener;"
    }
.end annotation


# static fields
.field public static final FASTEST_INTERVAL_JITTER_PERCENTAGE:F = 0.1f

.field public static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x7530L

.field public static final MAX_FASTEST_INTERVAL_JITTER_MS:I = 0x7530

.field public static final MAX_GET_CURRENT_LOCATION_TIMEOUT_MS:J = 0x7530L

.field public static final MAX_HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field public static final MAX_REGISTRATIONS_PER_UID:I = 0x1e

.field public static final MIN_COARSE_INTERVAL_MS:J = 0x927c0L

.field public static final MIN_REQUEST_DELAY_MS:J = 0x7530L

.field public static final STATE_STARTED:I = 0x0

.field public static final STATE_STOPPED:I = 0x2

.field public static final STATE_STOPPING:I = 0x1

.field public static final TEMPORARY_APP_ALLOWLIST_DURATION_MS:J = 0x2710L

.field public static final WAKELOCK_TAG:Ljava/lang/String; = "*location*"

.field public static final WAKELOCK_TIMEOUT_MS:J = 0x7530L


# instance fields
.field public mActiveOriginalRegistrations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;"
        }
    .end annotation
.end field

.field public final mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field public final mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

.field public final mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

.field public final mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

.field public final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field public final mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field public final mContext:Landroid/content/Context;

.field public mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mEnabled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mEnabledListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/LocationManagerInternal$ProviderEnabledListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field public mInactiveMotionRegistrations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;"
        }
    .end annotation
.end field

.field public mIsSettingsIgnored:Z

.field public final mLastLocations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/provider/LocationProviderManager$LastLocation;",
            ">;"
        }
    .end annotation
.end field

.field public final mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field public final mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

.field public final mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

.field public final mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

.field public final mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

.field public final mLock:Ljava/lang/Object;

.field public final mMotionPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mName:Ljava/lang/String;

.field public final mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

.field public final mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

.field public final mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/location/provider/IProviderRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

.field public final mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

.field public mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

.field public final mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;


# direct methods
.method public static synthetic $r8$lambda$4wAF7qa526Z2qR_8u2UBde8ohk0(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onLocationPermissionsChanged$15(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7v2QoXIaEh_d-KZVLG-V17vlVS4(Lcom/android/server/location/provider/LocationProviderManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onMotionPowerSaveModeChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7vYP1LE5Krt1P5aJHlhzdbr3rWw(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onBackgroundThrottleIntervalChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$93NUqXTfUSE5tZtsl_LWgfbHlOc(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onIgnoreSettingsWhitelistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$BGmelFAxucJqCfszA4IddXt0g0s(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onMotionPowerSaveModeChanged$11(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CoyDDJvsDAVdhjzGX-_Q8Galtqc(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$getCurrentLocation$2(Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F6B3GDX_9_-C_GEaZvMsTrj69Ig(Lcom/android/server/location/provider/LocationProviderManager;ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FC2urllOKKv1_fE87f2pdRVTdA0(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onEnabledChanged$20(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fi423UMdKbBk3fbNHsDZm4AqDlM(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$checkSettingsIgnoredChanged$21(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ICBmBzn4OQ1q9fudJbjoeTHydkk(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$flush$5(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J9m9nWcPAjJiADStZRTnngu73-Y(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onStateChanged$16(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MmjwHkgLCRbyiUQZjZgXldJAm2U(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onLocationPermissionsChanged$14(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NgitB_TKD5RQKnwzIs-1oknh7uU(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onLocationPowerSaveModeChanged$10(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Nk4JfyItzXFeB2tLCr3Ehg0XE8k(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onLocationUserSettingsChanged$8(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PVvP9L83z4EzNcoj4Gs00E0MI_A(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onUserChanged$7(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RYed_vtaZnnYqxlvwQkjiVZutKw(Lcom/android/server/location/provider/LocationProviderManager;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onUserChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$StREXwiVrBSGbK4aHVzKI4BVQCo(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$stopManager$0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VXCTZFybmwpXamBN5iQYFTl4p2Y(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onLocationPackageBlacklistChanged$13(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W7lFZ20cmhWN84apIwWNMvRAwMo(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onAdasAllowlistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wib0w5J11DGT4gon8RufeZ6yxck(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$flush$4(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XDWWWHw0PXJKtJToOMmX_ZM_PGw(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onScreenInteractiveChanged$9(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XwSTER5peCHpgzspHAwgfWe2eCA(IZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onAppForegroundChanged$12(IZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fGZnX5lK5rYY0AGlEt3QAvn8lDI(Lcom/android/server/location/provider/LocationProviderManager;[Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onEnabledChanged$19([Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$fIoNTobs61StXMNZ0ubcdArVE2A(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPackageBlacklistChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gx0iV2d4Hs92jTtc8DG3AG6vEC4(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPowerSaveModeChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4yxqFMnHPWXkTr04uDEnkKXNeQ(Lcom/android/server/location/provider/LocationProviderManager;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$iEZNuv75erhlabky0qpaexP4XKA(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$setProviderRequest$6(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iYYtJ5cq7fJsNaZmXOLCavDa8i4(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationEnabledChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jXPM84Np9lWFYM9JFa0OOlB9zPs(Ljava/lang/RuntimeException;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$getCurrentLocation$1(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k0eBDH-twsNeF0Qm-OsdapOk94c(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onReportLocation$18(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kzPYL5xDs-S-SSDHjCOt9vDwMiQ(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/Location;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onReportLocation$17(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ocnId8aeOUg5JILeBpsY-M1UGAA(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onBackgroundThrottlePackageWhitelistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$tOu2N67zuUYfUXiymWsHUx8mz2o(Lcom/android/server/location/provider/LocationProviderManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onScreenInteractiveChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zaqnFTAVGfnC-8Z9pVrqEeV3UeM(Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$getPredicate$3(Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;)Landroid/app/AlarmManager$OnAlarmListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNSLocationProviderHelper(Lcom/android/server/location/provider/LocationProviderManager;)Lcom/android/server/location/nsflp/NSLocationProviderHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPermissionsChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPermissionsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V
    .registers 7

    .line 1510
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 1420
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    .line 1454
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 1455
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    .line 1457
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 1459
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1461
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 1463
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 1475
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    .line 1477
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1479
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1481
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1483
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    .line 1485
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

    .line 1488
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mMotionPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;

    const/4 v1, 0x0

    .line 1504
    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsSettingsIgnored:Z

    .line 1505
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    .line 1506
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    .line 1511
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 1513
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 1514
    iput-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const/4 p1, 0x2

    .line 1515
    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1516
    new-instance p3, Landroid/util/SparseBooleanArray;

    invoke-direct {p3, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 1517
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 1519
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    .line 1520
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1522
    const-class p1, Landroid/location/LocationManagerInternal;

    .line 1523
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManagerInternal;

    .line 1522
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Landroid/location/LocationManagerInternal;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 1524
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 1525
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 1526
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    .line 1527
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getAlarmHelper()Lcom/android/server/location/injector/AlarmHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    .line 1528
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 1529
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 1530
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    .line 1531
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationPowerSaveModeHelper()Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    .line 1532
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getScreenInteractiveHelper()Lcom/android/server/location/injector/ScreenInteractiveHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    .line 1533
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 1534
    new-instance p3, Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p1}, Lcom/android/server/location/injector/SettingsHelper;->getCoarseLocationAccuracyM()F

    move-result p1

    invoke-direct {p3, p1}, Lcom/android/server/location/fudger/LocationFudger;-><init>(F)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    .line 1536
    new-instance p1, Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-direct {p1, v0}, Lcom/android/server/location/provider/MockableLocationProvider;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 1539
    invoke-virtual {p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/server/location/provider/LocationProviderController;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 1542
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 1543
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getNSConnectionHelper()Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    .line 154
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public static synthetic lambda$checkSettingsIgnoredChanged$21(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    .line 3165
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$flush$4(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2035
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->flush(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$flush$5(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2052
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->flush(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$getCurrentLocation$1(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 1945
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private synthetic lambda$getCurrentLocation$2(Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V
    .registers 6

    .line 1935
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1937
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_7} :catch_18
    .catchall {:try_start_4 .. :try_end_7} :catchall_16

    .line 1938
    :try_start_7
    invoke-interface {p1}, Landroid/location/ILocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 1939
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 1949
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    .line 1939
    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p0
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_16} :catch_18
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    .line 1944
    :try_start_19
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda23;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1947
    throw p0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_16

    .line 1949
    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1950
    throw p0
.end method

.method public static synthetic lambda$getPredicate$3(Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2027
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

.method public static synthetic lambda$onAppForegroundChanged$12(IZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3

    .line 2646
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onForegroundChanged(IZ)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onEnabledChanged$19([Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V
    .registers 7

    const/4 v0, 0x0

    .line 2873
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 2874
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p3}, Landroid/location/LocationManagerInternal$ProviderEnabledListener;->onProviderEnabledChanged(Ljava/lang/String;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public static synthetic lambda$onEnabledChanged$20(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2881
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

.method public static synthetic lambda$onLocationPackageBlacklistChanged$13(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2664
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

.method public static synthetic lambda$onLocationPermissionsChanged$14(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2671
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onLocationPermissionsChanged$15(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2677
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onLocationPowerSaveModeChanged$10(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$onLocationUserSettingsChanged$8(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2583
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onAdasGnssLocationEnabledChanged(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onMotionPowerSaveModeChanged$11(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onReportLocation$17(Landroid/location/Location;)Z
    .registers 10

    .line 2714
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, " provider"

    const-string v3, "LocationManagerService"

    if-nez v0, :cond_37

    .line 2715
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_37

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v0, v4, v6

    if-nez v0, :cond_37

    .line 2716
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "blocking 0,0 location from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2721
    :cond_37
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result p1

    if-nez p1, :cond_57

    .line 2722
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "blocking incomplete location from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_57
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$onReportLocation$18(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 2

    .line 2755
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onScreenInteractiveChanged$9(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onStateChanged$16(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 4

    .line 2700
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {p1, p0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;->onStateChanged(Ljava/lang/String;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-void
.end method

.method public static synthetic lambda$onUserChanged$7(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2566
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

.method private synthetic lambda$setProviderRequest$6(Landroid/location/provider/ProviderRequest;)V
    .registers 5

    .line 2303
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/provider/IProviderRequestListener;

    .line 2305
    :try_start_12
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/location/provider/IProviderRequestListener;->onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 2307
    :catch_18
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public static synthetic lambda$stopManager$0(Ljava/lang/Object;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .registers 5

    .line 1646
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1647
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1648
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 2

    .line 1661
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final calculateLastLocationRequest(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;
    .registers 9

    .line 1780
    new-instance v0, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v0, p1}, Landroid/location/LastLocationRequest$Builder;-><init>(Landroid/location/LastLocationRequest;)V

    .line 1782
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isLocationSettingsIgnored()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 1785
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    .line 1786
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1785
    invoke-virtual {v3, v4, v5}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const/4 v4, 0x0

    .line 1787
    invoke-virtual {v3, v4, p2}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v3

    if-nez v3, :cond_2a

    move v1, v2

    .line 1791
    :cond_2a
    invoke-virtual {v0, v1}, Landroid/location/LastLocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;

    .line 1794
    :cond_2d
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isAdasGnssBypass()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1797
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v3, "gps"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string p0, "LocationManagerService"

    const-string p1, "adas gnss bypass request received in non-gps provider"

    .line 1798
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 1800
    :cond_46
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 1801
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    .line 1800
    invoke-virtual {v1, v3}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v1

    .line 1801
    invoke-virtual {v1}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_6d

    .line 1803
    :cond_57
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object p0

    .line 1804
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    .line 1803
    invoke-virtual {p0, v1, p2}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v2, p1

    .line 1808
    :goto_6d
    invoke-virtual {v0, v2}, Landroid/location/LastLocationRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/LastLocationRequest$Builder;

    .line 1811
    :cond_70
    invoke-virtual {v0}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public calculateRequestDelayMillis(JLjava/util/Collection;)J
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)J"
        }
    .end annotation

    .line 2522
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_17

    goto :goto_52

    .line 2527
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v3

    .line 2528
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v4

    if-nez v4, :cond_3d

    .line 2530
    invoke-virtual {v3}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 2535
    invoke-virtual {v0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v6

    .line 2536
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v7

    const/4 v8, 0x0

    .line 2538
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v9

    move-object v5, p0

    .line 2534
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v4

    :cond_3d
    if-nez v4, :cond_40

    goto :goto_4d

    .line 2548
    :cond_40
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v3

    sub-long/2addr v5, v3

    .line 2547
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 2551
    :goto_4d
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    goto :goto_4

    :cond_52
    :goto_52
    return-wide p1
.end method

.method public final checkActiveNsflp(ZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 6

    .line 2338
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return p1

    :cond_c
    if-eqz p1, :cond_27

    .line 2343
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "try to release motion power when coming new active request"

    .line 2344
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->checkMotionPowerSaveMode()V

    .line 2347
    :cond_21
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2349
    :cond_27
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_2c
    const/4 v0, 0x1

    if-eqz p1, :cond_59

    .line 2352
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v1

    if-nez v1, :cond_59

    .line 2353
    invoke-virtual {p2, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->setActiveMotionControl(Z)Z

    .line 2355
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    .line 2356
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 2357
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-virtual {p1, v0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onAvailableMotionStop(Z)V

    .line 2359
    :cond_51
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->isMotionPowerSaveMode()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_59
    const/4 v1, 0x0

    .line 2362
    invoke-virtual {p2, v1}, Lcom/android/server/location/listeners/ListenerRegistration;->setActiveMotionControl(Z)Z

    .line 2364
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_72

    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    .line 2365
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ne p2, v0, :cond_72

    .line 2366
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-virtual {p0, v1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onAvailableMotionStop(Z)V

    :cond_72
    return p1
.end method

.method public checkLimitAndPutRegistration(Ljava/lang/Runnable;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5

    .line 2019
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 2020
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->getPredicate(Landroid/location/util/identity/CallerIdentity;)Ljava/util/function/Predicate;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getRegistrationCountWith(Ljava/util/function/Predicate;)I

    move-result p0

    const/16 p2, 0x1e

    if-ge p0, p2, :cond_17

    .line 2022
    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void
.end method

.method public final checkMotionPowerSaveMode()V
    .registers 4

    .line 3172
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-virtual {v0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->isMotionPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "LocationManagerService"

    const-string v1, "checkMotionPowerSaveMode, motion power save mode is changed to false"

    .line 3174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v1, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_POWER_DISABLE:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 3176
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->notifyMotionPowerSaveModeChanged(Z)V

    return-void
.end method

.method public final checkSettingsIgnoredChanged(ZZLjava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)V"
        }
    .end annotation

    if-ne p1, p2, :cond_3

    return-void

    .line 3161
    :cond_3
    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsSettingsIgnored:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_21

    if-eqz p3, :cond_21

    .line 3164
    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;-><init>()V

    .line 3165
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    .line 3166
    invoke-interface {p3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 3168
    :cond_21
    iget-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p3, p0, p2, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->sendSettingsIgnoreInfo(Ljava/lang/String;ZLcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 16

    .line 2912
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2913
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " provider"

    .line 2914
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2915
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, " [mock]"

    .line 2916
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1a
    const-string v1, ":"

    .line 2918
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2921
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2923
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object v1

    .line 2924
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_71

    aget v10, v1, v3

    .line 2925
    array-length v4, v1

    const/4 v11, 0x1

    if-eq v4, v11, :cond_46

    const-string/jumbo v4, "user "

    .line 2926
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2927
    invoke-virtual {p2, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, ":"

    .line 2928
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_46
    const-string/jumbo v4, "last location="

    .line 2931
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    move-object v4, p0

    move v5, v10

    .line 2932
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "enabled="

    .line 2933
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2934
    invoke-virtual {p0, v10}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2935
    array-length v4, v1

    if-eq v4, v11, :cond_6e

    .line 2936
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 2939
    :cond_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_7b

    .line 2941
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/MockableLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2943
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_7b
    move-exception p0

    .line 2939
    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public flush(Landroid/app/PendingIntent;I)V
    .registers 7

    .line 2048
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2049
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_25

    .line 2051
    :try_start_7
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_20

    if-eqz p0, :cond_17

    .line 2060
    :try_start_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2062
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_25

    return-void

    .line 2056
    :cond_17
    :try_start_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unregistered pending intent cannot be flushed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 2060
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2061
    throw p0

    :catchall_25
    move-exception p0

    .line 2062
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public flush(Landroid/location/ILocationListener;I)V
    .registers 7

    .line 2031
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2032
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_29

    .line 2034
    :try_start_7
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_24

    if-eqz p0, :cond_1b

    .line 2042
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2044
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_29

    return-void

    .line 2039
    :cond_1b
    :try_start_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unregistered listener cannot be flushed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 2042
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2043
    throw p0

    :catchall_29
    move-exception p0

    .line 2044
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public getCurrentLocation(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationCallback;)Landroid/os/ICancellationSignal;
    .registers 11

    .line 1904
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 1905
    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 1906
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    .line 1907
    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p1

    :cond_17
    move-object v2, p1

    .line 1910
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;

    invoke-direct {v4, p4}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;-><init>(Landroid/location/ILocationCallback;)V

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    .line 1917
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1918
    :try_start_29
    iget p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_30

    const/4 p3, 0x1

    goto :goto_31

    :cond_30
    const/4 p3, 0x0

    :goto_31
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_62

    .line 1921
    :try_start_38
    invoke-interface {p4}, Landroid/location/ILocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 1922
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result p3

    if-nez p3, :cond_48

    .line 1924
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->deliverNull()V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_5d

    .line 1927
    :cond_48
    :try_start_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1929
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_62

    .line 1931
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object p2

    .line 1932
    invoke-static {p2}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p3

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p4, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V

    .line 1933
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object p2

    :catchall_5d
    move-exception p0

    .line 1927
    :try_start_5e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1928
    throw p0

    :catchall_62
    move-exception p0

    .line 1929
    monitor-exit p2
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_62

    throw p0
.end method

.method public getLastLocation(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;I)Landroid/location/Location;
    .registers 12

    .line 1749
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->calculateLastLocationRequest(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;

    move-result-object p1

    .line 1751
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isBypass()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(ZLandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    .line 1756
    :cond_10
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-static {p3}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_1d

    return-object v1

    .line 1763
    :cond_1d
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    .line 1765
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isBypass()Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, p0

    move v4, p3

    .line 1762
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object p1

    .line 1761
    invoke-virtual {p0, p1, p3}, Lcom/android/server/location/provider/LocationProviderManager;->getPermittedLocation(Landroid/location/Location;I)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 1769
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    if-ne p1, p2, :cond_46

    .line 1772
    new-instance p1, Landroid/location/Location;

    invoke-direct {p1, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object p0, p1

    :cond_46
    return-object p0
.end method

.method public getLastLocationUnsafe(IIZJ)Landroid/location/Location;
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2d

    .line 1826
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    .line 1827
    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_2c

    .line 1828
    aget v4, p1, v0

    move-object v3, p0

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v2

    if-eqz v1, :cond_28

    if-eqz v2, :cond_29

    .line 1830
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    .line 1831
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_29

    :cond_28
    move-object v1, v2

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2c
    return-object v1

    :cond_2d
    const/4 v2, -0x2

    if-ne p1, v2, :cond_3f

    .line 1837
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_3f
    const/4 v2, 0x1

    if-ltz p1, :cond_44

    move v3, v2

    goto :goto_45

    :cond_44
    move v3, v0

    .line 1841
    :goto_45
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1844
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1845
    :try_start_4b
    iget v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_51

    move v0, v2

    :cond_51
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1846
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    if-nez p0, :cond_60

    move-object p0, v1

    goto :goto_64

    .line 1850
    :cond_60
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->get(IZ)Landroid/location/Location;

    move-result-object p0

    .line 1852
    :goto_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_72

    if-nez p0, :cond_68

    return-object v1

    .line 1858
    :cond_68
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide p1

    cmp-long p1, p1, p4

    if-lez p1, :cond_71

    return-object v1

    :cond_71
    return-object p0

    :catchall_72
    move-exception p0

    .line 1852
    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 1603
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermittedLocation(Landroid/location/Location;I)Landroid/location/Location;
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 p0, 0x2

    if-ne p2, p0, :cond_7

    return-object p1

    .line 2893
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    if-eqz p1, :cond_16

    .line 2890
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p0, p1}, Lcom/android/server/location/fudger/LocationFudger;->createCoarse(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 p0, 0x2

    if-ne p2, p0, :cond_7

    return-object p1

    .line 2907
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    if-eqz p1, :cond_16

    .line 2903
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p0, p1}, Lcom/android/server/location/fudger/LocationFudger;->createCoarse(Landroid/location/LocationResult;)Landroid/location/LocationResult;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public getPredicate(Landroid/location/util/identity/CallerIdentity;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/util/identity/CallerIdentity;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;"
        }
    .end annotation

    .line 2027
    new-instance p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;-><init>(Landroid/location/util/identity/CallerIdentity;)V

    return-object p0
.end method

.method public getProperties()Landroid/location/provider/ProviderProperties;
    .registers 1

    .line 1615
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    return-object p0
.end method

.method public getProviderIdentity()Landroid/location/util/identity/CallerIdentity;
    .registers 1

    .line 1611
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    return-object p0
.end method

.method public getServiceState()Ljava/lang/String;
    .registers 1

    .line 2948
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->getCurrentRequest()Landroid/location/provider/ProviderRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 1

    .line 1607
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "LocationManagerService"

    return-object p0
.end method

.method public hasProvider()Z
    .registers 1

    .line 1619
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->getProvider()Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public injectLastLocation(Landroid/location/Location;I)V
    .registers 11

    .line 1866
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1867
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, p0

    move v3, p2

    .line 1868
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1869
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 1871
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public bridge synthetic isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 154
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public isActive(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2333
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isActiveOriginal(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->checkActiveNsflp(ZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public final isActive(ZLandroid/location/util/identity/CallerIdentity;)Z
    .registers 5

    .line 2421
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    if-nez p1, :cond_41

    .line 2423
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    if-nez p0, :cond_41

    return v1

    :cond_16
    if-nez p1, :cond_30

    .line 2429
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_23

    return v1

    .line 2432
    :cond_23
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/location/injector/UserInfoHelper;->isCurrentUserId(I)Z

    move-result p1

    if-nez p1, :cond_30

    return v1

    .line 2436
    :cond_30
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    .line 2437
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 2436
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    return v1

    :cond_41
    const/4 p0, 0x1

    return p0
.end method

.method public final isActiveOriginal(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 6

    .line 2377
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2378
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2381
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    .line 2385
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v0

    .line 2386
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(ZLandroid/location/util/identity/CallerIdentity;)Z

    move-result v2

    if-nez v2, :cond_28

    return v1

    :cond_28
    const/4 v2, 0x1

    if-nez v0, :cond_67

    .line 2391
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->getLocationPowerSaveMode()I

    move-result v0

    if-eq v0, v2, :cond_44

    const/4 v3, 0x2

    if-eq v0, v3, :cond_50

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3d

    const/4 v3, 0x4

    if-eq v0, v3, :cond_50

    goto :goto_67

    .line 2393
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result p0

    if-nez p0, :cond_67

    return v1

    .line 2398
    :cond_44
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v3, "gps"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_67

    .line 2405
    :cond_50
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_67

    .line 2406
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isChnNavigationApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_67

    return v1

    :cond_67
    :goto_67
    return v2
.end method

.method public final isChnNavigationApp(Ljava/lang/String;)Z
    .registers 7

    .line 2316
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 2320
    :cond_c
    sget-object p0, Lcom/android/server/location/gnss/sec/GnssConstants;->NAVIGATION_APP_LIST:[Ljava/lang/String;

    array-length v1, p0

    move v2, v0

    :goto_10
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    .line 2321
    new-instance v4, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 2322
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    return v0
.end method

.method public isEnabled(I)Z
    .registers 6

    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_6

    return v0

    :cond_6
    const/4 v1, -0x2

    if-ne p1, v1, :cond_14

    .line 1626
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    return p0

    :cond_14
    if-ltz p1, :cond_17

    const/4 v0, 0x1

    .line 1629
    :cond_17
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1631
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1632
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_4e

    const-string v1, "LocationManagerService"

    .line 1636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider saw user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " unexpectedly"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 1638
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    .line 1641
    :cond_4e
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_56
    move-exception p0

    .line 1642
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_1d .. :try_end_58} :catchall_56

    throw p0
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)",
            "Landroid/location/provider/ProviderRequest;"
        }
    .end annotation

    .line 2448
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2449
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_d
    const/16 p0, 0x68

    const/4 v0, 0x1

    .line 2459
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move v5, v2

    move-wide v6, v3

    move-wide v8, v6

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2460
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v10

    .line 2464
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    cmp-long v11, v11, v3

    if-nez v11, :cond_36

    goto :goto_1d

    .line 2468
    :cond_36
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 2469
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getQuality()I

    move-result v11

    invoke-static {v11, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 2470
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v11

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 2471
    invoke-virtual {v10}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result v11

    or-int/2addr v2, v11

    .line 2472
    invoke-virtual {v10}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v11

    or-int/2addr v5, v11

    .line 2473
    invoke-virtual {v10}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v10

    and-int/2addr v0, v10

    goto :goto_1d

    :cond_5e
    cmp-long v1, v6, v3

    if-nez v1, :cond_65

    .line 2477
    sget-object p0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    return-object p0

    :cond_65
    const-wide/16 v3, 0x2

    .line 2480
    div-long v10, v8, v3

    cmp-long v1, v10, v6

    if-gez v1, :cond_6f

    const-wide/16 v8, 0x0

    :cond_6f
    const-wide/16 v10, 0x3e8

    .line 2491
    :try_start_71
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    div-long/2addr v10, v3

    const/4 v1, 0x3

    invoke-static {v10, v11, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v3
    :try_end_7b
    .catch Ljava/lang/ArithmeticException; {:try_start_71 .. :try_end_7b} :catch_7c

    goto :goto_81

    :catch_7c
    const-wide v3, 0x7ffffffffffffffeL

    .line 2498
    :goto_81
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 2499
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8a
    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2500
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v11

    invoke-virtual {v11}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    cmp-long v11, v11, v3

    if-gtz v11, :cond_8a

    .line 2501
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v10

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_8a

    .line 2505
    :cond_ae
    new-instance p1, Landroid/location/provider/ProviderRequest$Builder;

    invoke-direct {p1}, Landroid/location/provider/ProviderRequest$Builder;-><init>()V

    .line 2506
    invoke-virtual {p1, v6, v7}, Landroid/location/provider/ProviderRequest$Builder;->setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 2507
    invoke-virtual {p1, p0}, Landroid/location/provider/ProviderRequest$Builder;->setQuality(I)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    .line 2508
    invoke-virtual {p0, v8, v9}, Landroid/location/provider/ProviderRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    .line 2509
    invoke-virtual {p0, v2}, Landroid/location/provider/ProviderRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    .line 2510
    invoke-virtual {p0, v5}, Landroid/location/provider/ProviderRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    .line 2511
    invoke-virtual {p0, v0}, Landroid/location/provider/ProviderRequest$Builder;->setLowPower(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    .line 2512
    invoke-virtual {p0, v1}, Landroid/location/provider/ProviderRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    .line 2513
    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest$Builder;->build()Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public final onAdasAllowlistChanged()V
    .registers 3

    .line 2651
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2652
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2653
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onAppForegroundChanged(IZ)V
    .registers 5

    .line 2645
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2646
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;-><init>(IZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2647
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onBackgroundThrottleIntervalChanged()V
    .registers 3

    .line 2624
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2625
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2626
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onBackgroundThrottlePackageWhitelistChanged()V
    .registers 3

    .line 2618
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2619
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2620
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onEnabledChanged(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2809
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2810
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_d
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_12

    return-void

    :cond_12
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_28

    .line 2818
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    .line 2819
    :goto_1c
    array-length v0, p1

    if-ge v1, v0, :cond_27

    .line 2820
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_27
    return-void

    :cond_28
    const/4 v0, 0x1

    if-ltz p1, :cond_2d

    move v2, v0

    goto :goto_2e

    :cond_2d
    move v2, v1

    .line 2825
    :goto_2e
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2827
    iget v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    if-nez v2, :cond_48

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 2828
    invoke-virtual {v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 2829
    invoke-virtual {v2, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 2831
    :goto_49
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_53

    const/4 v2, 0x0

    goto :goto_5d

    .line 2832
    :cond_53
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_5d
    if-eqz v2, :cond_66

    .line 2833
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_66

    return-void

    .line 2837
    :cond_66
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-nez v2, :cond_6f

    if-eqz v0, :cond_9e

    .line 2842
    :cond_6f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " provider enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    sget-object v3, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderEnabled(Ljava/lang/String;IZ)V

    :cond_9e
    if-nez v0, :cond_ad

    .line 2849
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    if-eqz v3, :cond_ad

    .line 2851
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->clearLocations()V

    :cond_ad
    if-eqz v2, :cond_102

    .line 2858
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v3, "passive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    .line 2859
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string v4, "android.location.extra.PROVIDER_NAME"

    .line 2860
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.location.extra.PROVIDER_ENABLED"

    .line 2861
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 2862
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 2863
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 2864
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2869
    :cond_e4
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_102

    .line 2870
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    new-array v1, v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 2872
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/location/provider/LocationProviderManager;[Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2881
    :cond_102
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onIgnoreSettingsWhitelistChanged()V
    .registers 3

    .line 2657
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2658
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2659
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onLocationEnabledChanged(I)V
    .registers 5

    .line 2589
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2590
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 2591
    monitor-exit v0

    return-void

    .line 2594
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 2595
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final onLocationPackageBlacklistChanged(I)V
    .registers 4

    .line 2663
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2664
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda27;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2665
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onLocationPermissionsChanged(I)V
    .registers 4

    .line 2676
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2677
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2678
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onLocationPermissionsChanged(Ljava/lang/String;)V
    .registers 4

    .line 2669
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2670
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2672
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onLocationPowerSaveModeChanged(I)V
    .registers 3

    .line 2630
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2632
    :try_start_3
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2633
    monitor-exit p1

    return-void

    :catchall_d
    move-exception p0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 4

    .line 2580
    invoke-virtual {p2}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p2

    invoke-virtual {p3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p3

    if-eq p2, p3, :cond_1a

    .line 2581
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2582
    :try_start_d
    new-instance p3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda24;

    invoke-direct {p3, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda24;-><init>(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2584
    monitor-exit p2

    goto :goto_1a

    :catchall_17
    move-exception p0

    monitor-exit p2
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw p0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final onMotionPowerSaveModeChanged(Z)V
    .registers 3

    .line 2638
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2639
    :try_start_3
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2640
    monitor-exit p1

    return-void

    :catchall_d
    move-exception p0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public onRegister()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2092
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2093
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2096
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2098
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2100
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 2102
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2104
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2106
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->addListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    .line 2107
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->addListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    .line 2108
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->addListener(Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;)V

    .line 2109
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->addListener(Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;)V

    .line 2110
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mMotionPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->addListener(Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;)V

    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 154
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method public onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2139
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2140
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2143
    :cond_d
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2146
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2147
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2149
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v7

    instance-of v8, p1, Landroid/app/PendingIntent;

    instance-of v9, p1, Landroid/os/IBinder;

    const/4 v10, 0x0

    .line 2152
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v11

    .line 2143
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 154
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method public onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2168
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2169
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2172
    :cond_d
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 2175
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2176
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2178
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v7

    instance-of v8, p1, Landroid/app/PendingIntent;

    instance-of v9, p1, Landroid/os/IBinder;

    const/4 v10, 0x0

    .line 2181
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v11

    .line 2172
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 2184
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz p1, :cond_3c

    .line 2185
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateRemoveInfo(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    :cond_3c
    return-void
.end method

.method public bridge synthetic onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 154
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    check-cast p3, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method public onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2161
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->setLastDeliveredLocation(Landroid/location/Location;)V

    .line 2162
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public onReportLocation(Landroid/location/LocationResult;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2707
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2708
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2712
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eqz v0, :cond_32

    .line 2713
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->filter(Ljava/util/function/Predicate;)Landroid/location/LocationResult;

    move-result-object v0

    if-nez v0, :cond_1d

    return-void

    .line 2734
    :cond_1d
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/LocationResult;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderReceivedLocations(Ljava/lang/String;I)V

    .line 2737
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {v0}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onPassiveLocationReported(Landroid/location/Location;)V

    goto :goto_33

    :cond_32
    move-object v0, p1

    :goto_33
    const/4 v2, -0x2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, p0

    .line 2744
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_71

    const/4 v2, 0x0

    .line 2745
    invoke-virtual {p1, v2}, Landroid/location/LocationResult;->get(I)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    .line 2746
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_71

    .line 2747
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "non-monotonic location received from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LocationManagerService"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_71
    invoke-virtual {v0}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 2754
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda34;

    invoke-direct {p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda34;-><init>(Landroid/location/LocationResult;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    .line 2759
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eqz p0, :cond_88

    .line 2760
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/PassiveLocationProviderManager;->updateLocation(Landroid/location/LocationResult;)V

    :cond_88
    return-void
.end method

.method public final onScreenInteractiveChanged(Z)V
    .registers 4

    .line 2599
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2600
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->getLocationPowerSaveMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    goto :goto_27

    :cond_13
    const-string/jumbo v0, "gps"

    .line 2602
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_27

    .line 2609
    :cond_1f
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2614
    :goto_27
    monitor-exit p1

    return-void

    :catchall_29
    move-exception p0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2685
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2686
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2689
    :cond_d
    iget-boolean v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    iget-boolean v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-eq v0, v1, :cond_17

    const/4 v0, -0x1

    .line 2690
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 2693
    :cond_17
    iget-object v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2694
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2697
    :cond_29
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    if-eqz v0, :cond_39

    .line 2699
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_39
    return-void
.end method

.method public bridge synthetic onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 154
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onTransferUnregisteredRegistration(Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method public onTransferUnregisteredRegistration(Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2201
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2202
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2204
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 2206
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2207
    invoke-virtual {p1, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->setActiveMotionControl(Z)Z

    .line 2209
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    .line 2210
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 2211
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onAvailableMotionStop(Z)V

    :cond_38
    return-void
.end method

.method public onUnregister()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2116
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2117
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2120
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2122
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2124
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 2126
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2127
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2129
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->removeListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    .line 2130
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->removeListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    .line 2131
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->removeListener(Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;)V

    .line 2132
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->removeListener(Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;)V

    .line 2133
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mMotionPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->removeListener(Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;)V

    return-void
.end method

.method public final onUserChanged(II)V
    .registers 6

    .line 2558
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2559
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 2560
    monitor-exit v0

    return-void

    :cond_a
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1b

    if-eq p2, v2, :cond_17

    const/4 v1, 0x3

    if-eq p2, v1, :cond_13

    goto :goto_23

    .line 2572
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStopped(I)V

    goto :goto_23

    .line 2569
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStarted(I)V

    goto :goto_23

    .line 2565
    :cond_1b
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2575
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final onUserStarted(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2766
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2767
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_d
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_12

    return-void

    :cond_12
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1e

    .line 2776
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2777
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    goto :goto_2e

    :cond_1e
    if-ltz p1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 2779
    :goto_23
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2782
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2783
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    :goto_2e
    return-void
.end method

.method public final onUserStopped(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2789
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2790
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_d
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_12

    return-void

    :cond_12
    const/4 v0, -0x1

    if-ne p1, v0, :cond_20

    .line 2798
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2799
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_32

    :cond_20
    if-ltz p1, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 2801
    :goto_25
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2802
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2803
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_32
    return-void
.end method

.method public registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/app/PendingIntent;)V
    .registers 12

    .line 1991
    new-instance v6, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, p4}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;I)V

    if-eqz p4, :cond_16

    .line 1999
    invoke-virtual {v6, p4}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->setPendingIntentId(Landroid/app/PendingIntent;)V

    .line 2002
    :cond_16
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2003
    :try_start_19
    iget p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_20

    const/4 p3, 0x1

    goto :goto_21

    :cond_20
    const/4 p3, 0x0

    :goto_21
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2004
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_3a

    .line 2007
    :try_start_28
    new-instance p3, Lcom/android/server/location/provider/LocationProviderManager$3;

    invoke-direct {p3, p0, p4, v6}, Lcom/android/server/location/provider/LocationProviderManager$3;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/app/PendingIntent;Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;)V

    invoke-virtual {p0, p3, p2}, Lcom/android/server/location/provider/LocationProviderManager;->checkLimitAndPutRegistration(Ljava/lang/Runnable;Landroid/location/util/identity/CallerIdentity;)V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_35

    .line 2013
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2015
    monitor-exit p1

    return-void

    :catchall_35
    move-exception p0

    .line 2013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2014
    throw p0

    :catchall_3a
    move-exception p0

    .line 2015
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationListener;)V
    .registers 12

    .line 1967
    new-instance v6, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;

    invoke-direct {v4, p4}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;-><init>(Landroid/location/ILocationListener;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;I)V

    .line 1973
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1974
    :try_start_12
    iget p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_19

    const/4 p3, 0x1

    goto :goto_1a

    :cond_19
    const/4 p3, 0x0

    :goto_1a
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1975
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_33

    .line 1978
    :try_start_21
    new-instance p3, Lcom/android/server/location/provider/LocationProviderManager$2;

    invoke-direct {p3, p0, p4, v6}, Lcom/android/server/location/provider/LocationProviderManager$2;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/ILocationListener;Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;)V

    invoke-virtual {p0, p3, p2}, Lcom/android/server/location/provider/LocationProviderManager;->checkLimitAndPutRegistration(Ljava/lang/Runnable;Landroid/location/util/identity/CallerIdentity;)V
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_2e

    .line 1984
    :try_start_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1986
    monitor-exit p1

    return-void

    :catchall_2e
    move-exception p0

    .line 1984
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1985
    throw p0

    :catchall_33
    move-exception p0

    .line 1986
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public registerWithService(Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/provider/ProviderRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)Z"
        }
    .end annotation

    .line 2194
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 154
    check-cast p1, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->registerWithService(Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .registers 5

    .line 1653
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1654
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1655
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1656
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 2

    .line 1666
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/provider/ProviderRequest;",
            "Landroid/location/provider/ProviderRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)Z"
        }
    .end annotation

    .line 2220
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2221
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2228
    :cond_d
    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_28

    .line 2230
    :cond_1c
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_2a

    :goto_28
    move-wide v3, v1

    goto :goto_32

    .line 2237
    :cond_2a
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/server/location/provider/LocationProviderManager;->calculateRequestDelayMillis(JLjava/util/Collection;)J

    move-result-wide v3

    :goto_32
    cmp-long v0, v3, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_41

    .line 2241
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-wide/16 v5, 0x7530

    cmp-long v0, v3, v5

    if-gez v0, :cond_4f

    .line 2244
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_8e

    .line 2247
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider delaying request update "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationManagerService"

    .line 2247
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_82

    .line 2252
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v5, v0}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2253
    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 2256
    :cond_82
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$4;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$4;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 2271
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v5, v3, v4, v0, v2}, Lcom/android/server/location/injector/AlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/WorkSource;)V

    .line 2274
    :goto_8e
    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result p1

    .line 2275
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result p2

    .line 2274
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->checkSettingsIgnoredChanged(ZZLjava/util/Collection;)V

    return v1
.end method

.method public bridge synthetic reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 154
    check-cast p1, Landroid/location/provider/ProviderRequest;

    check-cast p2, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 1957
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1959
    :try_start_4
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/LocationProviderController;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 1961
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1962
    throw p0
.end method

.method public final setLastLocation(Landroid/location/Location;I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_16

    .line 1876
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p2}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object p2

    .line 1877
    :goto_a
    array-length v1, p2

    if-ge v0, v1, :cond_15

    .line 1878
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    return-void

    :cond_16
    const/4 v1, -0x2

    if-ne p2, v1, :cond_23

    .line 1882
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p2}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    return-void

    :cond_23
    if-ltz p2, :cond_26

    const/4 v0, 0x1

    .line 1886
    :cond_26
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1888
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1889
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    if-nez v1, :cond_40

    .line 1891
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;-><init>()V

    .line 1892
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1895
    :cond_40
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 1896
    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->set(Landroid/location/Location;)V

    .line 1898
    :cond_49
    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->setBypass(Landroid/location/Location;)V

    .line 1899
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .registers 7

    .line 1683
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1684
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v4

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1686
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    move v3, v4

    :goto_18
    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderMocked(Ljava/lang/String;Z)V

    .line 1688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_4b

    .line 1690
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_46

    .line 1692
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p1, :cond_44

    .line 1699
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2f
    if-ge v4, p1, :cond_3f

    .line 1701
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->clearMock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 1704
    :cond_3f
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->resetOffsets()V

    .line 1706
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    .line 1692
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1693
    throw p0

    :catchall_4b
    move-exception p0

    .line 1706
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_24 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public setMockProviderAllowed(Z)V
    .registers 5

    .line 1710
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1711
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1715
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_37

    .line 1717
    :try_start_f
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProviderAllowed(Z)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1719
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1721
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    .line 1719
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1720
    throw p0

    .line 1712
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " provider is not a test provider"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_37
    move-exception p0

    .line 1721
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .registers 9

    .line 1725
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1726
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1730
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 1731
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "33091107"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1734
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1738
    :cond_4f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_7b

    .line 1740
    :try_start_53
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProviderLocation(Landroid/location/Location;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_5d

    .line 1742
    :try_start_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1744
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    .line 1742
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1743
    throw p0

    .line 1727
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " provider is not a test provider"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_7b
    move-exception p0

    .line 1744
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_58 .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public setProviderRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2294
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_c

    .line 2295
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    .line 2296
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 2299
    :cond_c
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderUpdateRequest(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    .line 2300
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 2302
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 5

    .line 1670
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1671
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1673
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    .line 1675
    :try_start_12
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 1677
    :try_start_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1679
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    .line 1677
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1678
    throw p0

    :catchall_21
    move-exception p0

    .line 1679
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public startManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;)V
    .registers 6

    .line 1553
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1554
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1555
    iput v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1556
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 1558
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {p1, v1}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 1559
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    invoke-virtual {p1, v1}, Lcom/android/server/location/settings/LocationSettings;->registerLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V

    .line 1560
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {p1, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 1562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_43

    .line 1564
    :try_start_2c
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    const/4 p1, -0x1

    .line 1565
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStarted(I)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3e

    .line 1567
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1569
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    .line 1567
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1568
    throw p0

    :catchall_43
    move-exception p0

    .line 1569
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public stopManager()V
    .registers 5

    .line 1573
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1574
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x1

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1575
    iput v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_66

    const/4 v3, -0x1

    .line 1579
    :try_start_15
    invoke-virtual {p0, v3}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 1580
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda31;

    invoke-direct {v3}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda31;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistrationIf(Ljava/util/function/Predicate;)V

    .line 1581
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v3}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/location/provider/LocationProviderController;->stop()V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_61

    .line 1583
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1586
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/UserInfoHelper;->removeListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 1587
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    invoke-virtual {v1, v2}, Lcom/android/server/location/settings/LocationSettings;->unregisterLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V

    .line 1588
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 1592
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1593
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1595
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1596
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 1597
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    const/4 v1, 0x2

    .line 1598
    iput v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1599
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    .line 1583
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1584
    throw p0

    :catchall_66
    move-exception p0

    .line 1599
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_29 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public unregisterLocationRequest(Landroid/app/PendingIntent;)V
    .registers 5

    .line 2078
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2079
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2080
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 2082
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    .line 2084
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2086
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    .line 2084
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2085
    throw p0

    :catchall_1f
    move-exception p0

    .line 2086
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public unregisterLocationRequest(Landroid/location/ILocationListener;)V
    .registers 5

    .line 2066
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2067
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2068
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    .line 2070
    :try_start_12
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    .line 2072
    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2074
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    .line 2072
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2073
    throw p0

    :catchall_23
    move-exception p0

    .line 2074
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public unregisterWithService()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2284
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2285
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2288
    :cond_d
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    .line 2289
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsSettingsIgnored:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->checkSettingsIgnoredChanged(ZZLjava/util/Collection;)V

    return-void
.end method
