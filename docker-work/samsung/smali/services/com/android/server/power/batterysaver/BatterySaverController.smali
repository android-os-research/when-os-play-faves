.class public Lcom/android/server/power/batterysaver/BatterySaverController;
.super Ljava/lang/Object;
.source "BatterySaverController.java"

# interfaces
.implements Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final REASON_ADAPTIVE_DYNAMIC_POWER_SAVINGS_CHANGED:I = 0xb

.field public static final REASON_DYNAMIC_POWER_SAVINGS_AUTOMATIC_OFF:I = 0xa

.field public static final REASON_DYNAMIC_POWER_SAVINGS_AUTOMATIC_ON:I = 0x9

.field public static final REASON_FULL_POWER_SAVINGS_CHANGED:I = 0xd

.field public static final REASON_INTERACTIVE_CHANGED:I = 0x5

.field public static final REASON_MANUAL_OFF:I = 0x3

.field public static final REASON_MANUAL_ON:I = 0x2

.field public static final REASON_PERCENTAGE_AUTOMATIC_OFF:I = 0x1

.field public static final REASON_PERCENTAGE_AUTOMATIC_ON:I = 0x0

.field public static final REASON_PLUGGED_IN:I = 0x7

.field public static final REASON_POLICY_CHANGED:I = 0x6

.field public static final REASON_SETTING_CHANGED:I = 0x8

.field public static final REASON_STICKY_RESTORE:I = 0x4

.field public static final REASON_TIMEOUT:I = 0xc

.field public static final TAG:Ljava/lang/String; = "BatterySaverController"


# instance fields
.field public mAdaptiveEnabledRaw:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mAdaptivePreviouslyEnabled:Z

.field public final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field public final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field public final mContext:Landroid/content/Context;

.field public mFullEnabledRaw:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mFullPreviouslyEnabled:Z

.field public final mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

