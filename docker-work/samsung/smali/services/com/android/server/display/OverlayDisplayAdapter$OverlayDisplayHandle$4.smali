.class public Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 596
    :try_start_9
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fgetmWindow(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;

    move-result-object v1

    if-nez v1, :cond_13

    .line 597
    monitor-exit v0

    return-void

    .line 599
    :cond_13
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fgetmModes(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fgetmActiveMode(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 600
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fgetmWindow(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;

    move-result-object p0

    .line 601
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_36

    .line 602
    iget v0, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    iget v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/display/OverlayDisplayWindow;->resize(III)V

    return-void

    :catchall_36
    move-exception p0

    .line 601
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method
