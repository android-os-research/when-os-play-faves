.class public Lcom/samsung/android/core/pm/RestrictedReceiverFilter;
.super Ljava/lang/Object;
.source "RestrictedReceiverFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "RestrictedReceiverFilter"

.field private static blacklist sInstance:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;


# instance fields
.field private final blacklist mAllowedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mEnabled:Z

.field private final blacklist mExemptedPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExemptedPackagePrefixNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRestrictedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictedPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictedPackagePrefixNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViolationActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mViolationCodePaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mViolationCodePaths:Ljava/util/Map;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mEnabled:Z

    .line 68
    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/core/pm/RestrictedReceiverFilter;
    .registers 2

    .line 56
    sget-object v0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    if-nez v0, :cond_17

    .line 57
    const-class v0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    monitor-enter v0

    .line 58
    :try_start_7
    sget-object v1, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    if-nez v1, :cond_12

    .line 59
    new-instance v1, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    invoke-direct {v1}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;-><init>()V

    sput-object v1, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    .line 61
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 63
    :cond_17
    :goto_17
    sget-object v0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    return-object v0
.end method

.method private blacklist isExemptedPackageLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 161
    return v1

    .line 163
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 165
    return v1

    .line 167
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_23
    goto :goto_10

    .line 168
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist loadItemsLocked()V
    .registers 2

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->loadItemsInternalLocked(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public blacklist addViolationLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 174
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_61

    .line 178
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restricted action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "RestrictedReceiverFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_38
    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 183
    .local v1, "violations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_48

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 186
    :cond_48
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 187
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_51
    iget-object v2, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mViolationCodePaths:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    nop

    .end local v1    # "violations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_38 .. :try_end_60} :catchall_5e

    throw v1

    .line 175
    :cond_61
    :goto_61
    return-void
.end method

.method public blacklist clearItemsLocked()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    return-void
.end method

.method public blacklist enableAndConfigure(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mEnabled:Z

    .line 72
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_5
    iget-boolean v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mEnabled:Z

    if-eqz v1, :cond_10

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->clearItemsLocked()V

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->loadItemsLocked()V

    goto :goto_13

    .line 77
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->clearItemsLocked()V

    .line 79
    :goto_13
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist filterReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 118
    iget-boolean v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 119
    return v1

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 123
    monitor-exit v0

    return v1

    .line 125
    :cond_13
    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->isExemptedPackageLocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 126
    invoke-virtual {p0, p1}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->isRestrictedPackageLocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_29

    .line 129
    :cond_20
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->isAllowedActionLocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    monitor-exit v0

    return v1

    .line 127
    :cond_29
    :goto_29
    monitor-exit v0

    return v1

    .line 130
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist getViolationLog()Ljava/lang/String;
    .registers 5

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Restricted receiver violations:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1b

    .line 199
    const-string v2, "No Restricted receiver violations"

    monitor-exit v1

    return-object v2

    .line 201
    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    new-instance v3, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/RestrictedReceiverFilter;Ljava/lang/StringBuilder;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 209
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 209
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public blacklist isAllowedActionLocked(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_20

    .line 154
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 155
    .local v0, "allowedActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1f

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    .line 156
    .local v1, "allowed":Z
    :cond_1f
    return v1

    .line 152
    .end local v0    # "allowedActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "allowed":Z
    :cond_20
    :goto_20
    return v1
.end method

.method public blacklist isRestrictedPackageLocked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 136
    return v1

    .line 138
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 140
    return v3

    .line 142
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_22
    goto :goto_e

    .line 143
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 144
    return v3

    .line 146
    :cond_2c
    return v1
.end method

.method synthetic blacklist lambda$getViolationLog$0$com-samsung-android-core-pm-RestrictedReceiverFilter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "actions"    # Ljava/util/List;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mViolationCodePaths:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v0, "    violations:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 206
    .local v2, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .end local v2    # "action":Ljava/lang/String;
    goto :goto_49

    .line 208
    :cond_70
    return-void
.end method

.method public blacklist loadItemsInternalLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;-><init>()V

    .line 94
    .local v0, "parser":Lcom/samsung/android/core/pm/BroadcastReceiverListParser;
    if-nez p1, :cond_b

    .line 95
    invoke-virtual {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parseAllowList()V

    goto :goto_e

    .line 97
    :cond_b
    invoke-virtual {v0, p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parseAllowList(Ljava/lang/String;)V

    .line 99
    :goto_e
    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->getPackageMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->getRestricedIntent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->getAllowedPackageNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->getAllowedPackagePrefixNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->getRestrictedPackageNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->getRestrictedPackagePrefixNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    return-void
.end method

.method public blacklist logViolationsIfNeeded(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "logger":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->getViolationLog()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 216
    return-void

    .line 218
    :cond_b
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 219
    return-void
.end method
