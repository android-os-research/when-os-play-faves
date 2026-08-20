.class public Lcom/android/server/pm/verify/domain/DomainVerificationSettings;
.super Ljava/lang/Object;
.source "DomainVerificationSettings.java"


# instance fields
.field public final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingPkgStates:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;"
        }
    .end annotation
.end field

.field public final mRestoredPkgStates:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    return-void
.end method


# virtual methods
.method public mergePkgState(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/Computer;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 220
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    if-nez p3, :cond_c

    const/4 p3, 0x0

    goto :goto_10

    .line 221
    :cond_c
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p3

    :goto_10
    if-nez p3, :cond_17

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_1d

    :cond_17
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    .line 225
    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p3

    .line 226
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2b
    if-ge v3, v1, :cond_66

    .line 229
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 231
    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    goto :goto_63

    .line 236
    :cond_40
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4e

    .line 237
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_63

    .line 238
    :cond_4e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v6, v8, :cond_5c

    .line 239
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_63

    .line 240
    :cond_5c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 246
    :cond_66
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    .line 249
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_72
    if-ge v2, p2, :cond_a3

    .line 253
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    .line 254
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz v0, :cond_a0

    .line 256
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v1

    .line 257
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 258
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v0

    if-nez v3, :cond_99

    .line 260
    new-instance v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {v3, p3, v1, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    invoke-virtual {p0, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a0

    .line 263
    :cond_99
    invoke-virtual {v3, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Landroid/util/ArraySet;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p3

    .line 264
    invoke-virtual {p3, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :cond_a0
    :goto_a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_a3
    return-void
.end method

.method public readSettings(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;",
            "Lcom/android/server/pm/Computer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 107
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    move-result-object p1

    .line 108
    iget-object v0, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->active:Landroid/util/ArrayMap;

    .line 109
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->restored:Landroid/util/ArrayMap;

    .line 111
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_b
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_3f

    .line 114
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 115
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual {p2, v6}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v7, :cond_37

    .line 120
    invoke-virtual {v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 121
    invoke-virtual {p0, v7, v5, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mergePkgState(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/Computer;)V

    goto :goto_3c

    .line 124
    :cond_37
    iget-object v7, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 128
    :cond_3f
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_43
    if-ge v3, p2, :cond_57

    .line 130
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 133
    :cond_57
    monitor-exit v1

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removePackageForUser(Ljava/lang/String;I)V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v1, :cond_10

    .line 281
    invoke-virtual {v1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 285
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz p0, :cond_1d

    .line 287
    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 289
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public removePendingState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 312
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public removeRestoredState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 319
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public removeUser(I)V
    .registers 7

    .line 293
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_1b

    .line 296
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 301
    :cond_1b
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_21
    if-ge v2, v1, :cond_31

    .line 303
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 305
    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public restoreSettings(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;",
            "Lcom/android/server/pm/Computer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    move-result-object p1

    .line 152
    iget-object v0, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->restored:Landroid/util/ArrayMap;

    .line 153
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->active:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 155
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x0

    .line 156
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_73

    .line 157
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 158
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p2, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v4, :cond_2f

    .line 161
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    :cond_2f
    if-nez v4, :cond_39

    .line 164
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    :cond_39
    if-eqz v4, :cond_3f

    .line 168
    invoke-virtual {p0, v4, v2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mergePkgState(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/Computer;)V

    goto :goto_70

    .line 175
    :cond_3f
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_49
    if-ltz v5, :cond_6b

    .line 178
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_68

    .line 180
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v6, :cond_61

    if-ne v7, v8, :cond_5d

    goto :goto_61

    .line 185
    :cond_5d
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_68

    .line 183
    :cond_61
    :goto_61
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_68
    :goto_68
    add-int/lit8 v5, v5, -0x1

    goto :goto_49

    .line 190
    :cond_6b
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 193
    :cond_73
    monitor-exit p1

    return-void

    :catchall_75
    move-exception p0

    monitor-exit p1
    :try_end_77
    .catchall {:try_start_f .. :try_end_77} :catchall_75

    throw p0
.end method

.method public writeSettings(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;ILjava/util/function/Function;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeToXml(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILjava/util/function/Function;)V

    .line 94
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public writeSettings(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Ljava/util/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
