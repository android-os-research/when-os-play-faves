.class public Lcom/android/server/bgslotmanager/CustomEFKManager;
.super Ljava/lang/Object;
.source "CustomEFKManager.java"


# static fields
.field public static final APP_EFK_DECREASE_BOOST_ENABLE:Z

.field public static final BOOTING_EFK_BOOST_ENABLE:Z

.field public static final DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field public static final TAG_CustomEFKManager:Ljava/lang/String; = "DynamicHiddenApp_CustomEFKManager"

.field public static final mTotalMemMb:J


# instance fields
.field public addBonusEFK:I

.field public origin_EFK:I

.field public vDecreaseEFK:I

.field public vDecreaseEFKTime:I

.field public vWatermarkScaleGetTime:I

.field public v_BonusEFK:I

.field public v_bonusEFKWhileBoot:I

.field public v_watermark_scale:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetv_watermark_scale(Lcom/android/server/bgslotmanager/CustomEFKManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputv_watermark_scale(Lcom/android/server/bgslotmanager/CustomEFKManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->restoreEFKAfterBoot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreWatermarkScaleFactor(Lcom/android/server/bgslotmanager/CustomEFKManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->restoreWatermarkScaleFactor()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 15
    invoke-static {}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getTotalMemoryMB()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->mTotalMemMb:J

    const-string v0, "dec_EFK_enable"

    const-string v1, "false"

    .line 26
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    const-string v0, "bEFKb_enable"

    .line 27
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->BOOTING_EFK_BOOST_ENABLE:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    .line 30
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    .line 31
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "add_bonusEFK"

    const-string v1, "-1"

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->addBonusEFK:I

    const-string/jumbo v0, "v_bonusEFK"

    const-string v1, "0"

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_BonusEFK:I

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const-string/jumbo v0, "v_BootEFK"

    const-string v2, "204800"

    .line 21
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_bonusEFKWhileBoot:I

    const-string/jumbo v0, "v_decrease_EFK"

    .line 22
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    const-string/jumbo v0, "tm_decrease_EFK"

    const-string v1, "1000"

    .line 23
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    const/16 v0, 0x7d0

    .line 25
    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetTime:I

    return-void
.end method

.method public static getWatermarkScaleInfo()I
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    new-array v0, v0, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    const-string v2, "/proc/sys/vm/watermark_scale_factor"

    const/4 v4, 0x0

    .line 181
    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v0, v3

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getBonusEFK()I
    .registers 11

    .line 132
    sget-wide v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->mTotalMemMb:J

    const-wide/16 v2, 0xc00

    cmp-long v2, v0, v2

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v5, 0x400

    const/4 v7, 0x0

    if-ltz v2, :cond_1c

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-nez v2, :cond_1c

    mul-long v8, v0, v5

    long-to-double v8, v8

    mul-double/2addr v8, v3

    double-to-int v2, v8

    goto :goto_1d

    :cond_1c
    move v2, v7

    .line 136
    :goto_1d
    iget v8, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->addBonusEFK:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_27

    mul-long/2addr v0, v5

    long-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v7, v0

    goto :goto_31

    :cond_27
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2d

    .line 139
    iget v7, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_BonusEFK:I

    goto :goto_31

    :cond_2d
    if-nez v8, :cond_30

    goto :goto_31

    :cond_30
    move v7, v2

    :goto_31
    return v7
.end method

.method public getCurWatermarkFactorScale()V
    .registers 8

    .line 157
    sget-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    if-nez v0, :cond_5

    return-void

    .line 161
    :cond_5
    new-instance v0, Lcom/android/server/bgslotmanager/CustomEFKManager$4;

    iget v1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetTime:I

    int-to-long v3, v1

    int-to-long v5, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/bgslotmanager/CustomEFKManager$4;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V

    .line 170
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final restoreEFKAfterBoot()V
    .registers 2

    .line 40
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.sysctl.extra_free_kbytes"

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final restoreWatermarkScaleFactor()V
    .registers 2

    .line 54
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    const/16 v0, 0xa

    if-le p0, v0, :cond_10

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.sysctl.watermark_scale_factor"

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public runBootEFKBoost()V
    .registers 8

    .line 69
    sget-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->BOOTING_EFK_BOOST_ENABLE:Z

    if-nez v0, :cond_5

    return-void

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->setEFKBoost()V

    .line 74
    new-instance v0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;

    const-wide/32 v3, 0x2bf20

    const-wide/16 v5, 0x3a98

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/bgslotmanager/CustomEFKManager$1;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V

    .line 89
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public runDecEFKBoost(Ljava/lang/String;)V
    .registers 15

    .line 93
    sget-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 97
    :goto_6
    sget-object v1, Lcom/android/server/bgslotmanager/CustomEFKManager;->DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 98
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 103
    :cond_17
    iget p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_2f

    .line 104
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->setWatermarkScaleFactorDecreaseBoost()V

    .line 105
    new-instance p1, Lcom/android/server/bgslotmanager/CustomEFKManager$2;

    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    int-to-long v3, v0

    int-to-long v5, v0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/bgslotmanager/CustomEFKManager$2;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V

    .line 114
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_40

    .line 116
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->setEFKDecreaseBoost()V

    .line 117
    new-instance p1, Lcom/android/server/bgslotmanager/CustomEFKManager$3;

    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    int-to-long v9, v0

    int-to-long v11, v0

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/bgslotmanager/CustomEFKManager$3;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V

    .line 126
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :goto_40
    return-void
.end method

.method public final setEFKBoost()V
    .registers 3

    .line 35
    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 36
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_bonusEFKWhileBoot:I

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.sysctl.extra_free_kbytes"

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public final setEFKDecreaseBoost()V
    .registers 3

    .line 45
    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 46
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    const-string/jumbo v1, "sys.sysctl.extra_free_kbytes"

    if-lez p0, :cond_14

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 49
    :cond_14
    div-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setOriginEFKWithSetProperty(I)V
    .registers 2

    .line 148
    iput p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sys.sysctl.origin_extra_free_kbytes"

    invoke-static {p1, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWatermarkBoostFactor(I)V
    .registers 2

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sys.sysctl.watermark_boost_factor"

    invoke-static {p1, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setWatermarkScaleFactorDecreaseBoost()V
    .registers 4

    .line 59
    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    div-int/lit8 v1, v0, 0x3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_a

    move v1, v2

    goto :goto_c

    :cond_a
    div-int/lit8 v1, v0, 0x3

    :goto_c
    if-le v0, v2, :cond_24

    .line 61
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    const-string/jumbo v0, "sys.sysctl.watermark_scale_factor"

    if-lez p0, :cond_1d

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 64
    :cond_1d
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method
