.class public Lcom/samsung/android/server/corestate/CoreStateObserverController;
.super Ljava/lang/Object;
.source "CoreStateObserverController.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "CoreStateObserverController"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mController:Lcom/android/server/wm/CoreStateController;

.field public final mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

.field public final mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

.field public final mStateForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

.field public final mTargetClass:Ljava/lang/Class;

.field public final mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/CoreStateController;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;Ljava/lang/Class;)V
    .registers 10

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    .line 52
    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->TAG:Ljava/lang/String;

    const-string v1, "CoreStateController()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/wm/CoreStateController;

    .line 55
    iput-object p3, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 56
    iput-object p4, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    .line 57
    iput-object p5, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 58
    iput-object p6, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    .line 59
    iput-object p7, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->setObserverController()V

    return-void
.end method


# virtual methods
.method public getCoreStateLocked(I)Landroid/os/Bundle;
    .registers 2

    .line 165
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_10

    .line 166
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_16

    :cond_10
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    :goto_16
    return-object p0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    return-object p0
.end method

.method public init()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    if-eqz v0, :cond_7

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->init()V

    .line 80
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_e

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    :cond_e
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZI)V

    return-void
.end method

.method public onCoreStateChanged(I)V
    .registers 3

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onCoreStateChanged(ILjava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILjava/lang/Runnable;)V

    return-void
.end method

.method public final populateCoreState(I)I
    .registers 5

    .line 112
    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "populateCoreState(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_37

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    if-eqz v1, :cond_37

    .line 119
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->populateState(Landroid/os/Bundle;I)I

    :cond_37
    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v2, :cond_41

    .line 125
    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populateState(Landroid/os/Bundle;I)I

    move-result v2

    or-int/2addr v1, v2

    .line 127
    :cond_41
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v2, :cond_4a

    .line 128
    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->populateState(Landroid/os/Bundle;I)I

    move-result v2

    or-int/2addr v1, v2

    .line 130
    :cond_4a
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    if-eqz p0, :cond_53

    .line 131
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->populateState(Landroid/os/Bundle;I)I

    move-result p0

    or-int/2addr v1, p0

    :cond_53
    return v1
.end method

.method public final sendCoreState(ZI)V
    .registers 4

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILjava/lang/Runnable;)V

    return-void
.end method

.method public final sendCoreState(ZILjava/lang/Runnable;)V
    .registers 8

    .line 91
    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCoreState(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    move-result v0

    if-eqz p1, :cond_2b

    .line 97
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/wm/CoreStateController;

    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Ljava/lang/Class;IZLjava/lang/Runnable;)V

    goto :goto_64

    :cond_2b
    and-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    if-eqz p1, :cond_59

    .line 99
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_51

    .line 102
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    .line 104
    :cond_51
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/wm/CoreStateController;

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v2, v3, v0, v1, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Ljava/lang/Class;IZLjava/lang/Runnable;)V

    goto :goto_3c

    :cond_59
    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_64

    .line 107
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/wm/CoreStateController;

    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {p1, p0, p2, v1, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Ljava/lang/Class;IZLjava/lang/Runnable;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public final setObserverController()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_7

    .line 66
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    .line 68
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v0, :cond_e

    .line 69
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    .line 71
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    if-eqz v0, :cond_15

    .line 72
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    :cond_15
    return-void
.end method

.method public setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V
    .registers 14

    .line 179
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v0, :cond_d

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 180
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->setState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method public startUserLocked(IZZ)V
    .registers 5

    if-eqz p3, :cond_9

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_9

    .line 139
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    :cond_9
    if-nez p3, :cond_d

    if-eqz p2, :cond_11

    :cond_d
    const/4 p2, 0x1

    .line 146
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZI)V

    :cond_11
    return-void
.end method

.method public stopUserLocked(Ljava/util/ArrayList;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->endObserveCoreStateSettingsForSingleUser(Ljava/util/ArrayList;I)V

    .line 154
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p3, :cond_15

    .line 158
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz p0, :cond_15

    .line 159
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->removeStatesForUser(I)V

    :cond_15
    return-void
.end method
