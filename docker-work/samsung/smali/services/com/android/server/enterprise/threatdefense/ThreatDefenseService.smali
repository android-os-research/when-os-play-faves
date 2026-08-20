.class public final Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;
.super Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;
.source "ThreatDefenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final ACTION_PACKAGE_RULES_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MTDL_PACKAGE_RULES_REMOVED"

.field public static final ALL_GROUPS:Ljava/lang/String; = "all"

.field public static final BRAKET_END_STRING:Ljava/lang/String; = "\\)"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final BRAKET_START_STRING:Ljava/lang/String; = "\\("
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEBUG:Z

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final ERROR_CAST_CLASS:I = -0x68

.field public static final ERROR_INIT_JSON_OBJECT:I = -0x6b

.field public static final ERROR_INVALID_ARGUMENT:I = -0x6a

.field public static final ERROR_INVALID_PKG:I = -0x65

.field public static final ERROR_INVALID_PROC:I = -0x69

.field public static final ERROR_NO_PACKAGE_RULES:I = -0x66

.field public static final ERROR_POLICY_VERSION:I = -0x64

.field public static final ERROR_RESTRICT_CHAR:I = -0x67

.field public static final ERROR_SECURITY_EXCEPTION:I = -0x6d

.field public static final ERROR_SIGNATURE:I = -0x6c

.field public static final ERROR_STRING_IOEXCEPTION:Ljava/lang/String; = "IOException"

.field public static final ERROR_STRING_NULL_CONTEXT:Ljava/lang/String; = "ContextInfo is null"

.field public static final KNOX_MOBILE_THREAT_DEFENSE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PROCFS_STRING:Ljava/lang/String; = "/proc/"

.field public static final RESTRICTED_CHAR_LIST:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SENSITIVE_PROCESS_PROC_LEN_LIST:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SENSTIVE_PROCESS_PROC_POSITION:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SPACE_STRING:Ljava/lang/String; = " "

.field public static final SYSPROP_KA_INTERVAL:Ljava/lang/String; = "sys.mtdl.interval"

.field public static final SYSPROP_PACKAGE_START:Ljava/lang/String; = "sys.mtdl.start"

.field public static final SYSPROP_SKIP_PACKAGE_SIGNATURE:Ljava/lang/String; = "sys.mtdl.sign"

.field public static final SYSPROP_SKIP_RUFS_ENCODE:Ljava/lang/String; = "sys.mtdl.encode"

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final TAG:Ljava/lang/String;

.field public static final TIMER_NAME:Ljava/lang/String; = "MTDL_Timer"

.field public static final UPDATE_INTERVAL:J = 0x5265c00L

.field public static final sAllowedProcRules:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final sAllowedProcessProcRules:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final sLock:Ljava/lang/Object;

.field public static sProcessIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mTimer:Ljava/util/Timer;

