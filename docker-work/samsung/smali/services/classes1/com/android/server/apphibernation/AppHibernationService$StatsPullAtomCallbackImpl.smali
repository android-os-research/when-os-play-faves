.class public final Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "AppHibernationService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/apphibernation/AppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StatsPullAtomCallbackImpl"
.end annotation


# static fields
.field public static final MEGABYTE_IN_BYTES:I = 0xf4240


# instance fields
.field public final synthetic this$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .registers 2

    .line 1051
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1057
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    const/16 v1, 0x277d

    const/16 v2, 0x277b

    const/4 v3, 0x0

    if-nez v0, :cond_10

    if-eq p1, v2, :cond_f

    if-ne p1, v1, :cond_10

    :cond_f
    return v3

    :cond_10
    if-eq p1, v2, :cond_54

    if-eq p1, v1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const-wide/16 v0, 0x0

    .line 1082
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v2}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$fgetmLock(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1083
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {p0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$fgetmGlobalHibernationStates(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v4, v3

    :cond_2e
    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 1084
    iget-boolean v6, v5, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz v6, :cond_2e

    add-int/lit8 v4, v4, 0x1

    .line 1086
    iget-wide v5, v5, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    add-long/2addr v0, v5

    goto :goto_2e

    .line 1089
    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_1f .. :try_end_45} :catchall_51

    const-wide/32 v5, 0xf4240

    .line 1090
    div-long/2addr v0, v5

    .line 1091
    invoke-static {p1, v4, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object p0

    .line 1090
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    :catchall_51
    move-exception p0

    .line 1089
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0

    .line 1065
    :cond_54
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$fgetmUserManager(Lcom/android/server/apphibernation/AppHibernationService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 1066
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_63
    if-ge v2, v1, :cond_8d

    .line 1068
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1069
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v5}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$fgetmUserManager(Lcom/android/server/apphibernation/AppHibernationService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1070
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 1073
    invoke-virtual {v5, v4}, Lcom/android/server/apphibernation/AppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1071
    invoke-static {p1, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v4

    .line 1070
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_8d
    :goto_8d
    return v3
.end method
