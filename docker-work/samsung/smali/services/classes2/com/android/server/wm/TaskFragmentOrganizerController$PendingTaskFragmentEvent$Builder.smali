.class public Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mActivity:Lcom/android/server/wm/ActivityRecord;

.field public mErrorCallbackToken:Landroid/os/IBinder;

.field public final mEventType:I

.field public mException:Ljava/lang/Throwable;

.field public mOpType:I

.field public mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public final mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method public constructor <init>(ILandroid/window/ITaskFragmentOrganizer;)V
    .registers 3

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mEventType:I

    .line 634
    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .registers 11

    .line 663
    new-instance v9, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    iget v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mEventType:I

    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mErrorCallbackToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mException:Ljava/lang/Throwable;

    iget-object v6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOpType:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent-IA;)V

    return-object v9
.end method

.method public setActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 653
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 643
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public setException(Ljava/lang/Throwable;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 648
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public setOpType(I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 658
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOpType:I

    return-object p0
.end method

.method public setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 638
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object p0
.end method
