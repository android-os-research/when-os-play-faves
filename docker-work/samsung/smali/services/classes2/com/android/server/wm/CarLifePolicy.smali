.class public Lcom/android/server/wm/CarLifePolicy;
.super Ljava/lang/Object;
.source "CarLifePolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mCarLifeBarWidth:I

.field public final mContext:Landroid/content/Context;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$-lBEkze_5I2jFuUuZVlw3diiTGo(Lcom/android/server/wm/CarLifePolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/CarLifePolicy;->lambda$updateCarLifeBarWidth$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/android/server/wm/CarLifePolicy;->mCarLifeBarWidth:I

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/CarLifePolicy;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/server/wm/CarLifePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 41
    iput-object p3, p0, Lcom/android/server/wm/CarLifePolicy;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method

.method private synthetic lambda$updateCarLifeBarWidth$0(I)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/CarLifePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 51
    iget v1, p0, Lcom/android/server/wm/CarLifePolicy;->mCarLifeBarWidth:I

    if-ne v1, p1, :cond_11

    .line 52
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 54
    :cond_11
    :try_start_11
    iput p1, p0, Lcom/android/server/wm/CarLifePolicy;->mCarLifeBarWidth:I

    .line 55
    iget-object p0, p0, Lcom/android/server/wm/CarLifePolicy;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 56
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public getExtraNavBarInsetWidth()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/android/server/wm/CarLifePolicy;->mCarLifeBarWidth:I

    return p0
.end method

.method public updateCarLifeBarWidth(I)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/CarLifePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/CarLifePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/CarLifePolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CarLifePolicy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
