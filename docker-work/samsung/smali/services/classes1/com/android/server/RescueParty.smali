.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$RescuePartyObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_OBSERVING_DURATION_MS:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEVICE_CONFIG_RESET_MODE:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEVEL_FACTORY_RESET:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEVEL_ISRB_BOOT:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEVEL_NONE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEVEL_SYSUI_SAFEMODE:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEVEL_WARM_REBOOT:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEVEL_WIFI:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NAME:Ljava/lang/String; = "rescue-party-observer"

.field public static final NAMESPACE_CONFIGURATION:Ljava/lang/String; = "configuration"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NAMESPACE_TO_PACKAGE_MAPPING_FLAG:Ljava/lang/String; = "namespace_to_package_mapping"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PERSISTENT_MASK:I = 0x9

.field public static final PROP_ATTEMPTING_FACTORY_RESET:Ljava/lang/String; = "sys.attempting_factory_reset"

.field public static final PROP_ATTEMPTING_REBOOT:Ljava/lang/String; = "sys.attempting_reboot"

.field public static final PROP_BUILD_TIME:Ljava/lang/String; = "ro.build.date.utc"

.field public static final PROP_DEVICE_CONFIG_DISABLE_FLAG:Ljava/lang/String; = "persist.device_config.configuration.disable_rescue_party"

.field public static final PROP_DISABLE_FACTORY_RESET_FLAG:Ljava/lang/String; = "persist.device_config.configuration.disable_rescue_party_factory_reset"

.field public static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field public static final PROP_ENABLE_ISRB:Ljava/lang/String; = "persist.sys.enable_isrb"

.field public static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PROP_ISRB_ALERTNUM:Ljava/lang/String; = "persist.sys.isrb_alertnum"

.field public static final PROP_ISRB_RESCUEMODE:Ljava/lang/String; = "persist.sys.rescue_mode"

.field public static final PROP_MAX_RESCUE_LEVEL_ATTEMPTED:Ljava/lang/String; = "sys.max_rescue_level_attempted"

.field public static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PROP_RESCUE_LEVEL:Ljava/lang/String; = "persist.sys.rescue_level"

.field public static final PROP_SYS_EMERGENCY_RESET:Ljava/lang/String; = "persist.sys.emergency_reset"

.field public static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field public static final TAG:Ljava/lang/String; = "RescueParty"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TEST_TIME:J = 0x16f5caf7400L


