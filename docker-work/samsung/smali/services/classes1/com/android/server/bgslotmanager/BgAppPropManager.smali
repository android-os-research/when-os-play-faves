.class public Lcom/android/server/bgslotmanager/BgAppPropManager;
.super Ljava/lang/Object;
.source "BgAppPropManager.java"


# static fields
.field public static final TAG_BgAppPropManager:Ljava/lang/String; = "DynamicHiddenApp_BgAppPropManager"

.field public static TOTAL_MEMORY_2ND:I = 0x0

.field public static TOTAL_MEMORY_3RD:I = 0x0

.field public static final mTotalMemMb:J

.field public static final prop2ndHeader:Ljava/lang/String; = "ro.slmk.2nd."

.field public static final prop3rdHeader:Ljava/lang/String; = "ro.slmk.3rd."

.field public static final propHeader:Ljava/lang/String; = "ro.slmk."


# instance fields
.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mProcessList:Lcom/android/server/am/ProcessList;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 24
    invoke-static {}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getTotalMemoryMB()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mTotalMemMb:J

    const-string/jumbo v0, "ro.slmk.dha_2ndprop_thMB"

    const-string v1, "4096"

    .line 27
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    const-string/jumbo v0, "ro.slmk.3rd.over_thMB"

    const-string v1, "9999999"

    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_3RD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/DynamicHiddenApp;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 39
    iput-object p2, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    return-void
.end method

.method public static getSemSystemPropertyInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 70
    invoke-static {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getSlmkPropertyFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 2

    .line 76
    invoke-static {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 73
    invoke-static {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.slmk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    sget-wide v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mTotalMemMb:J

    sget v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_35

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ro.slmk.2nd."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_35
    sget v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_3RD:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_52

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.slmk.3rd."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_52
    return-object p1
.end method

.method public static getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 48
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpLMKDParameter(Ljava/io/PrintWriter;)V
    .registers 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DHA_CACHE_MIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DHA_CACHE_MAX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DHA_EMPTY_MIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DHA_EMPTY_MAX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0, p1}, Lcom/android/server/am/DynamicHiddenApp;->printAmcCachedEmpty(Ljava/io/PrintWriter;)V

    .line 86
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_enable_userspace_lmk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_use_minfree_levels "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_enable_upgrade_criadj "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_freelimit_enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_freelimit_val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_upgrade_pressure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_custom_sw_limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_custom_tm_limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_psi_medium_th "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_psi_critical_th "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_use_lowmem_keep_except "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0, p1}, Lcom/android/server/am/DynamicHiddenApp;->printLowMemDectectorEnable(Ljava/io/PrintWriter;)V

    .line 100
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->printAppCompactorEnable(Ljava/io/PrintWriter;)V

    .line 101
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public updateParamsFile()V
    .registers 7

    const-string v0, "[=:]"

    const-string v1, "DynamicHiddenApp_BgAppPropManager"

    const-string v2, "/data/log/dha_parameter.dat"

    const/4 v3, 0x0

    :try_start_7
    const-string v4, "Start updateParamsFile"

    .line 120
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "updateParamsFile dha_parameter.dat exist"

    .line 122
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_1c} :catch_86
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1c} :catch_74
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_1c} :catch_6c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_6a

    .line 124
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_1c

    .line 128
    :cond_41
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p0, v4, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->updateTuningParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_5a} :catch_68
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_5a} :catch_65
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c .. :try_end_5a} :catch_62
    .catchall {:try_start_1c .. :try_end_5a} :catchall_5f

    goto :goto_1c

    .line 141
    :cond_5b
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_81
    .catch Ljava/lang/NullPointerException; {:try_start_5b .. :try_end_5e} :catch_7c

    goto :goto_8e

    :catchall_5f
    move-exception p0

    move-object v3, v2

    goto :goto_8f

    :catch_62
    move-exception p0

    move-object v3, v2

    goto :goto_6d

    :catch_65
    move-exception p0

    move-object v3, v2

    goto :goto_75

    :catch_68
    move-object v3, v2

    goto :goto_86

    :catchall_6a
    move-exception p0

    goto :goto_8f

    :catch_6c
    move-exception p0

    .line 138
    :goto_6d
    :try_start_6d
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6a

    .line 141
    :try_start_70
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_81
    .catch Ljava/lang/NullPointerException; {:try_start_70 .. :try_end_73} :catch_7c

    goto :goto_8e

    :catch_74
    move-exception p0

    .line 136
    :goto_75
    :try_start_75
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_6a

    .line 141
    :try_start_78
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_81
    .catch Ljava/lang/NullPointerException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_8e

    :catch_7c
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_8e

    :catch_81
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8e

    :catch_86
    :goto_86
    :try_start_86
    const-string p0, "file does not exist"

    .line 134
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_6a

    .line 141
    :try_start_8b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_81
    .catch Ljava/lang/NullPointerException; {:try_start_8b .. :try_end_8e} :catch_7c

    :goto_8e
    return-void

    :goto_8f
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_98
    .catch Ljava/lang/NullPointerException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_9c

    :catch_93
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9c

    :catch_98
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    :goto_9c
    throw p0
