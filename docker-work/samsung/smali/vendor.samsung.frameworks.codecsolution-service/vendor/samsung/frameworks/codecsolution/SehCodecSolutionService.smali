.class public Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;
.super Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;
.source "SehCodecSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;
    }
.end annotation


# static fields
.field private static final HANDLER_MSG_LOGGING_EVENT:I = 0x384

.field private static final HANDLER_MSG_SCPM_V2_REGISTER:I = 0xd2

.field private static final HANDLER_MSG_SEND_BROADCAST:I = 0x320

.field private static final HANDLER_MSG_SEND_BROADCAST_WITH_DATA:I = 0x321

.field private static final HANDLER_MSG_SET_SMARTFITTING_PID:I = 0xca

.field private static final HANDLER_MSG_START_SMART_FITTING_SERVICE:I = 0xc8

.field private static final HANDLER_MSG_STOP_SMART_FITTING_SERVICE:I = 0xc9

.field private static final INTENT_DOLBY_STATE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.ACTION_DOLBY_CONTENT_PLAYBACK_STATE_CHANGED"

.field private static final MAX_PID_DUMP_COUNT:I = 0x100

.field public static final SERVICE_VERSION:Ljava/lang/String; = "2.3"

.field private static final TAG:Ljava/lang/String; = "SehCodecSolutionService"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsBootCompleted:Z

.field private mLogging:Lvendor/samsung/frameworks/codecsolution/Logging;

.field private mPidDumpIndex:I

.field private mPidDumpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

.field private mSmartFittingMode:I

.field private mVideoRecordingParameterMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityManager(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogging(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/Logging;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mLogging:Lvendor/samsung/frameworks/codecsolution/Logging;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;I)V
    .registers 2

    iput p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misBootCompleted(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Z
    .registers 1

    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->isBootCompleted()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManagerService"    # Landroid/app/IActivityManager;

    .line 108
    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mVideoRecordingParameterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    const-string v0, "SehCodecSolutionService"

    const-string v2, "create : 2.3"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/Logging;

    invoke-direct {v0, p1}, Lvendor/samsung/frameworks/codecsolution/Logging;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mLogging:Lvendor/samsung/frameworks/codecsolution/Logging;

    .line 112
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mActivityManager:Landroid/app/ActivityManager;

    .line 113
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mWindowManager:Landroid/view/WindowManager;

    .line 114
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 115
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4e
    if-ge v0, v1, :cond_5d

    .line 118
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    new-instance v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    invoke-direct {v3}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 120
    .end local v0    # "i":I
    :cond_5d
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;-><init>(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;Landroid/os/Looper;)V

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    .line 217
    return-void
.end method

.method private isBootCompleted()Z
    .registers 4

    .line 220
    iget-boolean v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mIsBootCompleted:Z

    if-nez v0, :cond_11

    .line 221
    const-string v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v1, v2

    :cond_f
    iput-boolean v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mIsBootCompleted:Z

    .line 223
    :cond_11
    iget-boolean v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mIsBootCompleted:Z

    return v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_35

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump : Permission denial, pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SehCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_35
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 233
    const-string v0, "SCPMv2 is available"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H2SCAllowlistVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    invoke-virtual {v1}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getH2SCAllowlistVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_66

    .line 236
    :cond_61
    const-string v0, "SCPMv2 is not available"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    :goto_66
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v0, "List : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    if-nez v0, :cond_7a

    .line 242
    const-string v0, "List is null."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    return-void

    .line 245
    :cond_7a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_86

    .line 246
    const-string v0, "List size is 0."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    return-void

    .line 250
    :cond_86
    :try_start_86
    iget v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_88} :catch_136

    .local v0, "i":I
    :goto_88
    const/16 v1, 0x100

    const-string v2, " "

    if-ge v0, v1, :cond_df

    .line 251
    :try_start_8e
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v1, v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    if-eqz v1, :cond_dc

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v3, v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->date:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v3, v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v2, v2, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    :cond_dc
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 255
    .end local v0    # "i":I
    :cond_df
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_e0
    iget v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I

    if-ge v0, v1, :cond_135

    .line 256
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v1, v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    if-eqz v1, :cond_132

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v3, v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->date:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v3, v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v3, v3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_132} :catch_136

    .line 255
    :cond_132
    add-int/lit8 v0, v0, 0x1

    goto :goto_e0

    .line 262
    .end local v0    # "i":I
    :cond_135
    goto :goto_13c

    .line 260
    :catch_136
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unexpected exception."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13c
    return-void
