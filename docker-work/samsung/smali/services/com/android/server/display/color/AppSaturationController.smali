.class public Lcom/android/server/display/color/AppSaturationController;
.super Ljava/lang/Object;
.source "AppSaturationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/color/AppSaturationController$SaturationController;
    }
.end annotation


# static fields
.field public static final TRANSLATION_VECTOR:[F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mAppsMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/color/AppSaturationController$SaturationController;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 48
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    return-void
.end method

.method public static computeGrayscaleTransformMatrix(F[F)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [F

    const v3, 0x3e6c8b44    # 0.231f

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    aput v3, v2, v4

    const v5, 0x3f370a3d    # 0.715f

    mul-float/2addr v5, v0

    const/4 v6, 0x1

    aput v5, v2, v6

    const v5, 0x3d9374bc    # 0.072f

    mul-float/2addr v0, v5

    const/4 v5, 0x2

    aput v0, v2, v5

    add-float/2addr v3, p0

    .line 140
    aput v3, p1, v4

    aget v0, v2, v4

    .line 141
    aput v0, p1, v6

    .line 142
    aput v0, p1, v5

    aget v0, v2, v6

    .line 143
    aput v0, p1, v1

    add-float v1, v0, p0

    const/4 v3, 0x4

    .line 144
    aput v1, p1, v3

    const/4 v1, 0x5

    .line 145
    aput v0, p1, v1

    aget v0, v2, v5

    const/4 v1, 0x6

    .line 146
    aput v0, p1, v1

    const/4 v1, 0x7

    .line 147
    aput v0, p1, v1

    add-float/2addr v0, p0

    const/16 p0, 0x8

    .line 148
    aput v0, p1, p0

    return-void
.end method


# virtual methods
.method public addColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;",
            ">;)Z"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/AppSaturationController;->getSaturationControllerLocked(Ljava/lang/String;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    move-result-object p0

    .line 57
    invoke-static {p0, p3}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->-$$Nest$maddColorTransformController(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 78
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "App Saturation: "

    .line 79
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_17

    const-string p0, "    No packages"

    .line 81
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    monitor-exit v0

    return-void

    .line 84
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    .line 89
    :goto_57
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    invoke-static {v4, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->-$$Nest$mdump(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 94
    :cond_86
    monitor-exit v0

    return-void

    :catchall_88
    move-exception p0

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public final getOrCreateSaturationControllerLocked(Landroid/util/SparseArray;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/color/AppSaturationController$SaturationController;",
            ">;I)",
            "Lcom/android/server/display/color/AppSaturationController$SaturationController;"
        }
    .end annotation

    .line 126
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 127
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    return-object p0

    .line 130
    :cond_d
    new-instance p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;-><init>(Lcom/android/server/display/color/AppSaturationController$SaturationController-IA;)V

    .line 131
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final getOrCreateUserIdMapLocked(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/color/AppSaturationController$SaturationController;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 113
    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0

    .line 116
    :cond_11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 117
    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getSaturationControllerLocked(Ljava/lang/String;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .registers 3

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/AppSaturationController;->getOrCreateUserIdMapLocked(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/AppSaturationController;->getOrCreateSaturationControllerLocked(Landroid/util/SparseArray;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    move-result-object p0

    return-object p0
.end method

.method public setSaturationLevel(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 6

    .line 68
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/color/AppSaturationController;->getSaturationControllerLocked(Ljava/lang/String;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    move-result-object p0

    .line 70
    invoke-static {p0, p1, p4}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->-$$Nest$msetSaturationLevel(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