# direct methods
.method public static synthetic $r8$lambda$22pAfMJucaCFFM4DEPjPoCmmWfQ(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->lambda$onSettingsProviderPublished$0(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DKVy7jHGzg6-434YiNw36riSVIQ(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->lambda$executeRescueLevelInternal$2(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ThcfNNhKjaVct1ndTT8CpPD00i4(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->lambda$executeRescueLevelInternal$1(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetRescueLevel(IZLjava/lang/String;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->getRescueLevel(IZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisDisabled()Z
    .registers 1

    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smlogRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smmapRescueLevelToUserImpact(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/RescueParty;->mapRescueLevelToUserImpact(I)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 120
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    .line 407
    invoke-static {}, Lcom/android/server/RescueParty;->isRebootPropertySet()Z

    move-result v0

    const-string v1, "RescueParty"

    if-eqz v0, :cond_e

    const-string p0, "!@ Reboot was already triggered, don\'t level-up"

    .line 408
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v0, "com.android.systemui"

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    if-nez p1, :cond_60

    .line 413
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ Attempting rescue level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3b

    const-string v2, ""

    goto :goto_4c

    .line 414
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.rescue_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_60
    :try_start_60
    invoke-static {p0, p2, p1}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V

    .line 419
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished rescue level "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for package "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_95
    const/4 v0, 0x3

    .line 424
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_99
    .catchall {:try_start_60 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception p0

    .line 426
    invoke-static {p2, p1, p0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_9e
    return-void
.end method

.method public static executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 432
    invoke-static {}, Lcom/android/server/RescueParty;->saveRescuePartyLog()V

    const/16 v0, 0x7a

    .line 433
    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    const-string v0, "RescueParty"

    const-string/jumbo v1, "persist.sys.isrb_alertnum"

    const-string/jumbo v2, "persist.sys.enable_isrb"

    const-string/jumbo v3, "sys.attempting_reboot"

    const-string/jumbo v4, "true"

    const/16 v5, 0x32

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_d8

    goto/16 :goto_d3

    .line 545
    :pswitch_20
    invoke-static {p0, v5}, Lcom/android/server/RescueParty;->runDumpstateAndWait(Landroid/content/Context;I)V

    .line 547
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.rescue_mode"

    const-string v2, ""

    .line 548
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.attempting_factory_reset"

    .line 551
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v0, Lcom/android/server/RescueParty$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/RescueParty$1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 565
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 566
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_d3

    .line 519
    :pswitch_4e
    invoke-static {p0, v5}, Lcom/android/server/RescueParty;->runDumpstateAndWait(Landroid/content/Context;I)V

    .line 520
    invoke-static {p0}, Lcom/android/server/RescueParty;->resetBuildTime(Landroid/content/Context;)V

    .line 521
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LEVEL_ISRB_BOOT rescueParty set ISRB_ENABLE."

    .line 523
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 540
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 541
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_d3

    .line 512
    :pswitch_78
    :try_start_78
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->resetAllWifiStoredData([I)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_80

    goto :goto_d3

    :catch_80
    move-exception p0

    move-object v8, p0

    goto :goto_d3

    :pswitch_83
    const-string p1, "com.android.systemui"

    .line 501
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9c

    const-string/jumbo p1, "setSysUiSafeMode = true"

    .line 502
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-class p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 504
    invoke-interface {p1, v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSysUiSafeMode(Z)V

    .line 507
    :cond_9c
    invoke-static {p0}, Lcom/android/server/RescueParty;->resetWallpaperData(Landroid/content/Context;)V

    goto :goto_d3

    .line 480
    :pswitch_a0
    invoke-static {p0, v5}, Lcom/android/server/RescueParty;->runDumpstateAndWait(Landroid/content/Context;I)V

    .line 483
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 497
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 498
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_d3

    :pswitch_b4
    const/4 v0, 0x4

    .line 468
    :try_start_b5
    invoke-static {p0, v0, p1}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_ba

    :catch_b9
    move-exception v8

    .line 474
    :goto_ba
    :try_start_ba
    invoke-static {p0, v6, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_be

    goto :goto_d3

    :catch_be
    move-exception v8

    goto :goto_d3

    :pswitch_c0
    const/4 v0, 0x3

    .line 455
    :try_start_c1
    invoke-static {p0, v0, p1}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_c6

    :catch_c5
    move-exception v8

    .line 461
    :goto_c6
    :try_start_c6
    invoke-static {p0, v7, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_be

    goto :goto_d3

    :pswitch_ca
    const/4 v0, 0x2

    .line 442
    :try_start_cb
    invoke-static {p0, v0, p1}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_d0

    :catch_cf
    move-exception v8

    .line 448
    :goto_d0
    :try_start_d0
    invoke-static {p0, v7, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_be

    :goto_d3
    if-nez v8, :cond_d6

    return-void

    .line 571
    :cond_d6
    throw v8

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_c0
        :pswitch_b4
        :pswitch_a0
        :pswitch_83
        :pswitch_78
        :pswitch_4e
        :pswitch_20
    .end packed-switch
.end method

.method public static getAllUserIds()[I
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 939
    :try_start_6
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_f
    if-ge v1, v3, :cond_2c

    aget-object v4, v2, v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_24

    .line 941
    :try_start_13
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_21

    .line 943
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_21} :catch_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_24

    :catch_21
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catchall_24
    move-exception v1

    const-string v2, "RescueParty"

    const-string v3, "Trouble discovering users"

    .line 949
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    return-object v0
.end method

.method public static getElapsedRealtime()J
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMaxRescueLevel(Z)I
    .registers 2

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    const-string/jumbo v0, "persist.device_config.configuration.disable_rescue_party_factory_reset"

    .line 363
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_10

    :cond_d
    const/16 p0, 0x8

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x3

    return p0
.end method

.method public static getPresetNamespacesForPackages(Ljava/util/List;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :try_start_5
    const-string v1, "configuration"

    const-string/jumbo v2, "namespace_to_package_mapping"

    const-string v3, ""

    .line 276
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 279
    :goto_18
    array-length v4, v1

    if-ge v3, v4, :cond_5a

    .line 280
    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_3e

    .line 283
    :cond_24
    aget-object v4, v1, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 284
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_41

    .line 287
    aget-object v5, v4, v2

    const/4 v6, 0x1

    .line 288
    aget-object v4, v4, v6

    .line 290
    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 291
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 285
    :cond_41
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mapping entry: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5a} :catch_5b
    .catchall {:try_start_5 .. :try_end_5a} :catchall_66

    :cond_5a
    return-object v0

    :catch_5b
    move-exception p0

    .line 295
    :try_start_5c
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v1, "RescueParty"

    const-string v2, "Failed to read preset package to namespaces mapping."

    .line 296
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_66

    :catchall_66
    return-object v0
.end method

.method public static getRescueLevel(IZLjava/lang/String;)I
    .registers 5

    const-string v0, "com.android.systemui"

    .line 379
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_12

    const-string/jumbo p0, "persist.sys.rescue_level"

    .line 380
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    add-int/2addr p0, v1

    :cond_12
    if-ne p0, v1, :cond_15

    return v1

    :cond_15
    const/4 p2, 0x2

    if-ne p0, p2, :cond_19

    return p2

    :cond_19
    const/4 p2, 0x3

    if-ne p0, p2, :cond_1d

    return p2

    :cond_1d
    const/4 p2, 0x4

    if-ne p0, p2, :cond_29

    .line 390
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_29
    const/4 p2, 0x5

    if-ne p0, p2, :cond_35

    .line 392
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_35
    const/4 p2, 0x6

    if-ne p0, p2, :cond_41

    .line 394
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_41
    const/4 p2, 0x7

    if-ne p0, p2, :cond_4d

    .line 396
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_4d
    const/16 p2, 0x8

    if-lt p0, p2, :cond_5a

    .line 398
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 400
    :cond_5a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected positive mitigation count, was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RescueParty"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "monitor_callback_type"

    const-string v1, ""

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "namespace_updated_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "namespace"

    if-nez v1, :cond_3f

    const-string v1, "access_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string p0, "RescueParty"

    const-string p1, "Unrecognized DeviceConfig callback"

    .line 326
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_28
    const-string v0, "calling_package"

    const/4 v1, 0x0

    .line 317
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_48

    if-eqz v0, :cond_48

    .line 320
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mrecordDeviceConfigAccess(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 311
    :cond_3f
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 313
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public static handleNativeRescuePartyResets()V
    .registers 4

    .line 348
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 349
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetNativeCategories()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 350
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 352
    aget-object v2, v0, v1

    const-string v3, "configuration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1f

    :cond_19
    const/4 v2, 0x4

    .line 355
    aget-object v3, v0, v1

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .registers 1

    .line 204
    invoke-static {}, Lcom/android/server/RescueParty;->isFactoryResetPropertySet()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/server/RescueParty;->isRebootPropertySet()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isDisabled()Z
    .registers 5

    const-string/jumbo v0, "persist.sys.enable_rescue"

    const/4 v1, 0x0

    .line 156
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string/jumbo v0, "persist.device_config.configuration.disable_rescue_party"

    .line 162
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "RescueParty"

    if-eqz v0, :cond_1d

    const-string v0, "Disabled because of DeviceConfig flag"

    .line 163
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1d
    const-string/jumbo v0, "persist.sys.emergency_reset"

    const-string v4, ""

    .line 168
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "emergency"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "!@ RescueParty last level is already done"

    .line 169
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 174
    :cond_34
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_3e

    const-string v0, "Disabled because of eng build"

    .line 175
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 182
    :cond_3e
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "Disabled because of active USB connection"

    .line 183
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4e
    const-string/jumbo v0, "persist.sys.disable_rescue"

    .line 188
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "Disabled because of manual property"

    .line 189
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5d
    return v1
.end method

.method public static isFactoryResetPropertySet()Z
    .registers 2

    const-string/jumbo v0, "sys.attempting_factory_reset"

    const/4 v1, 0x0

    .line 208
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRebootPropertySet()Z
    .registers 2

    const-string/jumbo v0, "sys.attempting_reboot"

    const/4 v1, 0x0

    .line 212
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUsbActive()Z
    .registers 5

    const-string/jumbo v0, "ro.hardware.virtual_device"

    const/4 v1, 0x0

    .line 959
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "RescueParty"

    if-eqz v0, :cond_13

    const-string v0, "Assuming virtual device is connected over USB"

    .line 960
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 964
    :cond_13
    :try_start_13
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    .line 965
    invoke-static {v0, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CONFIGURED"

    .line 966
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    return v0

    :catchall_2d
    move-exception v0

    const-string v3, "Failed to determine if device was on USB"

    .line 968
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static synthetic lambda$executeRescueLevelInternal$1(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    .line 486
    :try_start_0
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_60

    const-string v0, " by "

    const-string v1, ""

    if-eqz p0, :cond_35

    .line 488
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RescueParty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1b

    goto :goto_2a

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_64

    :cond_35
    const-string/jumbo p0, "sys.powerctl"

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot,RescueParty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_46

    goto :goto_55

    .line 491
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_e .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p0

    .line 494
    invoke-static {p2, p1, p0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_64
    return-void
.end method

.method public static synthetic lambda$executeRescueLevelInternal$2(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    .line 529
    :try_start_0
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_60

    const-string v0, " by "

    const-string v1, ""

    if-eqz p0, :cond_35

    .line 531
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RescueParty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1b

    goto :goto_2a

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_64

    :cond_35
    const-string/jumbo p0, "sys.powerctl"

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot,RescueParty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_46

    goto :goto_55

    .line 534
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_e .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p0

    .line 537
    invoke-static {p2, p1, p0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_64
    return-void
.end method

.method public static synthetic lambda$onSettingsProviderPublished$0(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 2

    .line 223
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static levelToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_24

    .line 984
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "FACTORY_RESET"

    return-object p0

    :pswitch_b
    const-string p0, "ISRB_BOOT"

    return-object p0

    :pswitch_e
    const-string p0, "WIFI"

    return-object p0

    :pswitch_11
    const-string p0, "SYSUI_SAFEMODE"

    return-object p0

    :pswitch_14
    const-string p0, "WARM_REBOOT"

    return-object p0

    :pswitch_17
    const-string p0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object p0

    :pswitch_1a
    const-string p0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object p0

    :pswitch_1d
    const-string p0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object p0

    :pswitch_20
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
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

.method public static logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 623
    invoke-static {p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 624
    invoke-static {p0, p2}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed rescue level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 626
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for package "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_36
    const/4 p1, 0x6

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-void
.end method

.method public static mapRescueLevelToUserImpact(I)I
    .registers 1

    packed-switch p0, :pswitch_data_a

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .registers 4

    .line 220
    invoke-static {}, Lcom/android/server/RescueParty;->handleNativeRescuePartyResets()V

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/RescueParty$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-static {v0, v1}, Landroid/provider/Settings$Config;->registerMonitorCallback(Landroid/content/ContentResolver;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static performScopedReset(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 739
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object p0

    .line 740
    invoke-static {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mgetAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing scoped reset for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", affected namespaces: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RescueParty"

    .line 745
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 750
    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 751
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "configuration"

    .line 753
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_34

    :cond_49
    const/4 v0, 0x4

    .line 756
    invoke-static {v0, p1}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    goto :goto_34

    :cond_4e
    return-void
.end method

.method public static registerHealthObserver(Landroid/content/Context;)V
    .registers 2

    .line 150
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    .line 151
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object p0

    .line 150
    invoke-virtual {v0, p0}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    return-void
.end method

.method public static resetAllAffectedNamespaces(Landroid/content/Context;)V
    .registers 3

    .line 704
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object p0

    .line 705
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mgetAllAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;)Ljava/util/Set;

    move-result-object p0

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing reset for all affected namespaces: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RescueParty"

    .line 707
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 711
    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 712
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "configuration"

    .line 714
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_2a

    :cond_3f
    const/4 v1, 0x4

    .line 717
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    goto :goto_2a

    :cond_44
    return-void
.end method

.method public static resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "sys.max_rescue_level_attempted"

    const/4 v1, 0x0

    .line 664
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, p2, :cond_b

    return-void

    .line 667
    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    .line 673
    :try_start_17
    invoke-static {p0, p2, p1, v1}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1c

    move-object v2, p2

    goto :goto_24

    :catch_1c
    move-exception v0

    .line 675
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to reset global settings"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 677
    :goto_24
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v0

    array-length v3, v0

    :goto_29
    if-ge v1, v3, :cond_4c

    aget v4, v0, v1

    .line 679
    :try_start_2d
    invoke-static {p0, p2, p1, v4}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_49

    :catch_31
    move-exception v2

    .line 681
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to reset secure settings for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v5

    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_4c
    if-nez v2, :cond_4f

    return-void

    .line 685
    :cond_4f
    throw v2
.end method

.method public static resetBuildTime(Landroid/content/Context;)V
    .registers 5

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_4
    const-string v0, "RescueParty"

    const-string v1, "Fake time Set"

    .line 652
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.build.date.utc"

    const-wide/32 v1, 0x5e0b7080

    .line 653
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 654
    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    const-string v0, "auto_time"

    const/4 v1, 0x0

    .line 655
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "auto_time_zone"

    .line 656
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_26

    :catchall_26
    return-void
.end method

.method public static resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    if-eqz p1, :cond_c

    if-nez p2, :cond_8

    goto :goto_c

    .line 696
    :cond_8
    :try_start_8
    invoke-static {p0, p2}, Lcom/android/server/RescueParty;->performScopedReset(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 694
    :cond_c
    :goto_c
    invoke-static {p0}, Lcom/android/server/RescueParty;->resetAllAffectedNamespaces(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception p0

    .line 699
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to reset config settings"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static resetDeviceConfigForPackages(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 237
    :cond_3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 238
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    invoke-static {}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstanceIfCreated()Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 242
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    invoke-static {v2, v3}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mgetAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 247
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 252
    :cond_28
    invoke-static {p0}, Lcom/android/server/RescueParty;->getPresetNamespacesForPackages(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 255
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 260
    :cond_31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 261
    :goto_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 262
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    new-instance v1, Landroid/provider/DeviceConfig$Properties$Builder;

    invoke-direct {v1, v0}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 265
    :try_start_4a
    invoke-static {v1}, Landroid/provider/DeviceConfig;->setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    :try_end_4d
    .catch Landroid/provider/DeviceConfig$BadConfigException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_35

    :catch_4e
    const/4 v1, 0x5

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "namespace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already banned, skip reset."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_35

    :cond_6a
    return-void
.end method

.method public static resetWallpaperData(Landroid/content/Context;)V
    .registers 4

    const-string p0, "android"

    const-string v0, "RescueParty"

    const-string/jumbo v1, "reset wallpaper"

    .line 723
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    const-string/jumbo v0, "wallpaper"

    .line 725
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 727
    invoke-interface {v0, p0, v1, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    const/16 v1, 0x11

    .line 728
    invoke-interface {v0, p0, v1, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    const/16 v1, 0x21

    .line 729
    invoke-interface {v0, p0, v1, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    const/4 v1, 0x2

    .line 730
    invoke-interface {v0, p0, v1, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    const/16 v1, 0x12

    .line 731
    invoke-interface {v0, p0, v1, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_2f

    :catchall_2f
    :cond_2f
    return-void
.end method

.method public static runDumpstateAndWait(Landroid/content/Context;I)V
    .registers 6

    const-string p0, "RescueParty"

    const-string v0, "!@ make dumpstate_sys_error for rescueparty"

    .line 576
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dumpstate.is_running"

    const-string v1, "0"

    .line 577
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 579
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "bugreportm"

    if-eqz v0, :cond_32

    const-string v0, "cancel previous dumpstate, and start new one"

    .line 580
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ctl.stop"

    const-string v2, "bugreportd"

    .line 581
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dumpstate"

    .line 583
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dumpstatez"

    .line 584
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    const-string v0, "bugreport.mode"

    const-string/jumbo v2, "sys_rescue"

    .line 586
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dumpstate.process"

    .line 587
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    .line 588
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_45
    add-int/lit8 v1, v0, 0x1

    if-ge v0, p1, :cond_68

    const-wide/16 v2, 0x3e8

    .line 593
    :try_start_4b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception v0

    const-string v2, "Failed to sleep"

    .line 595
    invoke-static {p0, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_55
    const-string/jumbo v0, "init.svc.bugreportm"

    const-string/jumbo v2, "stopped"

    .line 597
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_68

    :cond_66
    move v0, v1

    goto :goto_45

    :cond_68
    :goto_68
    return-void
.end method

.method public static saveRescuePartyLog()V
    .registers 7

    const-string v0, "/cache/recovery/rescueparty_log"

    .line 605
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 607
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 609
    :cond_10
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 611
    new-instance v4, Ljava/util/Date;

    const-wide/32 v5, 0x927c0

    sub-long/2addr v2, v5

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RescueParty"

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveRescuePartyLog : logcat -v raw -b crash -t \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' -f /cache/recovery/rescueparty_log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "logcat"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "-v"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "raw"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "-b"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "crash"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "-t"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object v1, v3, v4

    const/4 v1, 0x7

    const-string v4, "-f"

    aput-object v4, v3, v1

    const/16 v1, 0x8

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7c} :catch_7c

    :catch_7c
    return-void
.end method

.method public static startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 332
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    .line 333
    invoke-static {v0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mgetCallingPackagesSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    .line 337
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting to observe: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", updated namespace: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RescueParty"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object p0

    sget-wide v3, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    return-void
.end method
