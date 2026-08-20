.class public Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingTaskEvent"
.end annotation


# static fields
.field public static final EVENT_APPEARED:I = 0x0

.field public static final EVENT_INFO_CHANGED:I = 0x2

.field public static final EVENT_ROOT_BACK_PRESSED:I = 0x3

.field public static final EVENT_VANISHED:I = 0x1


# instance fields
.field public final mEventType:I

.field public mForce:Z

.field public final mTask:Lcom/android/server/wm/Task;

.field public final mTaskOrg:Landroid/window/ITaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;I)V
    .registers 4

    .line 313
    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V
    .registers 4

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 318
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    .line 319
    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    return-void
.end method


# virtual methods
.method public isLifecycleEvent()Z
    .registers 3

    .line 323
    iget p0, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    if-eq p0, v0, :cond_c

    const/4 v1, 0x2

    if-ne p0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0
.end method
