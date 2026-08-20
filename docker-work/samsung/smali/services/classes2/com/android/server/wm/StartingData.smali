.class public abstract Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field public mAssociatedTask:Lcom/android/server/wm/Task;

.field public mIsTransitionForward:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTypeParams:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    iput p2, p0, Lcom/android/server/wm/StartingData;->mTypeParams:I

    return-void
.end method


# virtual methods
.method public abstract createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
.end method

.method public hasImeSurface()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract needRevealAnimation()Z
.end method
