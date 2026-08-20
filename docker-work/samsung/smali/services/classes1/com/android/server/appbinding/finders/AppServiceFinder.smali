.class public abstract Lcom/android/server/appbinding/finders/AppServiceFinder;
.super Ljava/lang/Object;
.source "AppServiceFinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TServiceType:",
        "Ljava/lang/Object;",
        "TServiceInterfaceType::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "AppBindingService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLastMessages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mTargetPackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mTargetServices:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 67
    iput-object p1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mListener:Ljava/util/function/BiConsumer;

    .line 69
    iput-object p3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TTServiceInterfaceType;"
        }
    .end annotation
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "App type: "

    .line 197
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 201
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 202
    :goto_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 203
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 204
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  User: "

    .line 205
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 207
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Package: "

    .line 210
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 214
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Service: "

    .line 215
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Message: "

    .line 220
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 224
    :cond_75
    monitor-exit v0

    return-void

    :catchall_77
    move-exception p0

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_16 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public dumpSimple(Ljava/io/PrintWriter;)V
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 230
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 231
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const-string v3, "finder,"

    .line 232
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 234
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ","

    .line 236
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 238
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ","

    .line 240
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 244
    :cond_5a
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public final findService(ILandroid/content/pm/IPackageManager;Lcom/android/server/appbinding/AppBindingConstants;)Landroid/content/pm/ServiceInfo;
    .registers 14

    .line 100
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    invoke-virtual {p0, p3}, Lcom/android/server/appbinding/finders/AppServiceFinder;->isEnabled(Lcom/android/server/appbinding/AppBindingConstants;)Z

    move-result p3

    if-nez p3, :cond_41

    .line 107
    iget-object p2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    const-string p3, "feature disabled"

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p1, "AppBindingService"

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "feature disabled"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-exit v0

    return-object v2

    .line 112
    :cond_41
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getTargetPackage(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_77

    .line 118
    iget-object p2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    const-string p3, "Target package not found"

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "AppBindingService"

    .line 119
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " u"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Target package not found"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    monitor-exit v0

    return-object v2

    .line 122
    :cond_77
    iget-object p3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getServiceAction()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getServicePermission()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getServiceClass()Ljava/lang/Class;

    move-result-object v7

    move v4, p1

    move-object v8, p2

    move-object v9, p3

    .line 125
    invoke-static/range {v3 .. v9}, Lcom/android/server/appbinding/AppBindingUtils;->findService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/pm/IPackageManager;Ljava/lang/StringBuilder;)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    if-nez p2, :cond_a1

    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 136
    iget-object p0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    monitor-exit v0

    return-object v2

    .line 144
    :cond_a1
    invoke-virtual {p0, p2}, Lcom/android/server/appbinding/finders/AppServiceFinder;->validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b3

    .line 146
    iget-object p0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p0, "AppBindingService"

    .line 147
    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    monitor-exit v0

    return-object v2

    .line 152
    :cond_b3
    iget-object p3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    const-string v1, "Valid service found"

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    iget-object p0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    monitor-exit v0

    return-object p2

    :catchall_c1
    move-exception p0

    .line 155
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_3 .. :try_end_c3} :catchall_c1

    throw p0
.end method

.method public abstract getAppDescription()Ljava/lang/String;
.end method

.method public abstract getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I
.end method

.method public abstract getServiceAction()Ljava/lang/String;
.end method

.method public abstract getServiceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTServiceType;>;"
        }
    .end annotation
.end method

.method public abstract getServicePermission()Ljava/lang/String;
.end method

.method public abstract getTargetPackage(I)Ljava/lang/String;
.end method

.method public isEnabled(Lcom/android/server/appbinding/AppBindingConstants;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 89
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 90
    iget-object p0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 91
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public startMonitoring()V
    .registers 1

    return-void
.end method

.method public validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method
