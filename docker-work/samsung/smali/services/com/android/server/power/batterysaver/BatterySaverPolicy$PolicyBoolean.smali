.class Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;
.super Ljava/lang/Object;
.source "BatterySaverPolicy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PolicyBoolean"
.end annotation


# instance fields
.field public final mDebugName:Ljava/lang/String;

.field public mValue:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minitialize(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;)V
    .registers 3

    .line 1271
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1272
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get()Z
    .registers 2

    .line 1283
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1284
    :try_start_7
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1285
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final initialize(Z)V
    .registers 3

    .line 1277
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1278
    :try_start_7
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    .line 1279
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public update(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1292
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    if-eq v1, p1, :cond_37

    const-string v1, "BatterySaverPolicy"

    .line 1293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mDebugName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", updating policy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    .line 1295
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$mupdatePolicyDependenciesLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    .line 1296
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$mmaybeNotifyListenersOfPolicyChange(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    .line 1298
    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw p0
.end method
