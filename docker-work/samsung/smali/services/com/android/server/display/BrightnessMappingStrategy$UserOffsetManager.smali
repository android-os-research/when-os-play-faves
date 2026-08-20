.class public Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserOffsetManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    }
.end annotation


# static fields
.field public static sDebugLogging:Z


# instance fields
.field public mCurve:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation
.end field

.field public mLastAddedLux:F

.field public mUserPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    monitor-enter p0

    const/4 p1, 0x0

    .line 780
    :try_start_5
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 781
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 782
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public static setLoggingEnabled(Z)Z
    .registers 2

    .line 853
    sget-boolean v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    if-ne v0, p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 856
    :cond_6
    sput-boolean p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addPoint(FFF)V
    .registers 7

    .line 786
    monitor-enter p0

    .line 787
    :try_start_1
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;-><init>(FFF)V

    .line 788
    invoke-virtual {p0, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->removeRedundantUserPoint(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)V

    .line 789
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mLastAddedLux:F

    const/4 p1, 0x0

    move p2, p1

    .line 792
    :goto_12
    iget-object p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_58

    const-string p3, "BrightnessMappingStrategy"

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUserDataPoint: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0xb

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 794
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3, v0}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    .line 797
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->updateCurve()V

    .line 798
    monitor-exit p0

    return-void

    :catchall_5d
    move-exception p1

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method public clear()V
    .registers 5

    .line 802
    monitor-enter p0

    .line 803
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    if-eqz v0, :cond_1f

    .line 804
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "clear user offset curve"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string/jumbo v1, "offset curve"

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    .line 805
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_1f
    const/4 v0, 0x0

    .line 808
    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 809
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 810
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public final convertFloatArrayListToArray(Ljava/util/ArrayList;)[F
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation

    .line 935
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [F

    .line 937
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    add-int/lit8 v2, v0, 0x1

    if-eqz v1, :cond_20

    .line 938
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_22

    :cond_20
    const/high16 v1, 0x7fc00000    # Float.NaN

    :goto_22
    aput v1, p0, v0

    move v0, v2

    goto :goto_b

    :cond_26
    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "UserOffsetManager:"

    .line 838
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    if-eqz v0, :cond_2b

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {p0, v2, v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->formatCurve([F[F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2b
    const/4 v0, 0x0

    .line 844
    :goto_2c
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserPoints["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 848
    :cond_59
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 849
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  sDebugLogging: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final formatCurve([F[F)Ljava/lang/String;
    .registers 7

    .line 861
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "curve: ["

    .line 862
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    array-length v0, p1

    array-length v1, p2

    if-gt v0, v1, :cond_10

    array-length v0, p1

    goto :goto_11

    :cond_10
    array-length v0, p2

    :goto_11
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_3c

    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "),"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3c
    const-string p1, "]"

    .line 867
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurve()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 814
    monitor-enter p0

    const/4 v0, 0x0

    .line 816
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    if-eqz v1, :cond_24

    .line 817
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [F

    check-cast v0, [F

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [F

    check-cast v1, [F

    array-length v1, v1

    .line 818
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 817
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 821
    :cond_24
    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    .line 822
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public getLastAddedLux()F
    .registers 2

    .line 832
    monitor-enter p0

    .line 833
    :try_start_1
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mLastAddedLux:F

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 834
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public hasUserDataPoints()Z
    .registers 2

    .line 826
    monitor-enter p0

    .line 827
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    .line 828
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final removeRedundantUserPoint(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)V
    .registers 3

    .line 924
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 925
    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 926
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 928
    invoke-virtual {p1, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->isInSameBoundary(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 929
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public final updateCurve()V
    .registers 12

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 873
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 875
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 876
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 878
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1e
    if-ge v5, v3, :cond_8b

    .line 880
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    const/4 v7, 0x1

    if-lez v5, :cond_3b

    add-int/lit8 v8, v5, -0x1

    .line 885
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 886
    iget v9, v6, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    invoke-virtual {v8, v9}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->isInSameBoundary(F)Z

    move-result v8

    if-eqz v8, :cond_3b

    move v8, v4

    goto :goto_3c

    :cond_3b
    move v8, v7

    :goto_3c
    const/4 v9, 0x0

    if-eqz v8, :cond_4f

    .line 891
    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_4f
    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v3, -0x1

    if-ge v5, v8, :cond_76

    add-int/lit8 v8, v5, 0x1

    .line 902
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 903
    iget v10, v6, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    invoke-virtual {v8, v10}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->isInSameBoundary(F)Z

    move-result v8

    if-eqz v8, :cond_76

    move v7, v4

    :cond_76
    if-eqz v7, :cond_88

    .line 908
    iget v6, v6, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 913
    :cond_8b
    invoke-virtual {p0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->convertFloatArrayListToArray(Ljava/util/ArrayList;)[F

    move-result-object v0

    .line 914
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->convertFloatArrayListToArray(Ljava/util/ArrayList;)[F

    move-result-object v1

    .line 916
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 918
    sget-boolean p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    if-eqz p0, :cond_a7

    .line 919
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object p0

    const-string/jumbo v2, "offset curve"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_a7
    return-void
.end method
