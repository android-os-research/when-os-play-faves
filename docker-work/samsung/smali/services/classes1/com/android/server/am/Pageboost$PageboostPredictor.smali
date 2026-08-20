.class public final Lcom/android/server/am/Pageboost$PageboostPredictor;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageboostPredictor"
.end annotation


# static fields
.field public static final MAX_TARGET_PREDO_APP_NUM:I = 0x1

.field public static mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    new-instance p0, Lcom/android/server/am/Pageboost$LRUPolicy;

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$LRUPolicy;-><init>()V

    sput-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    return-void
.end method

.method public static haltPredict()V
    .registers 2

    .line 1147
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_ACTIVE_LAUNCH_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1148
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetsHandler()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1152
    :cond_f
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetsHandler()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1154
    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$PageboostdProxy;->executeCmd(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .registers 3

    if-gtz p2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1139
    :cond_4
    sget-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->judgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result p0

    return p0
.end method

.method public finalizePredict()V
    .registers 1

    .line 1143
    sget-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->finalizePredict()V

    return-void
.end method

.method public predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V
    .registers 7

    .line 1111
    sget-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    const-string p1, ""

    .line 1115
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1116
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1117
    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->execute()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1120
    :cond_3a
    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getMemUsage()Lcom/android/server/am/Pageboost$MemUsage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$MemUsage;->getTotal()I

    move-result v4

    if-lt v4, v2, :cond_12

    move-object v1, v3

    move v2, v4

    goto :goto_12

    .line 1126
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_c .. :try_end_48} :catchall_72

    if-eqz v1, :cond_4d

    .line 1129
    invoke-static {v1}, Lcom/android/server/am/Pageboost$MemReclaimer;->reclaimMem(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    .line 1132
    :cond_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Prefetch,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",MemPrep,"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_64

    iget-object p1, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    goto :goto_67

    :cond_64
    const-string/jumbo p1, "n/a"

    :goto_67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    return-void

    :catchall_72
    move-exception p0

    .line 1126
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0
.end method
