.class public Lcom/android/server/wm/DexHelpController;
.super Ljava/lang/Object;
.source "DexHelpController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DexHelpController$H;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DexHelpController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mH:Lcom/android/server/wm/DexHelpController$H;

.field public final mHelps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/IDexHelpRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$lJK1-nbSKcUf7BXFwtT1n6Znkio(Lcom/android/server/wm/DexHelpController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DexHelpController;->lambda$installSystemProvidersLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/DexHelpController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method private synthetic lambda$installSystemProvidersLocked$0()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/DexHelpController;->retrieveSettings()V

    .line 65
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public addClientTransactionItemIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/app/servertransaction/ClientTransaction;I)Z
    .registers 4

    .line 53
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DexHelpController;->getHelpRecord(I)Lcom/android/server/wm/IDexHelpRecord;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "DexHelpController"

    const-string p1, "Wrong help mMode."

    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_f
    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/IDexHelpRecord;->addClientTransactionItemIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/app/servertransaction/ClientTransaction;)Z

    move-result p0

    return p0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getHelpRecord(I)Lcom/android/server/wm/IDexHelpRecord;
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/IDexHelpRecord;

    return-object p0
.end method

.method public initialize()V
    .registers 3

    .line 44
    new-instance v0, Lcom/android/server/wm/DexHelpController$H;

    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DexHelpController$H;-><init>(Lcom/android/server/wm/DexHelpController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DexHelpController;->mH:Lcom/android/server/wm/DexHelpController$H;

    return-void
.end method

.method public installSystemProvidersLocked()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/DexHelpController;->mH:Lcom/android/server/wm/DexHelpController$H;

    new-instance v1, Lcom/android/server/wm/DexHelpController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DexHelpController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DexHelpController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportHelpShown(Landroid/os/IBinder;I)V
    .registers 5

    .line 77
    iget-object p0, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/IDexHelpRecord;

    if-eqz p0, :cond_24

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportHelpShown: mode#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DexHelpController"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {p0, p1}, Lcom/android/server/wm/IDexHelpRecord;->reportShown(Landroid/os/IBinder;)V

    :cond_24
    return-void
.end method

.method public final retrieveSettings()V
    .registers 4

    const/4 v0, 0x0

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 71
    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/IDexHelpRecord;

    .line 72
    iget-object v2, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-interface {v1, v2}, Lcom/android/server/wm/IDexHelpRecord;->retrieveSettings(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method public startUserLocked(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/DexHelpController;->retrieveSettings()V

    :cond_5
    return-void
.end method

.method public timeout(I)V
    .registers 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexHelpController;->getHelpRecord(I)Lcom/android/server/wm/IDexHelpRecord;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 97
    invoke-interface {p0}, Lcom/android/server/wm/IDexHelpRecord;->timeout()V

    :cond_9
    return-void
.end method
