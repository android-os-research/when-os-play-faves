.class public Lcom/android/server/wm/DisplayAreaOrganizerController;
.super Landroid/window/IDisplayAreaOrganizerController$Stub;
.source "DisplayAreaOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;,
        Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayAreaOrganizerController"


# instance fields
.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mNextTaskDisplayAreaFeatureId:I

.field public final mOrganizersByFeatureIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static synthetic $r8$lambda$UGaJ4uXcdo8Pgf3QxqrblZucblc(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$createTaskDisplayArea$4(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bNJ5kBlhyK3AbC6PX5WtNLJKnH8(Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/DisplayArea;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$createTaskDisplayArea$5(Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dyID58NTPV1AoOl4VRX1Xc6T5lM(Landroid/window/IDisplayAreaOrganizer;Ljava/util/Map$Entry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$unregisterOrganizer$2(Landroid/window/IDisplayAreaOrganizer;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$grRVlH9MWF-IeEoG2tM3UHuUzos(ILcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/RootDisplayArea;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$createTaskDisplayArea$3(ILcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iuW9rgPMJg2iQeV7ZnA6uq27t-s(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$registerOrganizer$1(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sJlvlrpN4pCdPKGSW8FdmYcDcyM(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$registerOrganizer$0(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/DisplayAreaOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrganizersByFeatureIds(Lcom/android/server/wm/DisplayAreaOrganizerController;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdeleteTaskDisplayArea(Lcom/android/server/wm/DisplayAreaOrganizerController;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->deleteTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 116
    invoke-direct {p0}, Landroid/window/IDisplayAreaOrganizerController$Stub;-><init>()V

    const/16 v0, 0x4e22

    .line 53
    iput v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 117
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 118
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static synthetic lambda$createTaskDisplayArea$3(ILcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/RootDisplayArea;
    .registers 3

    .line 234
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_f

    .line 235
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public static synthetic lambda$createTaskDisplayArea$4(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 3

    .line 242
    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return-object p1
.end method

.method public static synthetic lambda$createTaskDisplayArea$5(Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/DisplayArea;
    .registers 5

    .line 347
    iget-object v0, p1, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return-object v2

    .line 351
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    if-eq v0, p0, :cond_12

    if-ne v0, p1, :cond_11

    goto :goto_12

    :cond_11
    return-object v2

    :cond_12
    :goto_12
    return-object p1
.end method

.method private synthetic lambda$registerOrganizer$0(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 6

    .line 173
    iget v0, p4, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const-string p1, "DisplayAreaOrganizerController.registerOrganizer"

    .line 174
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerOrganizer$1(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayContent;)V
    .registers 8

    .line 166
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_23

    .line 167
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz p0, :cond_22

    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const p3, 0x6548caa1

    const/4 p4, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p2, p3, v0, p4, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    return-void

    .line 172
    :cond_23
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {p4, v0}, Lcom/android/server/wm/DisplayArea;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$unregisterOrganizer$2(Landroid/window/IDisplayAreaOrganizer;Ljava/util/Map$Entry;)Z
    .registers 3

    .line 197
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 198
    invoke-interface {p0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 200
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    :cond_21
    return p0
.end method


# virtual methods
.method public createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .registers 16

    const-string v0, "createTaskDisplayArea()"

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 217
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_d1

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 218
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2b

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x388825e0    # -63450.125f

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v5, v7, v8, v6, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 221
    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 226
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 233
    new-instance p2, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/RootDisplayArea;

    if-nez p2, :cond_54

    .line 241
    new-instance v1, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/TaskDisplayArea;

    :cond_54
    if-nez p2, :cond_70

    if-eqz v6, :cond_59

    goto :goto_70

    .line 249
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find a parent DisplayArea with featureId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :cond_70
    :goto_70
    iget p3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    .line 254
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    if-eqz p2, :cond_82

    .line 258
    invoke-virtual {p0, p2, p4, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController;->createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    goto :goto_86

    .line 259
    :cond_82
    invoke-virtual {p0, v6, p4, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController;->createTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    :goto_86
    const-string p4, "DisplayAreaOrganizerController.createTaskDisplayArea"

    .line 260
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/DisplayAreaOrganizerController;->organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object p1

    .line 262
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    monitor-exit v4
    :try_end_96
    .catchall {:try_start_11 .. :try_end_96} :catchall_cb

    .line 266
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 227
    :cond_9d
    :try_start_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createTaskDisplayArea untrusted displayId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_b4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createTaskDisplayArea unknown displayId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_cb
    move-exception p0

    .line 264
    monitor-exit v4
    :try_end_cd
    .catchall {:try_start_9d .. :try_end_cd} :catchall_cb

    :try_start_cd
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_d1

    :catchall_d1
    move-exception p0

    .line 266
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    throw p0
.end method

.method public final createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;
    .registers 10

    .line 342
    new-instance p0, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V

    .line 346
    new-instance p2, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/RootDisplayArea;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/DisplayArea;

    if-eqz p2, :cond_2a

    .line 363
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 364
    iget-object p3, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 365
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-object p0

    .line 359
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Root must either contain TDA or DAG root="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;
    .registers 10

    .line 375
    new-instance p0, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V

    const p2, 0x7fffffff

    .line 380
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-object p0
.end method

.method public deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    .registers 13

    const-string v0, "deleteTaskDisplayArea()"

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 274
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 276
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_81

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 277
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v5, :cond_2b

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x2396e36f

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v5, v6, v8, v7, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_2b
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 280
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 283
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    .line 284
    iget-boolean v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_5c

    .line 290
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    iget p1, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 291
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_7b

    :try_start_55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_81

    .line 293
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 285
    :cond_5c
    :try_start_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to delete TaskDisplayArea not created by organizer TaskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t resolve TaskDisplayArea from token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_7b
    move-exception p0

    .line 291
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_5c .. :try_end_7d} :catchall_7b

    :try_start_7d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_81

    :catchall_81
    move-exception p0

    .line 293
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    throw p0
.end method

.method public final deleteTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 3

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 392
    :try_start_d
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_23

    .line 394
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 397
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->removeImmediately()V

    if-eqz v0, :cond_22

    .line 402
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    :cond_22
    return-void

    :catchall_23
    move-exception p1

    .line 394
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 395
    throw p1
.end method

.method public final enforceTaskPermission(Ljava/lang/String;)V
    .registers 2

    .line 122
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    return-void
.end method

.method public getOrganizerByFeature(I)Landroid/window/IDisplayAreaOrganizer;
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    if-eqz p0, :cond_13

    .line 128
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 8

    .line 298
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz p0, :cond_1b

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x760b8baf

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const-string v1, "DisplayAreaOrganizerController.onDisplayAreaAppeared"

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2d} :catch_2d

    :catch_2d
    return-void
.end method

.method public onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 8

    .line 322
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz p0, :cond_1b

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0xa67c59f

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_1b
    :try_start_1b
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_22

    :catch_22
    return-void
.end method

.method public onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 8

    .line 309
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz p0, :cond_1b

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x1d1081b7

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_1b
    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-nez p0, :cond_2d

    const-string p0, "DisplayAreaOrganizerController"

    const-string p1, "Organizer died before sending onDisplayAreaVanished"

    .line 311
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 315
    :cond_2d
    :try_start_2d
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_34

    :catch_34
    return-void
.end method

.method public final organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .registers 5

    const/4 p0, 0x1

    .line 332
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 333
    new-instance p0, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p1

    new-instance v0, Landroid/view/SurfaceControl;

    .line 334
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroid/window/DisplayAreaAppearedInfo;-><init>(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    return-object p0
.end method

.method public registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/IDisplayAreaOrganizer;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "registerOrganizer()"

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 138
    :try_start_f
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_b9

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 139
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v5, :cond_38

    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0xf025ae1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_38
    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_87

    const-string v5, "DisplayAreaOrganizerController"

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Replacing existing organizer, feature = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from uid #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    const-string v0, "DisplayAreaOrganizerController"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacing dead organizer for feature="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_87
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p2, v1, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 179
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_12 .. :try_end_ac} :catchall_b3

    .line 183
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_b3
    move-exception p0

    .line 181
    :try_start_b4
    monitor-exit v4
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    :try_start_b5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception p0

    .line 183
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw p0
.end method

.method public unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .registers 14

    const-string/jumbo v0, "unregisterTaskOrganizer()"

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 193
    :try_start_f
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_54

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 194
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v5, :cond_38

    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x4482d2ba

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_38
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;-><init>(Landroid/window/IDisplayAreaOrganizer;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 204
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_4e

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_54

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4e
    move-exception p0

    .line 204
    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw p0
.end method