.end method

.method public getDisplaySize()Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;
    .registers 4

    .line 276
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;

    invoke-direct {v0}, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;-><init>()V

    .line 277
    .local v0, "returnValue":Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;
    const/4 v1, 0x1

    iput v1, v0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;->width:I

    .line 278
    iput v1, v0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;->height:I

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SehCodecSolutionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object v0
.end method

.method public getH2SCAllowlistStatus(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "chipVendor"    # Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getH2SCAllowlistStatus : procName("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), chipVendor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SehCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 337
    .local v0, "queryResult":Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    const/4 v3, 0x0

    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 338
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    invoke-virtual {v2}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_52

    .line 339
    const-string v2, "v2 token is null, send msg to register"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 341
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 343
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_58

    .line 344
    :cond_52
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    invoke-virtual {v1, p1, p2}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isInH2SCAllowlist(Ljava/lang/String;Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    move-result-object v0

    .line 351
    :goto_58
    sget-object v1, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    if-ne v0, v1, :cond_5e

    .line 352
    const/4 v1, 0x1

    return v1

    .line 354
    :cond_5e
    return v3

    .line 347
    :cond_5f
    const-string v2, "SCPMV2 is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return v3
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 411
    const-string v0, "051b4eeec63a9059be5d446da356f2abf92c3874"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 406
    const/4 v0, 0x2

    return v0
.end method

.method public getSmartFittingAllowlistStatus()I
    .registers 2

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public getSmartFittingMode()I
    .registers 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmartFittingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSmartFittingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SehCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSmartFittingMode:I

    return v0
.end method

.method public getVideoRecordingParameter(J)Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    .registers 6
    .param p1, "id"    # J

    .line 381
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mVideoRecordingParameterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    .line 382
    .local v0, "param":Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoRecordingParameter id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SehCodecSolutionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-object v0
.end method

.method public hideSmartFittingButton()V
    .registers 1

    .line 297
    return-void
.end method

.method public isDesktopMode()Z
    .registers 2

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public isSmartFittingSupportedRatio()Z
    .registers 2

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoFitMode(Z)V
    .registers 2
    .param p1, "use"    # Z

    .line 317
    return-void
.end method

.method public setBlackbarState(Z)V
    .registers 2
    .param p1, "exist"    # Z

    .line 301
    return-void
.end method

.method public setSmartFittingMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmartFittingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SehCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iput p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSmartFittingMode:I

    .line 307
    return-void
.end method

.method public setSmartFittingPid(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 322
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 324
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    return-void
.end method

.method public setVideoRecordingParameter(JLvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "parameter"    # Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoRecordingParameter id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SehCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mVideoRecordingParameterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void
.end method

.method public showSmartFittingButton()V
    .registers 1

    .line 293
    return-void
.end method

.method public declared-synchronized startSmartFittingService()V
    .registers 1

    monitor-enter p0

    .line 285
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopSmartFittingService()V
    .registers 1

    monitor-enter p0

    .line 289
    monitor-exit p0

    return-void
.end method

.method public updateMediaStatisticsData(Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    .line 359
    const-string v0, "SehCodecSolutionService"

    if-nez p1, :cond_a

    .line 360
    const-string v1, "data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 363
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMediaStatisticsData: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 365
    return-void

    .line 367
    :cond_2f
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;

    invoke-direct {v0, p1}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "event":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x384

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 369
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    return-void
.end method

.method public updateStreamStatus(IZI)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "started"    # Z
    .param p3, "pid"    # I

    .line 389
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2f

    .line 390
    :cond_6
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x321

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 391
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "intent"

    const-string v3, "com.samsung.intent.action.ACTION_DOLBY_CONTENT_PLAYBACK_STATE_CHANGED"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v2, "PLAYBACK_STATE"

    if-eqz p2, :cond_23

    .line 394
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_27

    .line 396
    :cond_23
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    :goto_27
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 399
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 401
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_2f
    return-void
.end method
