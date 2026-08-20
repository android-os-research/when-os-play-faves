.class public Lcom/android/server/pm/ShortcutService$LocalService;
.super Landroid/content/pm/ShortcutServiceInternal;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public static synthetic $r8$lambda$1vEm_Z4o2MeXd3Bn1D3Vq0tBwYo(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcutIconFdAsync$8(Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BrpRn-_oZjIcg9bJUvsJPt4Vzws(ILjava/util/List;Lcom/android/internal/infra/AndroidFuture;Ljava/util/List;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcutsAsync$3(ILjava/util/List;Lcom/android/internal/infra/AndroidFuture;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CJWVsjy2BQJEQeSrxiWu-pYgR1M(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V
    .registers 15

    invoke-direct/range {p0 .. p14}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcuts$0(ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pu08oBWjCYgELXnKfILryngjKrs(Lcom/android/internal/infra/AndroidFuture;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$createShortcutIntentsAsync$7(Lcom/android/internal/infra/AndroidFuture;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aTMsTd23ASqcnMMlpoL2S93E88A(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcutInfoLocked$4(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lUwp1O-Yo51VmdXkoYkP1YBLItQ(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcutInfoAsync$5(Ljava/util/function/Consumer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n_WOId_3T49L5bSl2N7IDr5x4AI(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$pinShortcuts$6(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$t2uvIEYVprIKC98rmIbYcYuwE_I(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZLandroid/content/pm/ShortcutInfo;)Z
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getFilterFromQuery$1(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZLandroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uqKCOtP3-fjvNRdbFPbuNW8HmbE(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;ILjava/lang/String;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcutIconUriAsync$9(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/String;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$whJKVXhy2QVqGG_vTVEdQwoWN_Y(Lcom/android/server/pm/ShortcutService$LocalService;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$shutdown$10()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zxshCiBE7o9-EttEd_2Pcy0WWgQ(ILandroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcutsAsync$2(ILandroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 3009
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method public static synthetic lambda$createShortcutIntentsAsync$7(Lcom/android/internal/infra/AndroidFuture;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 3474
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object p1

    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getFilterFromQuery$1(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZLandroid/content/pm/ShortcutInfo;)Z
    .registers 13

    .line 3113
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    cmp-long p0, v0, p0

    const/4 p1, 0x0

    if-gez p0, :cond_a

    return p1

    :cond_a
    if-eqz p2, :cond_17

    .line 3116
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return p1

    :cond_17
    if-eqz p3, :cond_24

    .line 3119
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    return p1

    :cond_24
    if-eqz p4, :cond_37

    .line 3123
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 3124
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    return p1

    :cond_37
    const/4 p0, 0x1

    if-eqz p5, :cond_41

    .line 3128
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p2

    if-eqz p2, :cond_41

    return p0

    :cond_41
    if-nez p6, :cond_45

    if-eqz p7, :cond_4c

    .line 3131
    :cond_45
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p2

    if-eqz p2, :cond_4c

    return p0

    :cond_4c
    if-eqz p8, :cond_55

    .line 3134
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p2

    if-eqz p2, :cond_55

    return p0

    :cond_55
    if-eqz p9, :cond_5e

    .line 3137
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p2

    if-eqz p2, :cond_5e

    return p0

    :cond_5e
    return p1
.end method

.method private synthetic lambda$getShortcutIconFdAsync$8(Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 3607
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$getShortcutIconUriAsync$9(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/String;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V
    .registers 13

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move v5, p5

    .line 3693
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getShortcutInfoAsync$5(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 3250
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x0

    :goto_12
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$getShortcutInfoLocked$4(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    .line 3227
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getShortcuts$0(ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V
    .registers 30

    .line 3062
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    .line 3061
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    return-void
.end method

.method public static synthetic lambda$getShortcutsAsync$2(ILandroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 3183
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getShortcutsAsync$3(ILjava/util/List;Lcom/android/internal/infra/AndroidFuture;Ljava/util/List;)V
    .registers 5

    if-eqz p3, :cond_1a

    .line 3183
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda46;

    invoke-direct {p3, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda46;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 3185
    :cond_1a
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$pinShortcuts$6(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    .line 3276
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3277
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3278
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method private synthetic lambda$shutdown$10()Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3788
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3789
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmHandler(Lcom/android/server/pm/ShortcutService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v2}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmSaveDirtyInfoRunner(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3790
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmHandler(Lcom/android/server/pm/ShortcutService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v2}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmSaveDirtyInfoRunner(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3791
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 3792
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 3794
    :cond_37
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmShutdown(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3795
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_45

    .line 3796
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :catchall_45
    move-exception p0

    .line 3795
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method


# virtual methods
.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .registers 3

    .line 3480
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3481
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmListeners(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3482
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V
    .registers 3

    .line 3488
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3489
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmShortcutChangeCallbacks(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3490
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 3307
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->updateCachedShortcutsInternal(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIZ)V

    return-void
.end method

.method public createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;
    .registers 19

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v8, p4

    move/from16 v6, p5

    const-string/jumbo v1, "packageName can\'t be empty"

    move-object v4, p3

    .line 3409
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v1, "shortcutId can\'t be empty"

    .line 3410
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3412
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3413
    :try_start_1a
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3414
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3416
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, v6, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3417
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 3419
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v5, p6

    move/from16 v7, p7

    .line 3420
    invoke-virtual {v1, p2, p1, v5, v7}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move v7, v10

    .line 3424
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 3428
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v1

    if-nez v1, :cond_54

    if-nez v10, :cond_54

    goto :goto_5a

    .line 3432
    :cond_54
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v0

    monitor-exit v9

    return-object v0

    :cond_5a
    :goto_5a
    const-string v0, "ShortcutService"

    .line 3429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist or disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3430
    monitor-exit v9

    return-object v0

    :catchall_78
    move-exception v0

    .line 3433
    monitor-exit v9
    :try_end_7a
    .catchall {:try_start_1a .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public createShortcutIntentsAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/internal/infra/AndroidFuture;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcom/android/internal/infra/AndroidFuture<",
            "[",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v8, p1

    move-object/from16 v3, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p8

    const-string/jumbo v1, "packageName can\'t be empty"

    move-object/from16 v12, p3

    .line 3442
    invoke-static {v12, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v1, "shortcutId can\'t be empty"

    .line 3443
    invoke-static {v9, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3446
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 3447
    :try_start_20
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v10}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3448
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3450
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v3, v10, v8}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3451
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 3453
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v2, p6

    move/from16 v4, p7

    .line 3454
    invoke-virtual {v1, v3, v8, v2, v4}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v14

    .line 3458
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 3462
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v0

    if-nez v0, :cond_5e

    if-nez v14, :cond_5e

    goto :goto_67

    .line 3467
    :cond_5e
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3468
    monitor-exit v13

    return-void

    :cond_67
    :goto_67
    const-string v0, "ShortcutService"

    .line 3463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist or disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3464
    invoke-virtual {v11, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3465
    monitor-exit v13

    return-void

    .line 3470
    :cond_88
    monitor-exit v13
    :try_end_89
    .catchall {:try_start_20 .. :try_end_89} :catchall_9b

    .line 3473
    new-instance v6, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda8;

    invoke-direct {v6, v11}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V

    return-void

    :catchall_9b
    move-exception v0

    .line 3470
    :try_start_9c
    monitor-exit v13
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v0
.end method

.method public final getFilterFromQuery(Landroid/util/ArraySet;Ljava/util/List;JLandroid/content/ComponentName;IZ)Ljava/util/function/Predicate;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;J",
            "Landroid/content/ComponentName;",
            "IZ)",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p2

    if-nez v0, :cond_6

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_c

    .line 3106
    :cond_6
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v6, v1

    :goto_c
    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    move v8, v2

    goto :goto_15

    :cond_14
    move v8, v1

    :goto_15
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1b

    move v9, v2

    goto :goto_1c

    :cond_1b
    move v9, v1

    :goto_1c
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_22

    move v11, v2

    goto :goto_23

    :cond_22
    move v11, v1

    :goto_23
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_29

    move v12, v2

    goto :goto_2a

    :cond_29
    move v12, v1

    .line 3112
    :goto_2a
    new-instance v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-wide/from16 v3, p3

    move-object v5, p1

    move-object/from16 v7, p5

    move/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda0;-><init>(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZ)V

    return-object v0
.end method

.method public getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/IntentFilter;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 3322
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 3323
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 8

    const-string v0, "callingPackage"

    .line 3550
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName"

    .line 3551
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "shortcutId"

    .line 3552
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3554
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3555
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3556
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3558
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p1

    .line 3559
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 3561
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1

    .line 3562
    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_3a

    .line 3564
    monitor-exit v0

    return-object p2

    .line 3567
    :cond_3a
    invoke-virtual {p1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p3

    if-nez p3, :cond_42

    .line 3569
    monitor-exit v0

    return-object p2

    .line 3571
    :cond_42
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_48
    move-exception p0

    .line 3572
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_18 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public getShortcutIconFdAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callingPackage"

    .line 3579
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName"

    .line 3580
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "shortcutId"

    .line 3581
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3585
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3586
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3587
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3589
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p2

    .line 3590
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 3592
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p2, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p2

    if-nez p2, :cond_3d

    const/4 p0, 0x0

    .line 3594
    invoke-virtual {p6, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3595
    monitor-exit v0

    return-void

    .line 3598
    :cond_3d
    invoke-virtual {p2, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 3600
    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3601
    monitor-exit v0

    return-void

    .line 3603
    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_18 .. :try_end_4d} :catchall_5b

    .line 3606
    new-instance v6, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p6, p2}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;)V

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V

    return-void

    :catchall_5b
    move-exception p0

    .line 3603
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public final getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_3b

    if-eqz p2, :cond_3b

    .line 3613
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3b

    .line 3616
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackageItem;->getBitmapPathMayWait(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShortcutService"

    if-nez p1, :cond_1b

    const-string/jumbo p1, "null bitmap detected in getShortcutIconFd()"

    .line 3618
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 3622
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_26} :catch_27

    return-object p0

    .line 3626
    :catch_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icon file not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    return-object p0
.end method

.method public getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    const-string v0, "callingPackage"

    .line 3496
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName"

    .line 3497
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "shortcutId"

    .line 3498
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3500
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3501
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3502
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3504
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p1

    .line 3505
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 3507
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    .line 3508
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_3a

    .line 3510
    monitor-exit v0

    return p1

    .line 3513
    :cond_3a
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_4a

    .line 3514
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 3515
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result p1

    :cond_4a
    monitor-exit v0

    return p1

    :catchall_4c
    move-exception p0

    .line 3516
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_18 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public getShortcutIconUri(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    const-string/jumbo v0, "launcherPackage"

    .line 3634
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName"

    .line 3635
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "shortcutId"

    .line 3636
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3638
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3639
    :try_start_19
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3640
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3642
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3643
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 3645
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3646
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3b

    .line 3648
    monitor-exit v0

    return-object v2

    .line 3651
    :cond_3b
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-nez v5, :cond_43

    .line 3653
    monitor-exit v0

    return-object v2

    :cond_43
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    .line 3655
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_4e
    move-exception p0

    .line 3657
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_19 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public getShortcutIconUriAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "launcherPackage"

    .line 3664
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName"

    .line 3665
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "shortcutId"

    .line 3666
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3669
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3670
    :try_start_19
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3671
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3673
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3674
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 3676
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3677
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    if-nez v1, :cond_3e

    const/4 p0, 0x0

    .line 3679
    invoke-virtual {p6, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3680
    monitor-exit v0

    return-void

    .line 3683
    :cond_3e
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-eqz v5, :cond_52

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    .line 3685
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3687
    monitor-exit v0

    return-void

    .line 3689
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_69

    .line 3692
    new-instance v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p6

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;ILjava/lang/String;Ljava/lang/String;I)V

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V

    return-void

    :catchall_69
    move-exception p0

    .line 3689
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public final getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;
    .registers 23

    move-object/from16 v0, p0

    .line 3701
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 3704
    :cond_a
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ShortcutService"

    if-nez v1, :cond_19

    const-string/jumbo v0, "null uri detected in getShortcutIconUri()"

    .line 3706
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3710
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3712
    :try_start_1d
    iget-object v6, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v6}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/ShortcutService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    const-wide/32 v7, 0x10000000

    move-object/from16 v9, p3

    move/from16 v15, p5

    invoke-virtual {v6, v9, v7, v8, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v11

    .line 3717
    iget-object v6, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v6}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmUriGrantsManager(Lcom/android/server/pm/ShortcutService;)Landroid/app/IUriGrantsManager;

    move-result-object v9

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmUriPermissionOwner(Lcom/android/server/pm/ShortcutService;)Landroid/os/IBinder;

    move-result-object v10

    .line 3718
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v12, p2

    move/from16 v15, p5

    move/from16 v16, p1

    .line 3717
    invoke-interface/range {v9 .. v16}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_48} :catch_4f
    .catchall {:try_start_1d .. :try_end_48} :catchall_4d

    .line 3725
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v2, v1

    goto :goto_71

    :catchall_4d
    move-exception v0

    goto :goto_72

    :catch_4f
    move-exception v0

    .line 3721
    :try_start_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to grant uri access to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_4d

    .line 3725
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_71
    return-object v2

    :goto_72
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3726
    throw v0
.end method

.method public final getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "packageName"

    .line 3235
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "shortcutId"

    .line 3236
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3238
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3239
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3242
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3243
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    .line 3244
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_3c

    if-nez p0, :cond_2f

    const/4 p0, 0x0

    .line 3246
    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 3249
    :cond_2f
    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {p2, p5}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->getShortcutByIdsAsync(Ljava/util/Set;Ljava/util/function/Consumer;)V

    return-void

    :catchall_3c
    move-exception p0

    .line 3244
    :try_start_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ShortcutService.this.mLock"
        }
    .end annotation

    const-string/jumbo v0, "packageName"

    .line 3214
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "shortcutId"

    .line 3215
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3217
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3218
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3220
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    .line 3221
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    const/4 p0, 0x0

    if-nez v0, :cond_24

    return-object p0

    .line 3226
    :cond_24
    new-instance p3, Ljava/util/ArrayList;

    const/4 p5, 0x1

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3227
    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p4}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v1, p3

    move-object v4, p2

    move v5, p1

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 3229
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_45

    :cond_3e
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    :goto_45
    return-object p0
.end method

.method public getShortcutStartingThemeResName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const-string v0, "callingPackage"

    .line 3524
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName"

    .line 3525
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "shortcutId"

    .line 3526
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3528
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3529
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3530
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3532
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p1

    .line 3533
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 3535
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    .line 3536
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_3a

    .line 3538
    monitor-exit v0

    return-object p1

    .line 3541
    :cond_3a
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 3542
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getStartingThemeResName()Ljava/lang/String;

    move-result-object p1

    :cond_44
    monitor-exit v0

    return-object p1

    :catchall_46
    move-exception p0

    .line 3543
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_18 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;",
            "Landroid/content/ComponentName;",
            "IIII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v10, p9

    move/from16 v11, p10

    .line 3021
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_2e

    .line 3027
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 3028
    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$smisSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 3029
    invoke-virtual {v1, v5, v11}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$smisSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v1, 0x19

    goto :goto_30

    :cond_2e
    const/16 v1, 0x1b

    :goto_30
    and-int/lit8 v2, v10, 0x4

    if-eqz v2, :cond_36

    const/4 v1, 0x4

    goto :goto_3c

    :cond_36
    and-int/lit16 v2, v10, 0x800

    if-eqz v2, :cond_3c

    and-int/lit8 v1, v1, -0x11

    :cond_3c
    :goto_3c
    move v13, v1

    if-nez v5, :cond_42

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_44

    :cond_42
    move-object/from16 v6, p6

    .line 3045
    :goto_44
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 3046
    :try_start_4b
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3047
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3049
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v4, v11, v3}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3050
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    if-eqz v5, :cond_7e

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object v5, v6

    move-object/from16 v6, p7

    move-wide/from16 v7, p3

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object v12, v15

    move/from16 v14, p11

    move-object/from16 p5, v15

    move/from16 v15, p12

    .line 3053
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    goto :goto_ab

    :cond_7e
    move-object/from16 p5, v15

    .line 3060
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v15

    new-instance v14, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda1;

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v6

    move-object/from16 v6, p7

    move-wide/from16 v7, p3

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p5

    move-object v0, v14

    move/from16 v14, p11

    move-object/from16 v17, v15

    move/from16 v15, p12

    invoke-direct/range {v1 .. v15}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 3067
    :goto_ab
    monitor-exit v16
    :try_end_ac
    .catchall {:try_start_4b .. :try_end_ac} :catchall_b7

    move-object/from16 v0, p0

    .line 3068
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$msetReturnedByServer(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_b7
    move-exception v0

    .line 3067
    :try_start_b8
    monitor-exit v16
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v0
.end method

.method public getShortcutsAsync(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIIILcom/android/internal/infra/AndroidFuture;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;",
            "Landroid/content/ComponentName;",
            "IIII",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 3151
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object p1

    if-eqz p6, :cond_69

    if-eqz p5, :cond_69

    .line 3154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_13

    goto :goto_69

    .line 3161
    :cond_13
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3162
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p10}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    .line 3163
    monitor-exit p2
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_66

    if-nez p0, :cond_2b

    .line 3165
    invoke-virtual {p13, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 3169
    :cond_2b
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 3171
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;

    invoke-direct {p4}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    new-instance p4, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda11;

    invoke-direct {p4, p2}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda11;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p3, p4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const/16 p3, 0x1b

    and-int/lit8 p4, p9, 0x4

    if-eqz p4, :cond_57

    const/4 p3, 0x4

    goto :goto_5d

    :cond_57
    and-int/lit16 p4, p9, 0x800

    if-eqz p4, :cond_5d

    const/16 p3, 0xb

    .line 3181
    :cond_5d
    :goto_5d
    new-instance p4, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda12;

    invoke-direct {p4, p3, p1, p13}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda12;-><init>(ILjava/util/List;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/ShortcutPackage;->getShortcutByIdsAsync(Ljava/util/Set;Ljava/util/function/Consumer;)V

    return-void

    :catchall_66
    move-exception p0

    .line 3163
    :try_start_67
    monitor-exit p2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0

    .line 3157
    :cond_69
    :goto_69
    invoke-virtual {p13, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .registers 27
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ShortcutService.this.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;J",
            "Landroid/content/ComponentName;",
            "II",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;III)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p9

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_f

    .line 3079
    :cond_9
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 3081
    :goto_f
    iget-object v3, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v4, p10

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    move-object v4, p3

    .line 3082
    invoke-virtual {v3, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v8

    if-nez v8, :cond_1f

    return-void

    .line 3087
    :cond_1f
    iget-object v3, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move v9, p1

    move-object v10, p2

    move/from16 v4, p13

    move/from16 v5, p14

    .line 3088
    invoke-virtual {v3, p2, p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    move v11, v3

    goto :goto_36

    :cond_35
    move v11, v4

    :goto_36
    if-eqz v11, :cond_39

    const/4 v4, 0x2

    :cond_39
    or-int v6, v2, v4

    move-object v0, p0

    move-object/from16 v2, p5

    move-wide/from16 v3, p6

    move-object/from16 v5, p8

    move v7, v11

    .line 3095
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getFilterFromQuery(Landroid/util/ArraySet;Ljava/util/List;JLandroid/content/ComponentName;IZ)Ljava/util/function/Predicate;

    move-result-object v0

    move-object p3, v8

    move-object/from16 p4, p11

    move-object/from16 p5, v0

    move/from16 p6, p12

    move-object/from16 p7, p2

    move/from16 p8, p1

    move/from16 p9, v11

    .line 3097
    invoke-virtual/range {p3 .. p9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    return-void
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;II)Z
    .registers 5

    .line 3733
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public isForegroundDefaultLauncher(Ljava/lang/String;I)Z
    .registers 5

    .line 3758
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3760
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3761
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 3765
    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v1

    .line 3768
    :cond_18
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3769
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result p0

    if-nez p0, :cond_29

    .line 3770
    monitor-exit p1

    return v1

    .line 3772
    :cond_29
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_2c
    move-exception p0

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15

    const-string/jumbo v0, "packageName"

    .line 3192
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "shortcutId"

    .line 3193
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3195
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3196
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3197
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3199
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3200
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 3202
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 3205
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 p0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p0, 0x0

    :goto_3c
    monitor-exit v0

    return p0

    :catchall_3e
    move-exception p0

    .line 3206
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 3

    .line 3753
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isRequestPinItemSupported(II)Z

    move-result p0

    return p0
.end method

.method public isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z
    .registers 15

    const-string v0, "callingPackage"

    .line 3330
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "packageName"

    .line 3331
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "shortcutId"

    .line 3332
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3334
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService;->isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z

    move-result p0

    return p0
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    const-string/jumbo v1, "packageName"

    .line 3258
    invoke-static {v8, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v1, "shortcutIds"

    .line 3259
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3264
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3265
    :try_start_1c
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v10}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3266
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3268
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v5, p2

    .line 3269
    invoke-virtual {v1, v5, v10, v6}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v12

    .line 3270
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 3272
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v10}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v13

    if-eqz v13, :cond_53

    .line 3275
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3276
    new-instance v3, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda9;-><init>()V

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v5, p2

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    goto :goto_54

    :cond_53
    const/4 v14, 0x0

    .line 3283
    :goto_54
    invoke-virtual {v12, v8, v10}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x0

    .line 3285
    invoke-virtual {v12, v10, v8, v9, v2}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    if-eqz v1, :cond_76

    if-eqz v14, :cond_76

    .line 3288
    :goto_60
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 3289
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 3292
    :cond_76
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v1, v3, v14, v13}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mprepareChangedShortcuts(Lcom/android/server/pm/ShortcutService;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object v1

    .line 3294
    monitor-exit v11
    :try_end_82
    .catchall {:try_start_1c .. :try_end_82} :catchall_8f

    if-eqz v13, :cond_89

    .line 3297
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, v13, v1, v14}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 3300
    :cond_89
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_8f
    move-exception v0

    .line 3294
    :try_start_90
    monitor-exit v11
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v0
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z
    .registers 13

    .line 3747
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3748
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mrequestPinItem(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p0

    return p0
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 3740
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public shutdown()V
    .registers 4

    const/4 v0, 0x1

    const-string/jumbo v1, "shortcuts-writes"

    const/4 v2, 0x0

    .line 3785
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3787
    new-instance v1, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v0, 0x14

    .line 3799
    :try_start_14
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    const-string p0, "Timeout while saving shortcuts"

    .line 3801
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 3315
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->updateCachedShortcutsInternal(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIZ)V

    return-void
.end method

.method public final updateCachedShortcutsInternal(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZ)V"
        }
    .end annotation

    const-string/jumbo p2, "packageName"

    .line 3342
    invoke-static {p3, p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo p2, "shortcutIds"

    .line 3343
    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const p2, 0x60004000

    and-int/2addr p2, p6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_16

    move p2, v1

    goto :goto_17

    :cond_16
    move p2, v0

    :goto_17
    const-string/jumbo v2, "invalid cacheFlags"

    .line 3344
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3350
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3351
    :try_start_24
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3352
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3354
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    .line 3355
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p3

    if-eqz p1, :cond_cc

    if-nez p3, :cond_42

    goto/16 :goto_cc

    :cond_42
    const/4 p5, 0x0

    move-object v2, p5

    move-object v3, v2

    :goto_45
    if-ge v0, p1, :cond_c0

    .line 3361
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3362
    invoke-virtual {p3, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-eqz v5, :cond_bd

    .line 3363
    invoke-virtual {v5, p6}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v6

    if-ne p7, v6, :cond_60

    goto :goto_bd

    :cond_60
    if-eqz p7, :cond_91

    .line 3368
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 3369
    invoke-virtual {v5, p6}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    if-nez v2, :cond_72

    .line 3371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3373
    :cond_72
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_76
    const-string v4, "ShortcutService"

    .line 3375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only long lived shortcuts can get cached. Ignoring id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3376
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3375
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 3380
    :cond_91
    invoke-virtual {v5, p6}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 3381
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-nez v6, :cond_a5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v6

    if-nez v6, :cond_a5

    .line 3382
    invoke-virtual {p3, v4, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteLongLivedWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    goto :goto_a6

    :cond_a5
    move-object v4, p5

    :goto_a6
    if-nez v4, :cond_b3

    if-nez v2, :cond_af

    .line 3386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3388
    :cond_af
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_b3
    if-nez v3, :cond_ba

    .line 3391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3393
    :cond_ba
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bd
    :goto_bd
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 3397
    :cond_c0
    monitor-exit p2
    :try_end_c1
    .catchall {:try_start_24 .. :try_end_c1} :catchall_ce

    .line 3398
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, p3, v2, v3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 3400
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    .line 3357
    :cond_cc
    :goto_cc
    :try_start_cc
    monitor-exit p2

    return-void

    :catchall_ce
    move-exception p0

    .line 3397
    monitor-exit p2
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_ce

    throw p0
.end method
