.class public final Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;
.super Ljava/lang/Object;
.source "FrameworkResourcesServiceNameResolver.java"

# interfaces
.implements Lcom/android/server/infra/ServiceNameResolver;


# static fields
.field public static final MSG_RESET_TEMPORARY_SERVICE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "FrameworkResourcesServiceNameResolver"


# instance fields
.field public final mArrayResourceId:I

.field public final mContext:Landroid/content/Context;

.field public final mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mIsMultiple:Z

.field public final mLock:Ljava/lang/Object;

.field public mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

.field public final mStringResourceId:I

.field public mTemporaryHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mTemporaryServiceExpiration:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mTemporaryServiceNamesList:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 100
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    .line 101
    iput p2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    const/4 p1, -0x1

    .line 102
    iput p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mIsMultiple:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    if-eqz p3, :cond_25

    .line 113
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    .line 115
    iput p2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mIsMultiple:Z

    return-void

    .line 109
    :cond_25
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please use FrameworkResourcesServiceNameResolver(context, @StringRes int) constructor if single service mode is requested."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dumpShort(Ljava/io/PrintWriter;)V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "FrameworkResourcesServiceNamer: resId="

    .line 309
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    iget v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", numberTemps="

    .line 311
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", enabledDefaults="

    .line 313
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 315
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public dumpShort(Ljava/io/PrintWriter;I)V
    .registers 8

    .line 321
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_2e

    const-string/jumbo v2, "tmpName="

    .line 324
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-wide v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceExpiration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, " (expires in "

    .line 327
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, "), "

    .line 329
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2e
    const-string v1, "defaultName="

    .line 331
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_45

    const-string p0, " (disabled)"

    goto :goto_47

    :cond_45
    const-string p0, " (enabled)"

    .line 334
    :goto_47
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public getDefaultServiceName(I)Ljava/lang/String;
    .registers 2

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 135
    array-length p1, p0

    if-nez p1, :cond_a

    goto :goto_e

    :cond_a
    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public getDefaultServiceNameList(I)[Ljava/lang/String;
    .registers 9

    .line 172
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mIsMultiple:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_56

    .line 174
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_6f

    .line 179
    :goto_19
    :try_start_19
    array-length v3, p0

    if-ge v2, v3, :cond_48

    .line 180
    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_3d

    .line 183
    :cond_25
    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 185
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/32 v5, 0xc0000

    invoke-interface {v4, v3, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 190
    aget-object v3, p0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3d} :catch_40
    .catchall {:try_start_19 .. :try_end_3d} :catchall_6f

    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :catch_40
    move-exception p0

    .line 194
    :try_start_41
    sget-object p1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    const-string v2, "Could not validate provided services."

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :cond_48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 197
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 199
    :cond_56
    iget-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_67

    new-array p0, v2, [Ljava/lang/String;

    goto :goto_6d

    :cond_67
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    aput-object p0, p1, v2

    move-object p0, p1

    :goto_6d
    monitor-exit v0

    return-object p0

    :catchall_6f
    move-exception p0

    .line 202
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_41 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public getServiceName(I)Ljava/lang/String;
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceNameList(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 129
    array-length p1, p0

    if-nez p1, :cond_a

    goto :goto_e

    :cond_a
    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public getServiceNameList(I)[Ljava/lang/String;
    .registers 6

    .line 145
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 149
    sget-object p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getServiceName(): using temporary name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v0

    return-object v1

    .line 153
    :cond_32
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 156
    sget-object p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getServiceName(): temporary name not set and default disabled for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 158
    monitor-exit v0

    return-object p0

    .line 160
    :cond_54
    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_5a
    move-exception p0

    .line 162
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public isConfiguredInMultipleMode()Z
    .registers 1

    .line 207
    iget-boolean p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mIsMultiple:Z

    return p0
.end method

.method public isDefaultServiceEnabled(I)Z
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isDefaultServiceEnabledLocked(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 291
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final isDefaultServiceEnabledLocked(I)Z
    .registers 2

    .line 295
    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isTemporary(I)Z
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 214
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final notifyTemporaryServiceNameChangedLocked(ILjava/lang/String;Z)V
    .registers 4

    .line 340
    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    if-eqz p0, :cond_7

    .line 341
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;->onNameResolved(ILjava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public resetTemporaryService(I)V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    sget-object v1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetting temporary service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 257
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 259
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3e

    .line 260
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iput-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    .line 263
    :cond_3e
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->notifyTemporaryServiceNameChangedLocked(ILjava/lang/String;Z)V

    .line 265
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public setDefaultServiceEnabled(IZ)Z
    .registers 7

    .line 270
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isDefaultServiceEnabledLocked(I)Z

    move-result v1

    if-ne v1, p2, :cond_2b

    .line 273
    sget-object p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultServiceEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): already "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 274
    monitor-exit v0

    return p0

    :cond_2b
    const/4 v1, 0x1

    if-eqz p2, :cond_4a

    .line 277
    sget-object p2, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disabling default service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    goto :goto_65

    .line 280
    :cond_4a
    sget-object p2, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enabling default service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 283
    :goto_65
    monitor-exit v0

    return v1

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 123
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 220
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setTemporaryServices(I[Ljava/lang/String;I)V

    return-void
.end method

.method public setTemporaryServices(I[Ljava/lang/String;I)V
    .registers 13

    .line 225
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 229
    new-instance v1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;-><init>(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Landroid/os/Looper;Landroid/os/Handler$Callback;ZI)V

    iput-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_21

    .line 242
    :cond_1e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceExpiration:J

    .line 245
    iget-object p3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    invoke-virtual {p3, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 246
    :goto_2e
    array-length p3, p2

    if-ge v2, p3, :cond_3a

    .line 247
    aget-object p3, p2, v2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->notifyTemporaryServiceNameChangedLocked(ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 250
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameworkResourcesServiceNamer[temps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    .line 302
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method
