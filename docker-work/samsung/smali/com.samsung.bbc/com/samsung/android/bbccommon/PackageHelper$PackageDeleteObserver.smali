.class public Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bbccommon/PackageHelper;
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

    .line 156
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    const/4 v0, -0x1

    .line 157
    iput v0, p0, Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;->result:I

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;->finished:Z

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;->pkgName:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;->mutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;->pkgName:Ljava/lang/String;

    .line 166
    iput p2, p0, Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;->result:I

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;->finished:Z

    .line 168
    iget-object p0, p0, Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;->mutex:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 169
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method
