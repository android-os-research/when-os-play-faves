.class public Lcom/android/server/wm/VrController$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "VrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/VrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/VrController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/VrController;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .registers 6

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {v0}, Lcom/android/server/wm/VrController;->-$$Nest$fgetmGlobalAmLock(Lcom/android/server/wm/VrController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    .line 119
    :try_start_b
    iget-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    const/4 v3, 0x3

    invoke-static {p1, v2, v3, v1}, Lcom/android/server/wm/VrController;->-$$Nest$msetVrRenderThreadLocked(Lcom/android/server/wm/VrController;IIZ)I

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {p0}, Lcom/android/server/wm/VrController;->-$$Nest$fgetmVrState(Lcom/android/server/wm/VrController;)I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/android/server/wm/VrController;->-$$Nest$fputmVrState(Lcom/android/server/wm/VrController;I)V

    goto :goto_2d

    .line 122
    :cond_1d
    iget-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {p1, v2, v1}, Lcom/android/server/wm/VrController;->-$$Nest$msetPersistentVrRenderThreadLocked(Lcom/android/server/wm/VrController;IZ)I

    .line 123
    iget-object p0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {p0}, Lcom/android/server/wm/VrController;->-$$Nest$fgetmVrState(Lcom/android/server/wm/VrController;)I

    move-result p1

    and-int/lit8 p1, p1, -0x3

    invoke-static {p0, p1}, Lcom/android/server/wm/VrController;->-$$Nest$fputmVrState(Lcom/android/server/wm/VrController;I)V

    .line 125
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw p0
.end method
