.class public Lcom/android/server/wm/DexDockingController;
.super Ljava/lang/Object;
.source "DexDockingController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# static fields
.field public static final TAG:Ljava/lang/String; = "DexDockingController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mCandidateTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayWidth:I

.field public final mDockingBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final mSkipMoveToFrontList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$NsGvPvdluNjxJ2Haj9htlx58JCE(Lcom/android/server/wm/DexDockingController;ILcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DexDockingController;->lambda$moveTaskToFrontIfNeeded$1(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SUQtoHP1vYL1wKKd3U89xKS3R40(Lcom/android/server/wm/Task;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DexDockingController;->lambda$clearAllTasks$2(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kkhiZm5NHsLctvqOeRcntB8baDI(ILcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DexDockingController;->lambda$calculateMaxWidth$4(ILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lZFux8Hz-jynwAgXcXPdYANix6U(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DexDockingController;->lambda$updateDexDockingIfNeeded$3(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n0Dl-ixnJzb7YZEhfmgQCNrkKcA(Lcom/android/server/wm/DexDockingController;ILandroid/graphics/Rect;Lcom/android/server/wm/Task;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DexDockingController;->lambda$resizeOtherTaskIfNeeded$0(ILandroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/server/wm/DexDockingController;->mCandidateTask:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexDockingController;->mDockingBounds:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexDockingController;->mSkipMoveToFrontList:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/android/server/wm/DexDockingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static synthetic lambda$calculateMaxWidth$4(ILcom/android/server/wm/Task;)Z
    .registers 2

    .line 172
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic lambda$clearAllTasks$2(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 147
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexTaskDocked()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 148
    sget-object v0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setDexTaskDocking(I)V

    :cond_20
    return-void
.end method

.method private synthetic lambda$moveTaskToFrontIfNeeded$1(ILcom/android/server/wm/Task;)V
    .registers 4

    .line 126
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    move-result v0

    if-eq v0, p1, :cond_7

    return-void

    .line 130
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/android/server/wm/DexDockingController;->mSkipMoveToFrontList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_1f

    .line 134
    :cond_16
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const-string p1, "DexDocking"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private synthetic lambda$resizeOtherTaskIfNeeded$0(ILandroid/graphics/Rect;Lcom/android/server/wm/Task;)V
    .registers 6

    .line 105
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    move-result v0

    if-eq v0, p1, :cond_7

    return-void

    .line 108
    :cond_7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DexDockingController;->calcOtherBounds(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_37

    .line 110
    sget-object p2, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resize other task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/android/server/wm/DexDockingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p2, p3, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 p3, 0x3

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    :cond_37
    return-void
.end method

.method public static synthetic lambda$updateDexDockingIfNeeded$3(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 162
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexTaskDocked()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 163
    sget-object v0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDexDockingIfNeeded - clear task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 164
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->setDexTaskDocking(I)V

    :cond_21
    return-void
.end method


# virtual methods
.method public calcOtherBounds(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .registers 5

    .line 210
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_15

    const/4 v1, 0x2

    if-eq p2, v1, :cond_c

    return-object v0

    .line 217
    :cond_c
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 218
    iget p0, p0, Lcom/android/server/wm/DexDockingController;->mDisplayWidth:I

    iput p0, v0, Landroid/graphics/Rect;->right:I

    return-object v0

    :cond_15
    const/4 p0, 0x0

    .line 213
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 214
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iput p0, v0, Landroid/graphics/Rect;->right:I

    return-object v0
.end method

.method public calculateMaxWidth(Lcom/android/server/wm/Task;II)I
    .registers 5

    .line 170
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexDockingController;->getOtherPosition(I)I

    move-result p1

    .line 171
    iget-object p0, p0, Lcom/android/server/wm/DexDockingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_19

    const/4 p0, -0x1

    return p0

    .line 178
    :cond_19
    iget p0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    if-ltz p0, :cond_1e

    move p3, p0

    :cond_1e
    sub-int/2addr p2, p3

    return p2
.end method

.method public clearAllTasks(Ljava/lang/String;)V
    .registers 5

    .line 145
    sget-object v0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllTasks reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/DexDockingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance p1, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public getOtherPosition(I)I
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_4

    const/4 p0, 0x2

    :cond_4
    return p0
.end method

.method public initDockingBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 6

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/DexDockingController;->mDockingBounds:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/android/server/wm/DexDockingController;->mDockingBounds:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    iput p3, p0, Lcom/android/server/wm/DexDockingController;->mDisplayWidth:I

    return-void
.end method

.method public initialize()V
    .registers 1

    return-void
.end method

.method public isValidDockingBounds(ILandroid/graphics/Rect;)Z
    .registers 7

    .line 182
    iget-object p0, p0, Lcom/android/server/wm/DexDockingController;->mDockingBounds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-nez p0, :cond_22

    .line 184
    sget-object p0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dockingBounds is null. docking="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 189
    :cond_22
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_32

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_30

    goto :goto_32

    :cond_30
    move v1, v3

    goto :goto_33

    :cond_32
    :goto_32
    move v1, v0

    :goto_33
    if-ne p1, v3, :cond_3c

    .line 193
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_3c

    move v1, v0

    :cond_3c
    const/4 v2, 0x2

    if-ne p1, v2, :cond_46

    .line 197
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    :goto_47
    if-nez v0, :cond_73

    .line 202
    sget-object v1, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidDockingBounds docking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {p1}, Landroid/app/WindowConfiguration;->dexTaskDockingStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   bounds="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "   dockingBounds="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    return v0
.end method

.method public moveTaskToFrontIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 117
    sget-object v0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToFrontIfNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/DexDockingController;->mSkipMoveToFrontList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    .line 122
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/DexDockingController;->mSkipMoveToFrontList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexDockingController;->getOtherPosition(I)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/android/server/wm/DexDockingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DexDockingController;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 137
    iget-object p0, p0, Lcom/android/server/wm/DexDockingController;->mSkipMoveToFrontList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resizeOtherTaskIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 6

    .line 95
    sget-object v0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resize task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    move-result v1

    .line 97
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/DexDockingController;->isValidDockingBounds(ILandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid task="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "invalid bounds"

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexDockingController;->clearAllTasks(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_42
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DexDockingController;->getOtherPosition(I)I

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/DexDockingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DexDockingController;ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setCandidateTask(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 56
    sget-object v0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCandidateTask t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DexDockingController;->mCandidateTask:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOtherTaskIfNeeded(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V
    .registers 7

    .line 61
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_ab

    if-eqz p2, :cond_ab

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 62
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_ab

    .line 66
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/DexDockingController;->mCandidateTask:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_95

    .line 71
    :cond_25
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/DexDockingController;->mDockingBounds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_31
    if-ltz v0, :cond_94

    .line 73
    iget-object v1, p0, Lcom/android/server/wm/DexDockingController;->mDockingBounds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 74
    iget-object v2, p0, Lcom/android/server/wm/DexDockingController;->mDockingBounds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 75
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 76
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ConfigurationContainer;->setDexTaskDocking(I)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DexDockingController;->getOtherPosition(I)I

    move-result p2

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/DexDockingController;->mCandidateTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 80
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ConfigurationContainer;->setDexTaskDocking(I)V

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/android/server/wm/DexDockingController;->mCandidateTask:Ljava/lang/ref/WeakReference;

    .line 83
    sget-object p0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOtherTask - ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {p2}, Landroid/app/WindowConfiguration;->dexTaskDockingStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {v2}, Landroid/app/WindowConfiguration;->dexTaskDockingStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :cond_91
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    :cond_94
    :goto_94
    return-void

    .line 67
    :cond_95
    :goto_95
    sget-object p0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CandidateTask is null. t="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    :goto_ab
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    return-void
.end method

.method public updateDexDockingIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 155
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    move-result v0

    .line 156
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DexDockingController;->isValidDockingBounds(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 160
    :cond_15
    sget-object v0, Lcom/android/server/wm/DexDockingController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDexDockingIfNeeded - invalid task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/android/server/wm/DexDockingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method
