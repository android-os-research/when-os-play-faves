.class public final Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field public mAppToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .registers 3

    .line 725
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    .line 726
    iput-object p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 3

    .line 731
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 732
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    invoke-static {v1, p0}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$mhandleMediaProjectionStoppedLocked(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 733
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0
.end method
