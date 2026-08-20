.class public Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;
.super Landroid/os/Handler;
.source "McfDeviceSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/continuity/McfDeviceSyncManager;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Landroid/os/Looper;)V
    .registers 3

    .line 51
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    iget v0, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$mhandleMessageWhat(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;II)V

    return-void
.end method