.field public final mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetPackageRules(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->resetPackageRules()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsAllowedProcRules()Ljava/util/Hashtable;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsAllowedProcessProcRules()Ljava/util/Hashtable;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 50
    const-class v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 74
    fill-array-data v0, :array_54

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    const-string/jumbo v0, "stat"

    .line 79
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput v2, v0, v1

    .line 84
    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    const-string v0, ";"

    const-string v1, "*"

    const-string v2, "."

    .line 100
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    .line 128
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    .line 131
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    return-void

    nop

    :array_54
    .array-data 4
        0x1c
        0x1d
        0x1e
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;-><init>()V

    .line 140
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 175
    new-instance v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;-><init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimerTask:Ljava/util/TimerTask;

    .line 683
    new-instance v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;-><init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v1, "Start ThreatDefenseService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->initIntervalTasks()V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->initReceiver()V

    return-void
.end method


# virtual methods
.method public final enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 3

    .line 195
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public final getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 191
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getProcessId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 239
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "ContextInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 243
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 244
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(Ljava/lang/String;I)V

    if-eqz p2, :cond_98

    .line 247
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto/16 :goto_98

    .line 251
    :cond_2a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_32
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->updateProcessIds()V

    const-string p0, "all"

    .line 255
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_57

    move p0, v0

    .line 256
    :goto_3f
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p0, p2, :cond_7c

    .line 257
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_3f

    :cond_57
    move p0, v0

    .line 261
    :goto_58
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p0, v2, :cond_7c

    .line 262
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 263
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_79
    add-int/lit8 p0, p0, 0x1

    goto :goto_58

    .line 268
    :cond_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_32 .. :try_end_7d} :catchall_95

    .line 270
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p2, p0, [I

    :goto_83
    if-ge v0, p0, :cond_94

    .line 272
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    :cond_94
    return-object p2

    :catchall_95
    move-exception p0

    .line 268
    :try_start_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw p0

    :cond_98
    :goto_98
    return-object v0
.end method

.method public hasPackageRules(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 417
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 418
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1a

    .line 420
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v0, "Get package error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 425
    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    return v1

    .line 427
    :cond_24
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_2a} :catch_2d

    if-eqz p0, :cond_31

    return v1

    :catch_2d
    move-exception p0

    .line 430
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_31
    return p1
.end method

.method public hasRestrictCharacter(Ljava/lang/String;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 577
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 578
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v1
.end method

.method public hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 624
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x8000000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_62

    .line 637
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 638
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hasMultipleSigners"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_31
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    if-nez p0, :cond_3f

    .line 643
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "getApkContentsSigners() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 646
    :cond_3f
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5a

    if-nez p2, :cond_4a

    goto :goto_5a

    .line 651
    :cond_4a
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    .line 657
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "Signature check failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_58
    const/4 p0, 0x1

    return p0

    .line 648
    :cond_5a
    :goto_5a
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "Get package signature failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_62
    move-exception p0

    .line 632
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid package : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public final initIntervalTasks()V
    .registers 14

    .line 158
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_d

    .line 159
    new-instance v0, Ljava/util/Timer;

    const-string v1, "MTDL_Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 162
    :cond_d
    sget-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    const-wide/32 v1, 0xea60

    const-wide/32 v3, 0x5265c00

    if-eqz v0, :cond_30

    const-string/jumbo v0, "sys.mtdl.interval"

    .line 163
    invoke-static {v0, v3, v4}, Landroid/os/SemSystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2e

    .line 165
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v3, "Custom interval applied"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v5, v1

    if-gez v0, :cond_2e

    goto :goto_31

    :cond_2e
    move-wide v1, v5

    goto :goto_31

    :cond_30
    move-wide v1, v3

    .line 171
    :goto_31
    iget-object v7, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    iget-object v8, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v9, 0x0

    move-wide v11, v1

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 172
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer Scheduled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initReceiver()V
    .registers 3

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v1, "package"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_c

    .line 546
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "Get package name failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x65

    return p0

    .line 550
    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Denied proc = "

    if-eqz v0, :cond_30

    .line 551
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reason : Restrict Character"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x67

    return p0

    :cond_30
    if-eqz p3, :cond_7b

    const/4 v0, 0x0

    const/16 v2, -0x69

    :try_start_35
    new-array v0, v0, [Ljava/lang/String;

    .line 557
    invoke-static {p2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 558
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " reason : Symbolic Link"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/nio/file/InvalidPathException; {:try_start_35 .. :try_end_5a} :catch_5b

    return v2

    :catch_5b
    move-exception p0

    .line 562
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid path p = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", err = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 567
    :cond_7b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProcRules(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    if-gez p0, :cond_9f

    .line 569
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Denied proc : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", errno="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    return p0
.end method

.method public final isAllowedProcRules(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    .line 438
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const/16 v1, -0x66

    if-eqz p3, :cond_f

    .line 442
    :try_start_9
    sget-object p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    goto :goto_14

    .line 444
    :cond_f
    sget-object p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 447
    :goto_14
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_31

    .line 448
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Please set package rules first : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 451
    :cond_31
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-eqz p3, :cond_70

    .line 454
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 456
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 457
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not allowed proc : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x67

    return p0

    :cond_6e
    const/4 p0, 0x0

    return p0

    .line 465
    :cond_70
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No rules : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_8f} :catch_97
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_8f} :catch_90

    goto :goto_9d

    :catch_90
    move-exception p0

    .line 470
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    const/16 v1, -0x68

    goto :goto_9d

    :catch_97
    move-exception p0

    .line 467
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v1, -0x65

    :goto_9d
    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public final notifyToPackages()V
    .registers 3

    .line 678
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v1, "Send broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.MTDL_PACKAGE_RULES_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public procReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "IOException"

    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 201
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "ContextInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 205
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 206
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(Ljava/lang/String;I)V

    .line 208
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    if-gez p0, :cond_29

    return-object v1

    .line 212
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "/proc/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 217
    :try_start_3a
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_3a .. :try_end_3f} :catch_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3f} :catch_7b
    .catchall {:try_start_3a .. :try_end_3f} :catchall_78

    .line 218
    :try_start_3f
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_4b} :catch_75
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_4b} :catch_72
    .catchall {:try_start_3f .. :try_end_4b} :catchall_70

    .line 219
    :try_start_4b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_5d} :catch_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_5d} :catch_6c
    .catchall {:try_start_4b .. :try_end_5d} :catchall_c1

    .line 227
    :try_start_5d
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 229
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_63} :catch_64

    goto :goto_6a

    :catch_64
    move-exception p0

    .line 231
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6a
    move-object v1, p2

    goto :goto_c0

    :catch_6c
    move-exception p2

    goto :goto_7e

    :catch_6e
    move-exception p2

    goto :goto_a6

    :catchall_70
    move-exception p2

    goto :goto_c3

    :catch_72
    move-exception p2

    move-object p0, v1

    goto :goto_7e

    :catch_75
    move-exception p2

    move-object p0, v1

    goto :goto_a6

    :catchall_78
    move-exception p2

    move-object p1, v1

    goto :goto_c3

    :catch_7b
    move-exception p2

    move-object p0, v1

    move-object p1, p0

    .line 223
    :goto_7e
    :try_start_7e
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_c1

    if-eqz p0, :cond_9d

    .line 227
    :try_start_9a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    :cond_9d
    if-eqz p1, :cond_c0

    .line 229
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_b3

    goto :goto_c0

    :catch_a3
    move-exception p2

    move-object p0, v1

    move-object p1, p0

    .line 221
    :goto_a6
    :try_start_a6
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v3, "SecurityException"

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_c1

    if-eqz p0, :cond_b5

    .line 227
    :try_start_af
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    goto :goto_b5

    :catch_b3
    move-exception p0

    goto :goto_bb

    :cond_b5
    :goto_b5
    if-eqz p1, :cond_c0

    .line 229
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_ba} :catch_b3

    goto :goto_c0

    .line 231
    :goto_bb
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c0
    :goto_c0
    return-object v1

    :catchall_c1
    move-exception p2

    move-object v1, p0

    :goto_c3
    if-eqz v1, :cond_cb

    .line 227
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_cb

    :catch_c9
    move-exception p0

    goto :goto_d1

    :cond_cb
    :goto_cb
    if-eqz p1, :cond_d6

    .line 229
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_d0} :catch_c9

    goto :goto_d6

    .line 231
    :goto_d1
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    :cond_d6
    :goto_d6
    throw p2
