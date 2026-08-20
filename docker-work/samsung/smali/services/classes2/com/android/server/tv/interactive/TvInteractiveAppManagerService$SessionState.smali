.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SessionState"
.end annotation


# instance fields
.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mIAppServiceId:Ljava/lang/String;

.field public final mSeq:I

.field public mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

.field public final mSessionToken:Landroid/os/IBinder;

.field public final mType:I

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallingUid(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mCallingUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponent(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;Landroid/media/tv/interactive/ITvInteractiveAppSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/ComponentName;Landroid/media/tv/interactive/ITvInteractiveAppClient;IIII)V
    .registers 11

    .line 1781
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1782
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    .line 1783
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    .line 1784
    iput-object p5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mComponent:Landroid/content/ComponentName;

    .line 1785
    iput p4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mType:I

    .line 1786
    iput-object p6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 1787
    iput p7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    .line 1788
    iput p8, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mCallingUid:I

    .line 1789
    iput p9, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mCallingPid:I

    .line 1790
    iput p10, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/ComponentName;Landroid/media/tv/interactive/ITvInteractiveAppClient;IIIILcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/ComponentName;Landroid/media/tv/interactive/ITvInteractiveAppClient;IIII)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    return-void
.end method
