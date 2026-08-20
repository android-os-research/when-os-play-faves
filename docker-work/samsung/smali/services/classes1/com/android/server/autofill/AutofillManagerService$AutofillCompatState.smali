.class public final Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutofillCompatState"
.end annotation


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mUserSpecs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addCompatibilityModeRequest(Ljava/lang/String;J[Ljava/lang/String;I)V
    .registers 8

    .line 1233
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 1235
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    .line 1237
    :cond_e
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_22

    .line 1239
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1240
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {p0, p5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1242
    :cond_22
    new-instance p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;-><init>(J[Ljava/lang/String;)V

    invoke-virtual {v1, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11

    .line 1274
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1275
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    const-string p0, "N/A"

    .line 1276
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    monitor-exit v0

    return-void

    .line 1279
    :cond_e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1281
    :goto_24
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6c

    .line 1282
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1283
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "User: "

    .line 1284
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1286
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v2

    .line 1287
    :goto_46
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_69

    .line 1288
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1289
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 1290
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1293
    :cond_6c
    monitor-exit v0

    return-void

    :catchall_6e
    move-exception p0

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public getUrlBarResourceIds(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5

    .line 1215
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1216
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez p0, :cond_a

    .line 1217
    monitor-exit v0

    return-object v1

    .line 1219
    :cond_a
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_14

    .line 1221
    monitor-exit v0

    return-object v1

    .line 1223
    :cond_14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    if-nez p0, :cond_1e

    .line 1225
    monitor-exit v0

    return-object v1

    .line 1227
    :cond_1e
    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->-$$Nest$fgeturlBarResourceIds(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)[Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    .line 1228
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public isCompatibilityModeRequested(Ljava/lang/String;JI)Z
    .registers 7

    .line 1197
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez p0, :cond_a

    .line 1199
    monitor-exit v0

    return v1

    .line 1201
    :cond_a
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_14

    .line 1203
    monitor-exit v0

    return v1

    .line 1205
    :cond_14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    if-nez p0, :cond_1e

    .line 1207
    monitor-exit v0

    return v1

    .line 1209
    :cond_1e
    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->-$$Nest$fgetmaxVersionCode(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)J

    move-result-wide p0

    cmp-long p0, p2, p0

    if-gtz p0, :cond_27

    const/4 v1, 0x1

    :cond_27
    monitor-exit v0

    return v1

    :catchall_29
    move-exception p0

    .line 1210
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public removeCompatibilityModeRequests(I)V
    .registers 4

    .line 1248
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_15

    .line 1250
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1251
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_15

    const/4 p1, 0x0

    .line 1252
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    .line 1255
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public reset(I)V
    .registers 5

    .line 1259
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_3d

    .line 1261
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1262
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_22

    .line 1264
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_1e

    const-string p1, "AutofillManagerService"

    const-string/jumbo v1, "reseting mUserSpecs"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 p1, 0x0

    .line 1265
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    goto :goto_3d

    .line 1267
    :cond_22
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_3d

    const-string p0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUserSpecs down to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_3d
    :goto_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p0
.end method
