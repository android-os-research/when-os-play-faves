.class public final Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/LogicalDisplayMapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogicalDisplayListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 3907
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayGroupEventLocked(II)V
    .registers 3

    .line 3939
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msendDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V

    return-void
.end method

.method public onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .registers 3

    packed-switch p2, :pswitch_data_28

    goto :goto_27

    .line 3932
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_27

    .line 3928
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_27

    .line 3924
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplaySwappedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_27

    .line 3920
    :pswitch_16
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayRemovedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_27

    .line 3916
    :pswitch_1c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_27

    .line 3912
    :pswitch_22
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public onTraversalRequested()V
    .registers 3

    .line 3944
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3945
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 3946
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method
