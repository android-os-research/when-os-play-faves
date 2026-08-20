.class public Lcom/android/server/bgslotmanager/BGSlotManager;
.super Ljava/lang/Object;
.source "BGSlotManager.java"


# static fields
.field public static BONUS_MAX_CACHED_APPS_PER_SWAP:I = 0x0

.field public static final CAMERA_BG_STATE:I = 0x1

.field public static final HIGHRES_BG_STATE:I = 0x2

.field public static final HIGHRES_REDUCED_CACHE_SLOT:I = 0x4

.field public static final HOMEHUB_BG_STATE:I = 0x4

.field public static HRT_MaxCached_Enable:Z = false

.field public static final IS_CHINA_MODEL:Z

.field public static MAX_CACHED_APPS:I = 0x0

.field public static MAX_EMPTY_APPS:I = 0x0

.field public static MIN_CACHED_APPS:I = 0x0

.field public static MIN_EMPTY_APPS:I = 0x0

.field public static final STATIC_MAX_EMPTY_FOR_OVER_8GB:I = 0x20

.field public static final TAG_BGSLOTMANAGER:Ljava/lang/String; = "DynamicHiddenApp_BGSlotManager"


# instance fields
.field public BGSlotState:I

.field public final CHN_REDUCE_CACHED:I

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public originCachedMax:I

.field public originCachedMin:I

.field public originEmptyMax:I

.field public originEmptyMin:I


