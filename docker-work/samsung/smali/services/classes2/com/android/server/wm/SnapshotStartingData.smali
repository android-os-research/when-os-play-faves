.class public Lcom/android/server/wm/SnapshotStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SnapshotStartingData.java"


# instance fields
.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSnapshot:Landroid/window/TaskSnapshot;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/window/TaskSnapshot;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    .line 33
    iput-object p1, p0, Lcom/android/server/wm/SnapshotStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    iput-object p2, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/window/TaskSnapshot;

    return-void
.end method


# virtual methods
.method public createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/SnapshotStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/StartingSurfaceController;->createTaskSnapshotSurface(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    move-result-object p0

    return-object p0
.end method

.method public hasImeSurface()Z
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result p0

    return p0
.end method

.method public needRevealAnimation()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