.end method

.method public processProcReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    const-string v0, "IOException"

    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 280
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "ContextInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 283
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 284
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 285
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(Ljava/lang/String;I)V

    .line 286
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-gez p1, :cond_29

    return-object v1

    .line 292
    :cond_29
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    array-length v2, p1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_2f
    if-ge v5, v2, :cond_40

    aget-object v7, p1, v5

    .line 293
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    move v4, v3

    goto :goto_40

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 299
    :cond_40
    :goto_40
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    array-length p1, p1

    if-le v6, p1, :cond_5c

    .line 300
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Get sensitive proc failed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5c
    if-ge p3, v3, :cond_5f

    return-object v1

    .line 309
    :cond_5f
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 310
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 315
    :try_start_7c
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_81} :catch_f5
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_81} :catch_cd
    .catchall {:try_start_7c .. :try_end_81} :catchall_ca

    .line 316
    :try_start_81
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8d
    .catch Ljava/lang/SecurityException; {:try_start_81 .. :try_end_8d} :catch_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_8d} :catch_c4
    .catchall {:try_start_81 .. :try_end_8d} :catchall_10a

    .line 317
    :try_start_8d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;
    :try_end_9f
    .catch Ljava/lang/SecurityException; {:try_start_8d .. :try_end_9f} :catch_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_9f} :catch_bc
    .catchall {:try_start_8d .. :try_end_9f} :catchall_b9

    if-eqz v4, :cond_aa

    .line 320
    :try_start_a1
    invoke-virtual {p0, p3, v6}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3
    :try_end_a5
    .catch Ljava/lang/SecurityException; {:try_start_a1 .. :try_end_a5} :catch_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_a1 .. :try_end_a5} :catch_a6
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_b9

    goto :goto_aa

    :catch_a6
    move-exception p0

    goto :goto_be

    :catch_a8
    move-exception p0

    goto :goto_c2

    .line 329
    :cond_aa
    :goto_aa
    :try_start_aa
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 331
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b0} :catch_b2

    goto/16 :goto_109

    :catch_b2
    move-exception p0

    .line 333
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_109

    :catchall_b9
    move-exception p0

    move-object v1, p1

    goto :goto_10b

    :catch_bc
    move-exception p0

    move-object p3, v1

    :goto_be
    move-object v1, p1

    goto :goto_d0

    :catch_c0
    move-exception p0

    move-object p3, v1

    :goto_c2
    move-object v1, p1

    goto :goto_f8

    :catch_c4
    move-exception p0

    move-object p3, v1

    goto :goto_d0

    :catch_c7
    move-exception p0

    move-object p3, v1

    goto :goto_f8

    :catchall_ca
    move-exception p0

    move-object p2, v1

    goto :goto_10b

    :catch_cd
    move-exception p0

    move-object p2, v1

    move-object p3, p2

    .line 325
    :goto_d0
    :try_start_d0
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_d0 .. :try_end_ea} :catchall_10a

    if-eqz v1, :cond_ef

    .line 329
    :try_start_ec
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_ef
    if-eqz p2, :cond_109

    .line 331
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f4} :catch_b2

    goto :goto_109

    :catch_f5
    move-exception p0

    move-object p2, v1

    move-object p3, p2

    .line 323
    :goto_f8
    :try_start_f8
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v2, "SecurityException"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_10a

    if-eqz v1, :cond_104

    .line 329
    :try_start_101
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_104
    if-eqz p2, :cond_109

    .line 331
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_109} :catch_b2

    :cond_109
    :goto_109
    return-object p3

    :catchall_10a
    move-exception p0

    :goto_10b
    if-eqz v1, :cond_113

    .line 329
    :try_start_10d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_113

    :catch_111
    move-exception p1

    goto :goto_119

    :cond_113
    :goto_113
    if-eqz p2, :cond_11e

    .line 331
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_118} :catch_111

    goto :goto_11e

    .line 333
    :goto_119
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    :cond_11e
    :goto_11e
    throw p0