.field public mIsInteractive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsPluggedIn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsPluggedIn(Lcom/android/server/power/batterysaver/BatterySaverController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misPolicyEnabled(Lcom/android/server/power/batterysaver/BatterySaverController;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateBatterySavingStats(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .registers 7

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 213
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 214
    new-instance p1, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 215
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 216
    invoke-virtual {p4, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    .line 217
    iput-object p5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 219
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    return-void
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_40

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "Full Power Savings changed"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "timeout"

    return-object p0

    :pswitch_1c
    const-string p0, "Adaptive Power Savings changed"

    return-object p0

    :pswitch_1f
    const-string p0, "Dynamic Warning Auto OFF"

    return-object p0

    :pswitch_22
    const-string p0, "Dynamic Warning Auto ON"

    return-object p0

    :pswitch_25
    const-string p0, "Setting changed"

    return-object p0

    :pswitch_28
    const-string p0, "Plugged in"

    return-object p0

    :pswitch_2b
    const-string p0, "Policy changed"

    return-object p0

    :pswitch_2e
    const-string p0, "Interactivity changed"

    return-object p0

    :pswitch_31
    const-string p0, "Sticky restore"

    return-object p0

    :pswitch_34
    const-string p0, "Manual OFF"

    return-object p0

    :pswitch_37
    const-string p0, "Manual ON"

    return-object p0

    :pswitch_3a
    const-string p0, "Percentage Auto OFF"

    return-object p0

    :pswitch_3d
    const-string p0, "Percentage Auto ON"

    return-object p0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public enableBatterySaver(ZI)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "BatterySaverController"

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableBatterySaver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    if-ne v1, p1, :cond_2e

    .line 300
    monitor-exit v0

    return-void

    .line 302
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullEnabledLocked(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updatePolicyLevelLocked()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 305
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 307
    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final getAdaptiveEnabledLocked()Z
    .registers 1

    .line 571
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    return p0
.end method

.method public getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 1

    .line 410
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object p0
.end method

.method public final getFullEnabledLocked()Z
    .registers 1

    .line 557
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    return p0
.end method

.method public getPolicyLocked(I)Landroid/os/BatterySaverPolicyConfig;
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getPolicyLocked(I)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->toConfig()Landroid/os/BatterySaverPolicyConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getPowerManager()Landroid/os/PowerManager;
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_16

    .line 247
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 250
    :cond_16
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public final getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    if-nez v0, :cond_26

    .line 510
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const v1, 0x1040381

    .line 511
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 514
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 515
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->isSystemPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 516
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_24

    .line 517
    :cond_20
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    .line 519
    :cond_26
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    return-object p0
.end method

.method public handleBatterySaverStateChanged(ZI)V
    .registers 14

    .line 438
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 440
    iget-object v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 441
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    move v1, v9

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v1, v10

    .line 444
    :goto_1d
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    if-eqz v2, :cond_23

    move v2, v10

    goto :goto_24

    :cond_23
    move v2, v9

    .line 445
    :goto_24
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    if-eqz v3, :cond_2a

    move v3, v10

    goto :goto_2b

    :cond_2a
    move v3, v9

    .line 446
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_33

    move v4, v10

    goto :goto_34

    :cond_33
    move v4, v9

    .line 447
    :goto_34
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v5

    if-eqz v1, :cond_41

    .line 449
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->toEventLogString()Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    :cond_41
    const-string v1, ""

    :goto_43
    move-object v6, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v0

    move v7, p2

    .line 443
    invoke-static/range {v1 .. v7}, Lcom/android/server/EventLogTags;->writeBatterySaverMode(IIIIILjava/lang/String;I)V

    .line 452
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    .line 453
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    .line 455
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    new-array v1, v9, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 457
    iput-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    .line 458
    monitor-exit v8
    :try_end_66
    .catchall {:try_start_b .. :try_end_66} :catchall_11d

    .line 460
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_77

    .line 462
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 465
    :cond_77
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    if-eqz p1, :cond_11c

    .line 475
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 476
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "BatterySaverController"

    const-string/jumbo v2, "send ACTION_POWER_SAVE_MODE_CHANGED"

    .line 477
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 482
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x11000000

    .line 484
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 486
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 490
    :cond_c3
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "BatterySaverController"

    const-string/jumbo v1, "send ACTION_POWER_SAVE_MODE_CHANGED_INTERNAL"

    .line 492
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 496
    array-length p1, p2

    :goto_df
    if-ge v9, p1, :cond_11c

    aget-object v0, p2, v9

    .line 497
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 498
    invoke-interface {v0}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v1

    const-string v2, "BatterySaverController"

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLowPowerModeChanged: ServiceType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-interface {v0}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/power/batterysaver/BatterySaverController;->serviceTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-interface {v0, v1}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Landroid/os/PowerSaveState;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_df

    :cond_11c
    return-void

    :catchall_11d
    move-exception p0

    .line 458
    :try_start_11e
    monitor-exit v8
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw p0
.end method

.method public isAdaptiveEnabled()Z
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 366
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isEnabled()Z
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 331
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    :goto_1b
    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    .line 332
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public isFullEnabled()Z
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 348
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isInteractive()Z
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 405
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isLaunchBoostDisabled()Z
    .registers 2

    .line 417
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->isLaunchBoostDisabled()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isPolicyEnabled()Z
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 342
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onBatterySaverPolicyChanged(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V
    .registers 3

    .line 255
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 258
    :cond_7
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return-void
.end method

.method public resetAdaptivePolicyLocked(I)Z
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->resetAdaptivePolicyLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 383
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final serviceTypeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_2f

    packed-switch p1, :pswitch_data_32

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_8
    const-string p0, "AOD"

    return-object p0

    :pswitch_b
    const-string p0, "OPTIONAL_SENSORS"

    return-object p0

    :pswitch_e
    const-string p0, "FORCE_BACKGROUND_CHECK"

    return-object p0

    :pswitch_11
    const-string p0, "FORCE_ALL_APPS_STANDBY"

    return-object p0

    :pswitch_14
    const-string p0, "DATA_SAVER"

    return-object p0

    :pswitch_17
    const-string p0, "BATTERY_STATS"

    return-object p0

    :pswitch_1a
    const-string p0, "SOUND"

    return-object p0

    :pswitch_1d
    const-string p0, "SCREEN_BRIGHTNESS"

    return-object p0

    :pswitch_20
    const-string p0, "NETWORK_FIREWALL"

    return-object p0

    :pswitch_23
    const-string p0, "KEYVALUE_BACKUP"

    return-object p0

    :pswitch_26
    const-string p0, "FULL_BACKUP"

    return-object p0

    :pswitch_29
    const-string p0, "ANIMATION"

    return-object p0

    :pswitch_2c
    const-string p0, "VIBRATION"

    return-object p0

    :cond_2f
    const-string p0, "NULL"

    return-object p0

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public final setAdaptiveEnabledLocked(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 562
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 565
    :cond_5
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 566
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    return-void
.end method

.method public setAdaptivePolicyEnabledLocked(ZI)Z
    .registers 5

    .line 390
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    return v1

    .line 393
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptiveEnabledLocked(Z)V

    .line 394
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updatePolicyLevelLocked()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 395
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return p1

    :cond_18
    return v1
.end method

.method public setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z
    .registers 3

    .line 370
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z

    move-result p0

    return p0
.end method

.method public setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 375
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return p1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final setFullEnabledLocked(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 548
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 551
    :cond_5
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 552
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    return-void
.end method

.method public setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z
    .registers 3

    .line 352
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z

    move-result p0

    return p0
.end method

.method public setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z
    .registers 4

    .line 356
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 357
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return p1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .registers 4

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postSystemReady()V

    return-void
.end method

.method public final updateBatterySavingStats()V
    .registers 9

    .line 523
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "BatterySaverController"

    const-string v0, "PowerManager not initialized"

    .line 525
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 528
    :cond_e
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 530
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1d

    move v0, v3

    goto :goto_26

    .line 531
    :cond_1d
    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v4

    goto :goto_26

    :cond_25
    move v0, v5

    .line 534
    :goto_26
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 535
    :try_start_29
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 536
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v7

    if-eqz v7, :cond_33

    move v3, v4

    goto :goto_3b

    .line 537
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v7

    if-eqz v7, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v5

    :goto_3b
    if-eqz v1, :cond_3f

    move v1, v4

    goto :goto_40

    :cond_3f
    move v1, v5

    .line 542
    :goto_40
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    move v4, v5

    .line 535
    :goto_46
    invoke-virtual {v6, v3, v1, v0, v4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionState(IIII)V

    .line 543
    monitor-exit v2

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public final updatePolicyLevelLocked()Z
    .registers 2

    .line 311
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 312
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p0

    return p0

    .line 313
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 314
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p0

    return p0

    .line 316
    :cond_1c
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p0

    return p0
.end method
