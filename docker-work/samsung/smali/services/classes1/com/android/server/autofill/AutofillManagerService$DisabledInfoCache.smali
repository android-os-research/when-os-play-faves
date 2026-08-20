.class public final Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisabledInfoCache"
.end annotation


# instance fields
.field public final mCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 958
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addDisabledActivityLocked(ILandroid/content/ComponentName;J)V
    .registers 6

    .line 979
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    move-result-object p0

    .line 983
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->putDisableActivityLocked(Landroid/content/ComponentName;J)V

    .line 984
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public addDisabledAppLocked(ILjava/lang/String;J)V
    .registers 6

    .line 969
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    move-result-object p0

    .line 973
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->putDisableAppsLocked(Ljava/lang/String;J)V

    .line 974
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public dump(ILjava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 1022
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-eqz p0, :cond_10

    .line 1025
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1027
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getAppDisabledActivities(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1011
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_6
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-eqz p0, :cond_15

    .line 1016
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledActivitiesLocked(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 1017
    :goto_16
    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public getAppDisabledExpiration(ILjava/lang/String;)J
    .registers 4

    .line 999
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_6
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-eqz p0, :cond_15

    .line 1003
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledExpirationLocked(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_17

    :cond_15
    const-wide/16 p0, 0x0

    :goto_17
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 1004
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_21

    .line 1005
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :catchall_21
    move-exception p0

    .line 1004
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    .registers 4

    .line 1033
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-nez v0, :cond_15

    .line 1035
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;-><init>(Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo-IA;)V

    .line 1036
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public isAutofillDisabledLocked(ILandroid/content/ComponentName;)Z
    .registers 4

    .line 989
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 992
    :try_start_6
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-eqz p0, :cond_15

    .line 993
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 994
    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public remove(I)V
    .registers 3

    .line 962
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 964
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
