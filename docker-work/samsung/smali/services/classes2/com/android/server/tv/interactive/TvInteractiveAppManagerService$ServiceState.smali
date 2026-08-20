.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceState"
.end annotation


# instance fields
.field public mBound:Z

.field public mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mIAppServiceId:Ljava/lang/String;

.field public final mPendingAppLinkCommand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingAppLinkInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/media/tv/interactive/AppLinkInfo;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public mReconnecting:Z

.field public mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

.field public final mSessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponent(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mIAppServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingAppLinkInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mReconnecting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mBound:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mReconnecting:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/ITvInteractiveAppService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->addPendingAppLink(Landroid/media/tv/interactive/AppLinkInfo;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->addPendingAppLinkCommand(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 7

    .line 1853
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    .line 1845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    .line 1846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 1854
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mComponent:Landroid/content/ComponentName;

    .line 1855
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p4, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection-IA;)V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mConnection:Landroid/content/ServiceConnection;

    .line 1856
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mIAppServiceId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final addPendingAppLink(Landroid/media/tv/interactive/AppLinkInfo;Z)V
    .registers 3

    .line 1860
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addPendingAppLinkCommand(Landroid/os/Bundle;)V
    .registers 2

    .line 1864
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
