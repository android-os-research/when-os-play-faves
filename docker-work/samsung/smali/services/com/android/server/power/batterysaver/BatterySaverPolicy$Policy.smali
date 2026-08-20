.class public Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
.super Ljava/lang/Object;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# instance fields
.field public final adjustBrightnessFactor:F

.field public final advertiseIsEnabled:Z

.field public final deferFullBackup:Z

.field public final deferKeyValueBackup:Z

.field public final disableAnimation:Z

.field public final disableAod:Z

.field public final disableLaunchBoost:Z

.field public final disableOptionalSensors:Z

.field public final disableVibration:Z

.field public final enableAdjustBrightness:Z

.field public final enableDataSaver:Z

.field public final enableFirewall:Z

.field public final enableNightMode:Z

.field public final enableQuickDoze:Z

.field public final forceAllAppsStandby:Z

.field public final forceBackgroundCheck:Z

.field public final locationMode:I

.field public final mHashCode:I

.field public final soundTriggerMode:I


# direct methods
.method public static bridge synthetic -$$Nest$smfromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(FZZZZZZZZZZZZZZZII)V
    .registers 35

    move-object/from16 v0, p0

    move/from16 v1, p17

    move/from16 v2, p18

    .line 704
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    move/from16 v4, p1

    .line 706
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    move/from16 v3, p2

    .line 707
    iput-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    move/from16 v5, p3

    .line 708
    iput-boolean v5, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    move/from16 v6, p4

    .line 709
    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    move/from16 v7, p5

    .line 710
    iput-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    move/from16 v8, p6

    .line 711
    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    move/from16 v9, p7

    .line 712
    iput-boolean v9, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    move/from16 v10, p8

    .line 713
    iput-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    move/from16 v11, p9

    .line 714
    iput-boolean v11, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    move/from16 v12, p10

    .line 715
    iput-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    move/from16 v13, p11

    .line 716
    iput-boolean v13, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    move/from16 v14, p12

    .line 717
    iput-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    move/from16 v15, p13

    .line 718
    iput-boolean v15, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    move/from16 v3, p14

    .line 719
    iput-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    move/from16 v3, p15

    .line 720
    iput-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    move/from16 v3, p16

    .line 721
    iput-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    const-string v3, "BatterySaverPolicy"

    if-ltz v1, :cond_5f

    const/4 v4, 0x4

    if-ge v4, v1, :cond_5c

    goto :goto_5f

    .line 728
    :cond_5c
    iput v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    goto :goto_76

    .line 725
    :cond_5f
    :goto_5f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid location mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 726
    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    :goto_76
    const/4 v4, 0x2

    if-ltz v2, :cond_80

    if-le v2, v4, :cond_7c

    goto :goto_80

    .line 736
    :cond_7c
    iput v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    const/4 v3, 0x0

    goto :goto_97

    .line 733
    :cond_80
    :goto_80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid SoundTrigger mode: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 734
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    :goto_97
    const/16 v4, 0x12

    new-array v4, v4, [Ljava/lang/Object;

    .line 740
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    .line 741
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    .line 742
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v3, 0x3

    .line 743
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    .line 744
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v4, v5

    const/4 v3, 0x5

    .line 745
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    .line 746
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x7

    .line 747
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x8

    .line 748
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x9

    .line 749
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0xa

    .line 750
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0xb

    .line 751
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0xc

    .line 752
    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0xd

    .line 753
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0xe

    .line 754
    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0xf

    .line 755
    invoke-static/range {p16 .. p16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x10

    .line 756
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const/16 v1, 0x11

    .line 757
    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 739
    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    return-void
.end method

.method public static fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .registers 21

    if-nez p0, :cond_c

    const-string v0, "BatterySaverPolicy"

    const-string v1, "Null config passed down to BatterySaverPolicy"

    .line 762
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0

    .line 767
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeviceSpecificSettings()Ljava/util/Map;

    .line 769
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object v1, v0

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdjustBrightnessFactor()F

    move-result v2

    .line 771
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdvertiseIsEnabled()Z

    move-result v3

    .line 772
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferFullBackup()Z

    move-result v4

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferKeyValueBackup()Z

    move-result v5

    .line 774
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAnimation()Z

    move-result v6

    .line 775
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAod()Z

    move-result v7

    .line 776
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableLaunchBoost()Z

    move-result v8

    .line 777
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableOptionalSensors()Z

    move-result v9

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableVibration()Z

    move-result v10

    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableAdjustBrightness()Z

    move-result v11

    .line 780
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableDataSaver()Z

    move-result v12

    .line 781
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableFirewall()Z

    move-result v13

    .line 782
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableNightMode()Z

    move-result v14

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableQuickDoze()Z

    move-result v15

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceAllAppsStandby()Z

    move-result v16

    .line 785
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceBackgroundCheck()Z

    move-result v17

    .line 786
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getLocationMode()I

    move-result v18

    .line 787
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getSoundTriggerMode()I

    move-result v19

    invoke-direct/range {v1 .. v19}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    return-object v0
.end method

.method public static fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 817
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p0

    return-object p0
.end method

.method public static fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 823
    new-instance v4, Landroid/util/KeyValueListParser;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 824
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BatterySaverPolicy"

    const-string v7, ""

    if-nez v1, :cond_1b

    move-object v8, v7

    goto :goto_1c

    :cond_1b
    move-object v8, v1

    .line 828
    :goto_1c
    :try_start_1c
    invoke-virtual {v4, v8}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_34

    .line 830
    :catch_20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad device specific battery saver constants: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    move-object v7, v0

    .line 836
    :goto_38
    :try_start_38
    invoke-virtual {v4, v7}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_50

    .line 838
    :catch_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad battery saver constants: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjust_brightness_factor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 844
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 843
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v7

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "advertise_is_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 847
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 846
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defer_full_backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 850
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 849
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defer_keyvalue_backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 853
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 852
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable_animation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 856
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 855
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable_aod"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 859
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 858
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable_launch_boost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 862
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 861
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable_optional_sensors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 865
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 864
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable_vibration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 868
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 867
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_brightness_adjustment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 872
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 870
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_datasaver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 875
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 874
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_firewall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 878
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 877
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_night_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 881
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 880
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_quick_doze"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 884
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 883
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force_all_apps_standby"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 887
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 886
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force_background_check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 890
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 889
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 893
    invoke-virtual {v2, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 892
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "soundtrigger_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 896
    invoke-virtual {v2, v0, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 895
    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 898
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object v6, v0

    invoke-direct/range {v6 .. v24}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 924
    :cond_4
    instance-of v1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 925
    :cond_a
    check-cast p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 926
    iget v1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    if-ne v1, v3, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    if-ne v1, v3, :cond_7d

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    iget v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    if-ne v1, v3, :cond_7d

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    iget p1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    if-ne p0, p1, :cond_7d

    goto :goto_7e

    :cond_7d
    move v0, v2

    :goto_7e
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 948
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    return p0
.end method

.method public toConfig()Landroid/os/BatterySaverPolicyConfig;
    .registers 3

    .line 792
    new-instance v0, Landroid/os/BatterySaverPolicyConfig$Builder;

    invoke-direct {v0}, Landroid/os/BatterySaverPolicyConfig$Builder;-><init>()V

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 793
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setAdjustBrightnessFactor(F)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 794
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setAdvertiseIsEnabled(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 795
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDeferFullBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 796
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDeferKeyValueBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 797
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableAnimation(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 798
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableAod(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 799
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableLaunchBoost(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 800
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableOptionalSensors(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 801
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableVibration(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 802
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableAdjustBrightness(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 803
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableDataSaver(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 804
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableFirewall(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 805
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableNightMode(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 806
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableQuickDoze(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 807
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setForceAllAppsStandby(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 808
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setForceBackgroundCheck(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 809
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setLocationMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 810
    invoke-virtual {v0, p0}, Landroid/os/BatterySaverPolicyConfig$Builder;->setSoundTriggerMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object p0

    .line 811
    invoke-virtual {p0}, Landroid/os/BatterySaverPolicyConfig$Builder;->build()Landroid/os/BatterySaverPolicyConfig;

    move-result-object p0

    return-object p0
.end method
