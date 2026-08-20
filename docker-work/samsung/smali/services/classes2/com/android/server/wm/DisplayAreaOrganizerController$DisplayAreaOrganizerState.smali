.class public Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;
.super Ljava/lang/Object;
.source "DisplayAreaOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayAreaOrganizerState"
.end annotation


# instance fields
.field public final mDeathRecipient:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

.field public final mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;


# direct methods
.method public static synthetic $r8$lambda$9JPn01BQORxvAz6c9nGISCX1y8Q(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->lambda$destroy$0(Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmOrganizer(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    .registers 5

    .line 90
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 92
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mDeathRecipient:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    .line 94
    :try_start_e
    invoke-interface {p2}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method private synthetic lambda$destroy$0(Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;)V
    .registers 4

    .line 103
    iget-object v0, p2, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 104
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    if-eqz p1, :cond_26

    .line 106
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->-$$Nest$mdeleteTaskDisplayArea(Lcom/android/server/wm/DisplayAreaOrganizerController;Lcom/android/server/wm/TaskDisplayArea;)V

    goto :goto_2a

    :cond_26
    const/4 p0, 0x0

    .line 108
    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 112
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mDeathRecipient:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
