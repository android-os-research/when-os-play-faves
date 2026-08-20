.class public Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;
.super Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;
.source "SehHdrSolutionService.java"


# static fields
.field private static final HANDLER_MSG_START_HW_HDR:I = 0x64

.field private static final HANDLER_MSG_STOP_HW_HDR:I = 0x65

.field public static final SERVICE_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "SehHdrSolutionService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHdrDisplayController:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

.field private mHdrDisplayNitMapper:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

.field private mLogLevel:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHdrDisplayController(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHdrDisplayController:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHdrDisplayNitMapper(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHdrDisplayNitMapper:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)I
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManagerService"    # Landroid/app/IActivityManager;

    .line 36
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    .line 37
    const-string v0, "SehHdrSolutionService"

    const-string v1, "create : 1.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug.hdr.log.service"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    .line 39
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-direct {v0, p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHdrDisplayController:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    .line 40
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-direct {v0, p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHdrDisplayNitMapper:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    .line 41
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;-><init>(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;Landroid/os/Looper;)V

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method


# virtual methods
.method public updateHdrLayerState(Z)V
    .registers 4
    .param p1, "started"    # Z

    .line 66
    if-eqz p1, :cond_b

    .line 67
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    goto :goto_13

    .line 69
    .end local v0    # "msg":Landroid/os/Message;
    :cond_b
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 71
    .restart local v0    # "msg":Landroid/os/Message;
    :goto_13
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    return-void
.end method