# direct methods
.method public static bridge synthetic -$$Nest$msetBonusMaxCachedAppsPerSwap(Lcom/android/server/bgslotmanager/BGSlotManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setBonusMaxCachedAppsPerSwap()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "dha_cached_min"

    const-string v1, "4"

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    const-string v0, "dha_cached_max"

    const-string v1, "16"

    .line 29
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    const-string v0, "dha_empty_min"

    const-string v1, "8"

    .line 31
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    const-string v0, "dha_empty_max"

    const-string v1, "24"

    .line 33
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    const/4 v0, 0x0

    .line 35
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    const-string/jumbo v0, "ro.csc.country_code"

    const-string v1, ""

    .line 40
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->IS_CHINA_MODEL:Z

    const-string v0, "dha_hrt_max_enable"

    const-string/jumbo v1, "true"

    .line 44
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->HRT_MaxCached_Enable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "reduce_chn_cached_max"

    const-string v1, "0"

    .line 41
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->CHN_REDUCE_CACHED:I

    .line 47
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 48
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 49
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 50
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 58
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    return-void
.end method


# virtual methods
.method public final changeBGSlot()V
    .registers 10

    .line 99
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 100
    iget v1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 101
    iget v2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 107
    iget v3, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v4, v3, 0x1

    if-lez v4, :cond_17

    .line 109
    div-int/lit8 v1, v2, 0x2

    iget v4, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    if-le v1, v4, :cond_15

    .line 110
    div-int/lit8 v2, v2, 0x2

    goto :goto_16

    :cond_15
    move v2, v4

    :goto_16
    const/4 v1, 0x2

    :cond_17
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    if-lez v4, :cond_1e

    const/4 v4, -0x4

    goto :goto_1f

    :cond_1e
    move v4, v5

    :goto_1f
    const/4 v6, 0x4

    and-int/2addr v3, v6

    if-lez v3, :cond_27

    const/16 v2, 0x10

    move v4, v5

    move v0, v6

    .line 124
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before ChangeBGSlot CachedMax: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", CachedMin: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", EmptyMax: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "DynamicHiddenApp_BGSlotManager"

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v0, v4

    .line 127
    sget v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    add-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    add-int/2addr v1, v5

    .line 128
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    add-int/2addr v2, v5

    .line 129
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After ChangeBGSlot CachedMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->updateDefaultCachedMAX()V

    return-void
.end method

.method public initBGSlotManager(Lcom/android/server/am/DynamicHiddenApp;J)V
    .registers 7

    .line 62
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 63
    sget-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->IS_CHINA_MODEL:Z

    if-eqz v0, :cond_28

    .line 64
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iget v2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->CHN_REDUCE_CACHED:I

    sub-int/2addr v1, v2

    sput v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 65
    sget v1, Lcom/android/server/am/BGProtectManager;->dha_keepempty_chn_key:I

    sput v1, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is china model : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicHiddenApp_BGSlotManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-wide/16 v0, 0x1800

    cmp-long p2, p2, v0

    if-lez p2, :cond_36

    .line 69
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    const/16 p3, 0x20

    if-ge p2, p3, :cond_36

    .line 70
    sput p3, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 73
    :cond_36
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput p2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 74
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput p2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 75
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput p2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 76
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput p2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    const-string p0, "cur_trim_cached_num"

    const-string p2, "0"

    .line 78
    invoke-static {p0, p2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string p3, "cur_trim_empty_num"

    .line 79
    invoke-static {p3, p2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 78
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/DynamicHiddenApp;->setCurTrimProcesses(II)V

    return-void
.end method

.method public initBGSlotManagerPostBoot()V
    .registers 1

    .line 83
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setBonusMaxCachedAppsPerSwap()V

    return-void
.end method

.method public replaceMemInfoGetter(Lcom/android/server/bgslotmanager/MemInfoGetter;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    return-void
.end method

.method public restoreFromCameraBGSlot()V
    .registers 2

    .line 143
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 144
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string p0, "DynamicHiddenApp_BGSlotManager"

    const-string v0, "CameraBGSlot Recovered"

    .line 145
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreFromHighResBGSlot()V
    .registers 2

    .line 154
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 155
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string p0, "DynamicHiddenApp_BGSlotManager"

    const-string v0, "HighResBGSlot Recovered"

    .line 156
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreFromHomeHubBGSlot()V
    .registers 2

    .line 165
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 166
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string p0, "DynamicHiddenApp_BGSlotManager"

    const-string v0, "HomeHubBGSlot Recovered"

    .line 167
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public runSetBonusMaxCachedAppsPerSwapTimer()V
    .registers 8

    .line 187
    new-instance v6, Lcom/android/server/bgslotmanager/BGSlotManager$1;

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/bgslotmanager/BGSlotManager$1;-><init>(Lcom/android/server/bgslotmanager/BGSlotManager;JJ)V

    .line 196
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public setBGSlotByRes(II)V
    .registers 4

    .line 171
    sget-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->HRT_MaxCached_Enable:Z

    if-eqz v0, :cond_e

    mul-int/2addr p1, p2

    const p2, 0x384000

    if-lt p1, p2, :cond_e

    .line 172
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setHighResBGSlot()V

    goto :goto_11

    .line 174
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->restoreFromHighResBGSlot()V

    :goto_11
    return-void
.end method

.method public final setBonusMaxCachedAppsPerSwap()V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    invoke-virtual {v0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getSwapsizeGB()I

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0x8

    if-lt v0, v2, :cond_e

    .line 89
    sput v1, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    goto :goto_17

    :cond_e
    if-lt v0, v1, :cond_14

    const/4 v0, 0x2

    .line 91
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    goto :goto_17

    :cond_14
    const/4 v0, 0x0

    .line 93
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    .line 95
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    return-void
.end method

.method public setCameraBGSlot()V
    .registers 2

    .line 138
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 139
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    return-void
.end method

.method public setHighResBGSlot()V
    .registers 2

    .line 149
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 150
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    return-void
.end method

.method public setHomeHubBGSlot()V
    .registers 2

    .line 160
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 161
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    return-void
.end method

.method public setOriginCachedMax(I)V
    .registers 2

    if-lez p1, :cond_9

    .line 201
    sput p1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 202
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    :cond_9
    return-void
.end method

.method public setOriginCachedMin(I)V
    .registers 2

    if-lez p1, :cond_9

    .line 208
    sput p1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 209
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    :cond_9
    return-void
.end method

.method public setOriginEmptyMax(I)V
    .registers 2

    if-lez p1, :cond_9

    .line 215
    sput p1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 216
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    :cond_9
    return-void
.end method

.method public setOriginEmptyMin(I)V
    .registers 2

    if-lez p1, :cond_9

    .line 222
    sput p1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    .line 223
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    :cond_9
    return-void
.end method

.method public setTaskSnapshot(II)V
    .registers 13

    const-string/jumbo v0, "max_snapshot_num"

    const-string v1, "0"

    .line 230
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 236
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getPhysicalMemory()I

    move-result p0

    mul-int/2addr p1, p2

    const/4 p2, 0x7

    new-array v1, p2, [[I

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 239
    fill-array-data v3, :array_100

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10c

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_118

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_124

    const/4 v7, 0x3

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_130

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_13c

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v2, v2, [I

    fill-array-data v2, :array_148

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "physical memory: "

    const-string v3, "DynamicHiddenApp_BGSlotManager"

    if-eqz p1, :cond_bc

    if-eqz p0, :cond_bc

    const-string/jumbo v9, "start update max task snapshot number"

    .line 251
    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v9, 0x384000

    if-lt p1, v9, :cond_61

    move v6, v7

    goto :goto_68

    :cond_61
    const v7, 0x1fa400

    if-lt p1, v7, :cond_67

    goto :goto_68

    :cond_67
    move v6, v5

    :goto_68
    move p1, v4

    :goto_69
    if-ge p1, p2, :cond_96

    .line 257
    aget-object v7, v1, p1

    aget v9, v7, v4

    if-ne p0, v9, :cond_93

    .line 258
    aget v4, v7, v6

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "update max task snapshot number, physical memory: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", current resolution : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v4

    move v4, v5

    goto :goto_97

    :cond_93
    add-int/lit8 p1, p1, 0x1

    goto :goto_69

    :cond_96
    move p1, v4

    :goto_97
    if-nez v4, :cond_b9

    const-string p1, "can not update max task snapshot number, due to unidentified physical memory"

    .line 266
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", current resolution: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    :cond_b9
    move v8, p1

    :goto_ba
    move v4, v6

    goto :goto_db

    :cond_bc
    const-string p2, "can not update max task snapshot number, due to resolution or physical memory"

    .line 271
    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", resolution: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_db
    if-lez v0, :cond_de

    goto :goto_df

    :cond_de
    move v0, v8

    .line 278
    :goto_df
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TaskSnapShot : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CurRes : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotCache;->setMaxSnapshot(I)V

    return-void

    nop

    :array_100
    .array-data 4
        0x2
        0x3
        0x3
        0x3
    .end array-data

    :array_10c
    .array-data 4
        0x3
        0x5
        0x3
        0x3
    .end array-data

    :array_118
    .array-data 4
        0x4
        0x8
        0x4
        0x3
    .end array-data

    :array_124
    .array-data 4
        0x6
        0xa
        0x6
        0x3
    .end array-data

    :array_130
    .array-data 4
        0x8
        0xa
        0x8
        0x4
    .end array-data

    :array_13c
    .array-data 4
        0xc
        0xa
        0xa
        0xa
    .end array-data

    :array_148
    .array-data 4
        0x10
        0xa
        0xa
        0xa
    .end array-data
.end method

.method public updateDefaultCachedMAX()V
    .registers 5

    .line 179
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    add-int v2, v0, v1

    int-to-float v3, v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    .line 183
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/DynamicHiddenApp;->updateMaxCachedProcessesNum(IF)V

    return-void
.end method
