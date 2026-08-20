.class public Lcom/android/server/job/controllers/ConnectivityController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2

    .line 1180
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final maybeRegisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1229
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 1232
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1233
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p1

    .line 1234
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1235
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_39

    goto :goto_1c

    .line 1238
    :cond_39
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1239
    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback-IA;)V

    .line 1241
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 1240
    invoke-virtual {v2, v4, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 1242
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v4}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1244
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1246
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, v3, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    goto :goto_1c

    :cond_62
    return-void
.end method

.method public final maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1254
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    .line 1257
    :cond_8
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1258
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v0

    :goto_18
    if-ge v3, v2, :cond_36

    .line 1259
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v4}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkCapabilities;

    .line 1260
    invoke-virtual {v4, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1261
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1264
    :cond_36
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v2, "JobScheduler.Connectivity"

    if-eqz v0, :cond_52

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active subscription IDs: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_52
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1268
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p1

    .line 1269
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1270
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    goto :goto_66

    .line 1273
    :cond_81
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1274
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v5}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    if-eqz v5, :cond_97

    .line 1276
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_66

    .line 1278
    :cond_97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for sub "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " didn\'t exist?!?!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :cond_b1
    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    .line 1183
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_1d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onAvailable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Connectivity"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 6

    .line 1191
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "JobScheduler.Connectivity"

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCapabilitiesChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_1d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1195
    :try_start_22
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_33

    .line 1197
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 1199
    :cond_33
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeRegisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 1200
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    invoke-static {p2, v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1201
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 1202
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6

    .line 1207
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "JobScheduler.Connectivity"

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_1d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_22
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_33

    .line 1213
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    :cond_33
    const/4 v1, 0x0

    .line 1215
    :goto_34
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmCurrentDefaultNetworkCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5d

    .line 1216
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmCurrentDefaultNetworkCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 1217
    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fgetmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)Landroid/net/Network;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const/4 v3, 0x0

    .line 1218
    invoke-static {v2, v3}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fputmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/net/Network;)V

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 1221
    :cond_5d
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v2, -0x1

    invoke-static {v1, v2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1222
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 1223
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_22 .. :try_end_6c} :catchall_6a

    throw p0
.end method
