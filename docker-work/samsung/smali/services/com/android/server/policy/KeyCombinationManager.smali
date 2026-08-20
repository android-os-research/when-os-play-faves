.class public Lcom/android/server/policy/KeyCombinationManager;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    }
.end annotation


# static fields
.field public static final COMBINE_KEY_DELAY_MILLIS:J = 0x96L

.field public static final KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "KeyCombinationManager"


# instance fields
.field public final mActiveRules:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;"
        }
    .end annotation
.end field

.field public final mDownTimes:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mRemovePendingRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;"
        }
    .end annotation
.end field

.field public final mRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;"
        }
    .end annotation
.end field

.field public mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BJTTk89spCrPRnvcKkcVZFIMOpQ(Lcom/android/server/policy/KeyCombinationManager;Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCombinationManager;->lambda$interceptKeyLocked$2(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SwbcPPRXc6ehbsIunQix8bGmyMY(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->lambda$interceptKeyLocked$4(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fpSaWTHZ4cQpSAt6l1OzR1WxCf4(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/policy/KeyCombinationManager;->lambda$isPowerKeyIntercepted$5(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mg6Mo5wOx5q1gfrZzyQsjVg00Vs(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->lambda$interceptKeyLocked$3(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvzH8OzKFblvQsKvvz08816romY(Lcom/android/server/policy/KeyCombinationManager;ILcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->lambda$interceptKeyLocked$1(ILcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oioDx8dHc6ebbePRTWesJUaLD6s(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/policy/KeyCombinationManager;->lambda$interceptKeyLocked$0(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xGPz9CkHrovpXDSnbWD_A3qYI-A(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->lambda$dump$6(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 249
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/policy/KeyCombinationManager;->KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;

    const/16 v1, 0xbb

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 129
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$dump$6(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 4

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$interceptKeyLocked$0(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 1

    .line 164
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel()V

    return-void
.end method

.method private synthetic lambda$interceptKeyLocked$1(ILcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 3

    .line 191
    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 192
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method private synthetic lambda$interceptKeyLocked$2(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKeys(Landroid/util/SparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 206
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing combination rule : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCombinationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$interceptKeyLocked$3(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V
    .registers 3

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public static synthetic lambda$interceptKeyLocked$4(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V
    .registers 3

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public static synthetic lambda$isPowerKeyIntercepted$5(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .registers 2

    const/16 v0, 0x1a

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyCombination rules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda8;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;)Z"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 327
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 328
    invoke-interface {p1, v3}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public final forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;)V"
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_13

    .line 316
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 317
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public getKeyInterceptTimeout(I)J
    .registers 8

    .line 262
    sget-object v0, Lcom/android/server/policy/KeyCombinationManager;->KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_f

    return-wide v1

    .line 268
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_12
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_1e

    .line 270
    monitor-exit v0

    return-wide v1

    .line 273
    :cond_1e
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 274
    invoke-virtual {v4, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 275
    invoke-virtual {v4}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->getKeyInterceptDelayMs()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_24

    :cond_3f
    const-wide/16 v3, 0x96

    .line 279
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 280
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    add-long/2addr p0, v1

    monitor-exit v0

    return-wide p0

    :catchall_4e
    move-exception p0

    .line 281
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_12 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public interceptKey(Landroid/view/KeyEvent;Z)Z
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->interceptKeyLocked(Landroid/view/KeyEvent;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 144
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final interceptKeyLocked(Landroid/view/KeyEvent;Z)Z
    .registers 14

    .line 148
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 149
    :goto_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 150
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 151
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    if-eqz p2, :cond_a9

    if-eqz v0, :cond_a9

    .line 154
    iget-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p2}, Landroid/util/SparseLongArray;->size()I

    move-result p2

    const-wide/16 v7, 0x0

    if-lez p2, :cond_66

    .line 156
    iget-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 157
    invoke-virtual {p2, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    cmp-long p2, v9, v7

    if-eqz p2, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_38

    return v2

    :cond_38
    if-lez v4, :cond_57

    .line 161
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 162
    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide p1

    const-wide/16 v9, 0x96

    add-long/2addr p1, v9

    cmp-long p1, v5, p1

    if-lez p1, :cond_57

    .line 164
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    .line 165
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v2

    :cond_57
    if-nez v4, :cond_66

    const-string p1, "KeyCombinationManager"

    const-string p2, "There is no active rule."

    .line 170
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    return v2

    .line 180
    :cond_66
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p1

    cmp-long p1, p1, v7

    if-nez p1, :cond_a8

    .line 181
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 187
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    move-result p1

    if-ne p1, v1, :cond_8c

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 190
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v3}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/KeyCombinationManager;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    goto/16 :goto_116

    .line 197
    :cond_8c
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_91

    return v1

    .line 202
    :cond_91
    new-instance p1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCombinationManager;->forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z

    .line 211
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_116

    .line 213
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_a8
    return v2

    .line 218
    :cond_a9
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseLongArray;->delete(I)V

    .line 220
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 221
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz p1, :cond_e0

    .line 222
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_be
    if-ltz p1, :cond_e0

    .line 223
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 224
    invoke-virtual {v5, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 225
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;

    invoke-direct {v7, v5, v0, p2}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_d8
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_be

    :cond_e0
    sub-int/2addr v4, v1

    :goto_e1
    if-ltz v4, :cond_116

    .line 232
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 233
    invoke-virtual {p1, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 235
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v1, :cond_104

    .line 236
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;

    invoke-direct {v5, p1, v0, p2}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_104
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda7;

    invoke-direct {v5, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_113
    add-int/lit8 v4, v4, -0x1

    goto :goto_e1

    :cond_116
    :goto_116
    return v2
.end method

.method public isKeyConsumed(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 290
    monitor-exit v0

    return v2

    .line 292
    :cond_e
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p0, :cond_1d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    monitor-exit v0

    return v2

    :catchall_1f
    move-exception p0

    .line 293
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public isKeyPressed(I)Z
    .registers 4

    .line 340
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isPowerKeyIntercepted()Z
    .registers 9

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCombinationManager;->forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 303
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_26

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-nez p0, :cond_27

    :cond_26
    move v2, v3

    :cond_27
    monitor-exit v0

    return v2

    .line 305
    :cond_29
    monitor-exit v0

    return v2

    :catchall_2b
    move-exception p0

    .line 306
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method