.end method

.method public removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_12a

    const-string v0, " "

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12a

    const-string v1, "("

    .line 480
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12a

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_12a

    .line 485
    :cond_1d
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    aget v2, v1, p2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "\\("

    .line 486
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 489
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_113

    const/4 v5, 0x0

    .line 491
    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v7, 0x1

    .line 492
    aget-object v4, v4, v7

    const-string v8, "\\)"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 495
    array-length v8, v4

    if-ne v8, v6, :cond_55

    .line 496
    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 497
    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_56

    :cond_55
    move-object v4, p0

    :goto_56
    if-eqz v4, :cond_c1

    .line 501
    array-length v8, v4

    aget p2, v1, p2

    sub-int/2addr p2, v6

    if-ne v8, p2, :cond_c1

    .line 503
    array-length p0, v4

    move p1, v5

    :goto_60
    if-ge p1, p0, :cond_6c

    aget-object p2, v4, p1

    add-int/lit8 v1, v6, 0x1

    .line 504
    aput-object p2, v3, v6

    add-int/lit8 p1, p1, 0x1

    move v6, v1

    goto :goto_60

    .line 521
    :cond_6c
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    array-length p1, p0

    move p2, v5

    :goto_70
    const-string v1, ""

    if-ge p2, p1, :cond_9f

    aget v4, p0, p2

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v2, :cond_9a

    .line 526
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 529
    :cond_9a
    aput-object v1, v3, v4

    :goto_9c
    add-int/lit8 p2, p2, 0x1

    goto :goto_70

    .line 531
    :cond_9f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a4
    if-ge v5, v2, :cond_b8

    .line 532
    aget-object p1, v3, v5

    .line 533
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_af

    goto :goto_b5

    .line 535
    :cond_af
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b5
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    .line 538
    :cond_b8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 507
    :cond_c1
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove sensitive data failed, pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v0, :cond_fb

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sensitive data result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    if-eqz v4, :cond_112

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remained len="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_112
    return-object p0

    .line 517
    :cond_113
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid format line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 481
    :cond_12a
    :goto_12a
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid argument : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final resetPackageRules()V
    .registers 5

    .line 664
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1c

    .line 666
    sget-boolean p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz p0, :cond_1b

    .line 667
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v0, "Skip!! No rules"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void

    .line 672
    :cond_1c
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 673
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 674
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->notifyToPackages()V

    return-void