.end method

.method public updateParamsIntent(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "DynamicHiddenApp_BgAppPropManager"

    const-string v1, "Start updateParamsIntent"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->updateTuningParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 160
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - value is null"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_3e
    return-void
.end method

.method public final updateTuningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 166
    iget-object v0, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->getBGSlotManagerInstance()Lcom/android/server/bgslotmanager/BGSlotManager;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->getBGProtectManagerInstance()Lcom/android/server/am/BGProtectManager;

    move-result-object v1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ], value = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicHiddenApp_BgAppPropManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_30
    const-string/jumbo v2, "ro.slmk.dha_cached_max"

    .line 174
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_44

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/bgslotmanager/BGSlotManager;->setOriginCachedMax(I)V

    goto/16 :goto_40b

    :cond_44
    const-string/jumbo v2, "ro.slmk.dha_cached_min"

    .line 177
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 178
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/bgslotmanager/BGSlotManager;->setOriginCachedMin(I)V

    goto/16 :goto_40b

    :cond_56
    const-string/jumbo v2, "ro.slmk.dha_empty_max"

    .line 180
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/bgslotmanager/BGSlotManager;->setOriginEmptyMax(I)V

    goto/16 :goto_40b

    :cond_68
    const-string/jumbo v2, "ro.slmk.dha_empty_min"

    .line 183
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 184
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/bgslotmanager/BGSlotManager;->setOriginEmptyMin(I)V

    goto/16 :goto_40b

    :cond_7a
    const-string/jumbo v2, "ro.slmk.dha_lmk_scale"

    .line 186
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 187
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    goto/16 :goto_40c

    :cond_8b
    const-string/jumbo v2, "ro.slmk.dha_lmk_array"

    .line 190
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 191
    sput-object p2, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dha_lmk_array mLMKArray ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40c

    :cond_ae
    const-string/jumbo v2, "ro.slmk.dha_pwhl_key"

    .line 195
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 196
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    :goto_bd
    move v7, v5

    move v5, v4

    move v4, v7

    goto/16 :goto_40c

    :cond_c2
    const-string/jumbo v2, "ro.slmk.dha_pwhl_key_knox"

    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    goto :goto_bd

    :cond_d2
    const-string/jumbo v2, "ro.slmk.ams_exception_enable"

    .line 203
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 204
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    goto/16 :goto_40b

    :cond_e3
    const-string/jumbo v2, "ro.slmk.fha_cached_max"

    .line 206
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 207
    iget-object v2, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/am/DynamicHiddenApp;->updateMaxCachedProcessesNumFHA(I)V

    goto/16 :goto_40b

    :cond_f7
    const-string/jumbo v2, "ro.slmk.fha_empty_rate"

    .line 209
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 210
    iget-object v2, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/am/DynamicHiddenApp;->updateEmptyRate(F)V

    goto/16 :goto_40b

    :cond_10b
    const-string/jumbo v2, "ro.slmk.cam_dha_ver"

    .line 212
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    goto/16 :goto_40b

    :cond_11c
    const-string/jumbo v2, "ro.slmk.enable_picked_adj"

    .line 215
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 216
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    goto/16 :goto_40b

    :cond_12d
    const-string/jumbo v2, "ro.slmk.dha_2ndprop_thMB"

    .line 218
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    goto/16 :goto_40b

    :cond_13e
    const-string/jumbo v2, "ro.slmk.low"

    .line 221
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 222
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_LOW_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 223
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_ADJ:I

    goto/16 :goto_40b

    :cond_15c
    const-string/jumbo v2, "ro.slmk.medium"

    .line 225
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 226
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_MEDIUM_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 227
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_MEDIUM_ADJ:I

    goto/16 :goto_40b

    :cond_17a
    const-string/jumbo v2, "ro.slmk.critical"

    .line 229
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_198

    .line 230
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 231
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_ADJ:I

    goto/16 :goto_40b

    :cond_198
    const-string/jumbo v2, "ro.slmk.debug"

    .line 233
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 234
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DEBUG:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1ae

    goto :goto_1af

    :cond_1ae
    move v5, v4

    :goto_1af
    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 235
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_DEBUG:Z

    goto/16 :goto_40b

    :cond_1ba
    const-string/jumbo v2, "ro.slmk.critical_upgrade"

    .line 237
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 238
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_UPGRADE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d0

    goto :goto_1d1

    :cond_1d0
    move v5, v4

    :goto_1d1
    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 239
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_UPGRADE:Z

    goto/16 :goto_40b

    :cond_1dc
    const-string/jumbo v2, "ro.slmk.upgrade_pressure"

    .line 241
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 242
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_UPGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 243
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    goto/16 :goto_40b

    :cond_1fa
    const-string/jumbo v2, "ro.slmk.downgrade_pressure"

    .line 245
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_220

    .line 246
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 247
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    .line 248
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    goto/16 :goto_40b

    :cond_220
    const-string/jumbo v2, "ro.slmk.kill_heaviest_task"

    .line 250
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_242

    .line 251
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_HEAVIEST_TASK:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_236

    goto :goto_237

    :cond_236
    move v5, v4

    :goto_237
    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 252
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_HEAVIEST_TASK:Z

    goto/16 :goto_40b

    :cond_242
    const-string/jumbo v2, "ro.slmk.kill_timeout_ms"

    .line 254
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_268

    .line 255
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_TIMEOUT_MS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    .line 257
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    goto/16 :goto_40b

    :cond_268
    const-string/jumbo v2, "ro.slmk.use_minfree_levels"

    .line 259
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 260
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_USE_MINFREE_LEVELS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27e

    goto :goto_27f

    :cond_27e
    move v5, v4

    :goto_27f
    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 261
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    goto/16 :goto_40b

    :cond_28a
    const-string/jumbo v2, "ro.slmk.enable_cmarbinfree_sub"

    .line 263
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ac

    .line 264
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_CMARBINFREE_SUB:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a0

    goto :goto_2a1

    :cond_2a0
    move v5, v4

    :goto_2a1
    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 265
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_CMARBINFREE_SUB:Z

    goto/16 :goto_40b

    :cond_2ac
    const-string/jumbo v2, "ro.slmk.enable_upgrade_criadj"

    .line 267
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ce

    .line 268
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_UPGRADE_CRIADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c2

    goto :goto_2c3

    :cond_2c2
    move v5, v4

    :goto_2c3
    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 269
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    goto/16 :goto_40b

    :cond_2ce
    const-string/jumbo v2, "ro.slmk.freelimit_enable"

    .line 271
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f0

    .line 272
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_ENABLE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e4

    goto :goto_2e5

    :cond_2e4
    move v5, v4

    :goto_2e5
    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 273
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    goto/16 :goto_40b

    :cond_2f0
    const-string/jumbo v2, "ro.slmk.freelimit_val"

    .line 275
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30e

    .line 276
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_VAL:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 277
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    goto/16 :goto_40b

    :cond_30e
    const-string/jumbo v2, "ro.slmk.custom_sw_limit"

    .line 279
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_336

    .line 280
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit8 v5, v5, 0x5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    goto/16 :goto_40b

    :cond_336
    const-string/jumbo v2, "ro.slmk.custom_tm_limit"

    .line 284
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35e

    .line 285
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_TIMEOUT_MS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 286
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    .line 287
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    goto/16 :goto_40b

    :cond_35e
    const-string/jumbo v2, "ro.slmk.psi_low"

    .line 289
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37c

    .line 290
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_LOW_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 291
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_LOW_TH:I

    goto/16 :goto_40b

    :cond_37c
    const-string/jumbo v2, "ro.slmk.psi_medium"

    .line 293
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_399

    .line 294
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_MEDIUM_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 295
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    goto :goto_40b

    :cond_399
    const-string/jumbo v2, "ro.slmk.psi_critical"

    .line 297
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b6

    .line 298
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_CRITICAL_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 299
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    goto :goto_40b

    :cond_3b6
    const-string/jumbo v2, "ro.slmk.swappiness"

    .line 301
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c6

    const-string/jumbo v2, "sys.sysctl.swappiness"

    .line 302
    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40b

    :cond_3c6
    const-string/jumbo v2, "ro.slmk.mmap_readaround_limit"

    .line 304
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d6

    const-string/jumbo v2, "sys.sysctl.mmap_readaround_limit"

    .line 305
    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40b

    :cond_3d6
    const-string/jumbo v2, "ro.slmk.fault_around_bytes"

    .line 307
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e6

    const-string/jumbo v2, "sys.sysctl.fault_around_bytes"

    .line 308
    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40b

    :cond_3e6
    const-string/jumbo v2, "ro.slmk.use_bg_keeping_policy"

    .line 310
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3fd

    .line 311
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_SET_BG_KEEPING:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    goto :goto_40b

    .line 313
    :cond_3fd
    iget-object v2, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/DynamicHiddenApp;->setKpmParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41c

    const-string/jumbo v2, "setKpmParams"

    .line 314
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40b
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_40b} :catch_431

    :goto_40b
    move v5, v4

    :goto_40c
    if-eqz v4, :cond_411

    .line 327
    invoke-virtual {v1}, Lcom/android/server/am/BGProtectManager;->initBGProtectManagerPostBoot()V

    :cond_411
    if-eqz v5, :cond_418

    .line 330
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    .line 332
    :cond_418
    invoke-virtual {v0}, Lcom/android/server/bgslotmanager/BGSlotManager;->updateDefaultCachedMAX()V

    return-void

    .line 316
    :cond_41c
    :try_start_41c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - cannot matched parameter"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_430
    .catch Ljava/lang/NumberFormatException; {:try_start_41c .. :try_end_430} :catch_431

    return-void

    :catch_431
    move-exception p0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred not correct data format ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]  ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-void
.end method
