.class public Lcom/android/server/wm/BoundsCompatStatusLogger;
.super Ljava/lang/Object;
.source "BoundsCompatStatusLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsCompatStatusLogger$LazyHolder;
    }
.end annotation


# static fields
.field public static final COLLECT_FULL_STATUS:Z = false

.field public static final COMMAND_BCSL:Ljava/lang/String; = "-bcsl"

.field public static final COMMAND_OPS_MAINTENANCE:Ljava/lang/String; = "maintenance"

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "BoundsCompatStatusLogger"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$5qPL528XG0xtFxVgGFqlF955CXc(Ljava/lang/Object;Ljava/util/Map$Entry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->lambda$getKeysByValue$0(Ljava/lang/Object;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 72
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/BoundsCompatStatusLogger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToString(Ljava/util/Set;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 197
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "["

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7

    .line 108
    sget-boolean p2, Lcom/android/server/wm/BoundsCompatStatusLogger;->DEBUG:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_50

    const-string p2, "-bcsl"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_50

    .line 113
    :cond_e
    :try_start_e
    aget-object p2, p1, v0

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x12eef313

    if-eq v2, v3, :cond_1b

    goto :goto_24

    :cond_1b
    const-string v2, "maintenance"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    move v1, v0

    :cond_24
    :goto_24
    if-eqz v1, :cond_27

    goto :goto_50

    .line 115
    :cond_27
    invoke-static {}, Lcom/android/server/wm/BoundsCompatStatusLogger;->get()Lcom/android/server/wm/BoundsCompatStatusLogger;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/BoundsCompatStatusLogger;->logBoundsCompatStatus()V
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_30

    const/4 p0, 0x1

    return p0

    .line 120
    :catchall_30
    sget-object p2, Lcom/android/server/wm/BoundsCompatStatusLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to execute command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", opt="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    :goto_50
    return v0
.end method

.method public static get()Lcom/android/server/wm/BoundsCompatStatusLogger;
    .registers 1

    .line 89
    sget-object v0, Lcom/android/server/wm/BoundsCompatStatusLogger$LazyHolder;->sLogger:Lcom/android/server/wm/BoundsCompatStatusLogger;

    return-object v0
.end method

.method public static getKeysByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<String:",
            "Ljava/lang/Object;",
            "Float:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TString;TFloat;>;TFloat;)",
            "Ljava/util/Set<",
            "TString;>;"
        }
    .end annotation

    .line 189
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 190
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/BoundsCompatStatusLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/wm/BoundsCompatStatusLogger$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 191
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/wm/BoundsCompatStatusLogger$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/wm/BoundsCompatStatusLogger$$ExternalSyntheticLambda1;-><init>()V

    .line 192
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 193
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic lambda$getKeysByValue$0(Ljava/lang/Object;Ljava/util/Map$Entry;)Z
    .registers 2

    .line 191
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getActivities(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 242
    const-class p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_a

    .line 94
    sget-object p0, Lcom/android/server/wm/BoundsCompatStatusLogger;->TAG:Ljava/lang/String;

    const-string p1, "failed to init"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_a
    sget-object v0, Lcom/android/server/wm/BoundsCompatStatusLogger;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatStatusLogger;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isInitialized()Z
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final logAlignmentStatus(Landroid/app/IActivityTaskManager;)V
    .registers 4

    .line 227
    :try_start_0
    invoke-interface {p1}, Landroid/app/IActivityTaskManager;->getBoundsCompatAlignment()I

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_f

    :catch_5
    move-exception p0

    .line 229
    sget-object p1, Lcom/android/server/wm/BoundsCompatStatusLogger;->TAG:Ljava/lang/String;

    const-string v0, "failed to get alignment!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0x11

    :goto_f
    and-int/lit8 p1, p0, 0x70

    and-int/lit8 p0, p0, 0x7

    const/16 v0, 0x30

    const-string v1, "Center"

    if-ne p1, v0, :cond_1c

    const-string p1, "Top"

    goto :goto_24

    :cond_1c
    const/16 v0, 0x10

    if-ne p1, v0, :cond_22

    move-object p1, v1

    goto :goto_24

    :cond_22
    const-string p1, "Bottom"

    :goto_24
    const-string v0, "519306"

    .line 235
    invoke-static {v0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2f

    const-string v1, "Left"

    goto :goto_35

    :cond_2f
    const/4 p1, 0x1

    if-ne p0, p1, :cond_33

    goto :goto_35

    :cond_33
    const-string v1, "Right"

    :goto_35
    const-string p0, "519305"

    .line 237
    invoke-static {p0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logBoundsCompatStatus()V
    .registers 4

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 128
    sget-object p0, Lcom/android/server/wm/BoundsCompatStatusLogger;->TAG:Ljava/lang/String;

    const-string v0, "not initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->getActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 134
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v2, :cond_1f

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->logFixedAspectRatioStatus(Landroid/app/IActivityTaskManager;)V

    .line 137
    :cond_1f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_CONTROL:Z

    if-eqz v2, :cond_26

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->logAlignmentStatus(Landroid/app/IActivityTaskManager;)V

    .line 140
    :cond_26
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ASPECT_RATIO:Z

    if-eqz v2, :cond_36

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->logOrientationControlStatus(Ljava/util/List;Landroid/app/IActivityTaskManager;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    goto :goto_36

    :catchall_2e
    move-exception p0

    .line 144
    sget-object v0, Lcom/android/server/wm/BoundsCompatStatusLogger;->TAG:Ljava/lang/String;

    const-string v1, "failed to logBoundsCompatStatus"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    return-void
.end method

.method public final logFixedAspectRatioStatus(Landroid/app/IActivityTaskManager;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Landroid/app/IActivityTaskManager;->getFoldStarManagerService()Lcom/samsung/android/core/IFoldStarManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 201
    invoke-interface {p1, p0, v0, v1}, Lcom/samsung/android/core/IFoldStarManager;->getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const/high16 p1, -0x40800000    # -1.0f

    .line 206
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 205
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->getKeysByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    .line 208
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 207
    invoke-static {p0, v0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->getKeysByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const v1, 0x3fe38e39

    .line 210
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 209
    invoke-static {p0, v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->getKeysByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const v2, 0x3faaaaab

    .line 212
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/wm/BoundsCompatStatusLogger;->getKeysByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 214
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-static {v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->convertToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "519402"

    invoke-static {v0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {p0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->convertToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "519403"

    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logOrientationControlStatus(Ljava/util/List;Landroid/app/IActivityTaskManager;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Landroid/app/IActivityTaskManager;",
            ")V"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 151
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 152
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    const/4 v4, 0x0

    .line 156
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 159
    :try_start_26
    iget-object v6, p0, Lcom/android/server/wm/BoundsCompatStatusLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {p2, v6, v5}, Landroid/app/IActivityTaskManager;->getOrientationControlPolicy(ILjava/lang/String;)I

    move-result v4
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_48

    :catch_31
    move-exception v6

    .line 161
    sget-object v7, Lcom/android/server/wm/BoundsCompatStatusLogger;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to get ocp for a="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    const/4 v3, 0x7

    if-eq v4, v3, :cond_57

    const/16 v3, 0x1f

    if-eq v4, v3, :cond_53

    .line 174
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 166
    :cond_53
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 169
    :cond_57
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 183
    :cond_5b
    invoke-static {v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->convertToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LVPA01"

    .line 182
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {v2}, Lcom/android/server/wm/BoundsCompatStatusLogger;->convertToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LVPA02"

    .line 184
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