.end method

.method public setPackageRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 10

    if-eqz p2, :cond_142

    .line 341
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_142

    .line 345
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x65

    if-nez p1, :cond_1e

    return v0

    :cond_1e
    const-string/jumbo v1, "sys.mtdl.start"

    const/4 v2, 0x0

    .line 351
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "true"

    .line 353
    invoke-static {v1, v3}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 356
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "set system property failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/16 v1, -0x6c

    .line 362
    :try_start_3e
    new-instance v3, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    invoke-direct {v3, p2}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_51

    .line 365
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "Signature verification failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 369
    :cond_51
    new-instance v3, Lcom/android/server/enterprise/threatdefense/RuleParser;

    invoke-direct {v3, p2}, Lcom/android/server/enterprise/threatdefense/RuleParser;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackagePublicSignature()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_61

    return v1

    .line 374
    :cond_61
    new-instance p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 376
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->getPolicyVersion()I

    move-result p0

    .line 378
    sget-object v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app/rufs version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, p0, :cond_95

    const/16 p0, -0x64

    return p0

    .line 383
    :cond_95
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    .line 384
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid package rules. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 388
    :cond_c1
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e0

    .line 389
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replace proc rules : "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_e0
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replace process proc rules : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_ff
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcessProcList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10d
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_10d} :catch_13b
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_10d} :catch_136
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_10d} :catch_115
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_10d} :catch_10f

    move v0, v2

    goto :goto_13a

    :catch_10f
    move-exception p0

    .line 409
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    goto :goto_13a

    :catch_115
    move-exception p0

    .line 405
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Initialize json object failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0x6b

    goto :goto_13a

    :catch_136
    move-exception p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_13a
    return v0

    :catch_13b
    move-exception p0

    .line 399
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 p0, -0x68

    return p0

    :cond_142
    :goto_142
    const/16 p0, -0x6a

    return p0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final updateProcessIds()V
    .registers 13

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 587
    new-instance p0, Ljava/io/File;

    const-string v2, "/proc/"

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 594
    :try_start_e
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 595
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_98

    .line 596
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_21
    if-ge v6, v3, :cond_98

    aget-object v7, p0, v6

    .line 597
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "^[0-9]+"

    .line 598
    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_bb

    if-eqz v8, :cond_95

    .line 601
    :try_start_31
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_35} :catch_70
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_57
    .catchall {:try_start_31 .. :try_end_35} :catchall_bb

    .line 602
    :try_start_35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/String;

    invoke-static {v7, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    new-array v9, v4, [Ljava/nio/file/LinkOption;

    .line 603
    invoke-static {v7, v9}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v5
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_52} :catch_55
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_52} :catch_53
    .catchall {:try_start_35 .. :try_end_52} :catchall_bb

    goto :goto_88

    :catch_53
    move-exception v7

    goto :goto_59

    :catch_55
    move-exception v7

    goto :goto_72

    :catch_57
    move-exception v7

    move v8, v4

    .line 607
    :goto_59
    :try_start_59
    sget-object v9, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    :catch_70
    move-exception v7

    move v8, v4

    .line 605
    :goto_72
    sget-object v9, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    if-lez v8, :cond_95

    if-eqz v5, :cond_95

    .line 610
    sget-object v7, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-interface {v5}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 615
    :cond_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_59 .. :try_end_99} :catchall_bb

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 617
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update PIDs took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_bb
    move-exception p0

    .line 615
    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw p0
.end method
