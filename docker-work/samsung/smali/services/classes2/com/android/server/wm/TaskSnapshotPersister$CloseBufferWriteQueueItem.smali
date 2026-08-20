.class public Lcom/android/server/wm/TaskSnapshotPersister$CloseBufferWriteQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseBufferWriteQueueItem"
.end annotation


# instance fields
.field public mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field public final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/hardware/HardwareBuffer;)V
    .registers 4

    .line 497
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$CloseBufferWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem-IA;)V

    .line 498
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotPersister$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-void
.end method


# virtual methods
.method public write()V
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_a

    .line 504
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    :cond_a
    return-void
.end method
