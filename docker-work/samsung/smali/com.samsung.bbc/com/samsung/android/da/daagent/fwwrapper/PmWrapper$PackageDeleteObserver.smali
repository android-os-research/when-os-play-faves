.class public Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PmWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field public finished:Z

.field public final mutex:Ljava/lang/Object;

.field public pkgName:Ljava/lang/String;

.field public result:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 224
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    const/4 v0, -0x1

    .line 225
    iput v0, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->result:I

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->finished:Z

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->pkgName:Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->mutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->pkgName:Ljava/lang/String;

    .line 237
    iput p2, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->result:I

    const-string p1, "DA_PmWrapper"

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageDeleted: pkgName="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->result:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->finished:Z

    .line 240
    iget-object p0, p0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->mutex:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method
