.class public final Lcom/android/server/tv/TvInputManagerService$SessionState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SessionState"
.end annotation


# instance fields
.field public final callingPid:I

.field public final callingUid:I

.field public final client:Landroid/media/tv/ITvInputClient;

.field public final componentName:Landroid/content/ComponentName;

.field public currentChannel:Landroid/net/Uri;

.field public hardwareSessionToken:Landroid/os/IBinder;

.field public final inputId:Ljava/lang/String;

.field public isCurrent:Z

.field public isMainSession:Z

.field public final isRecordingSession:Z

.field public isVisible:Z

.field public final seq:I

.field public session:Landroid/media/tv/ITvInputSession;

.field public final sessionId:Ljava/lang/String;

.field public final sessionToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field public final userId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetcallingPid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisVisible(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isVisible:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputhardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisVisible(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isVisible:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsession(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;)V
    .registers 13

    .line 3056
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3049
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    const/4 v0, 0x0

    .line 3050
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 3051
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isVisible:Z

    .line 3052
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    .line 3057
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 3058
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 3059
    iput-object p4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 3060
    iput-boolean p5, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 3061
    iput-object p6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 3062
    iput p7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 3063
    iput p8, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 3064
    iput p9, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingPid:I

    .line 3065
    iput p10, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 3066
    iput-object p11, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 3071
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 3072
    :try_start_8
    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 3073
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1, p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mclearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 3074
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw p0
.end method
