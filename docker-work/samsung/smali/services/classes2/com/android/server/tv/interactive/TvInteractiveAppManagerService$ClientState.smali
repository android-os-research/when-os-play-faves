.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;
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
    name = "ClientState"
.end annotation


# instance fields
.field public mClientToken:Landroid/os/IBinder;

.field public final mSessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V
    .registers 4

    .line 1804
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1799
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 1805
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    .line 1806
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .line 1815
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1816
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v1

    .line 1819
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-eqz v1, :cond_66

    .line 1821
    :cond_1d
    :goto_1d
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_66

    .line 1822
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 1823
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1828
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "TvInteractiveAppManagerService"

    .line 1829
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove sessionToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_66
    const/4 v1, 0x0

    .line 1835
    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    .line 1836
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 1810
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method
