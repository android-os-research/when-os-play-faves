.class public Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;
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

    .line 557
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 560
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fgetmModes(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fgetmActiveMode(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 561
    new-instance v10, Lcom/android/server/display/OverlayDisplayWindow;

    .line 562
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_27

    :cond_1f
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_27
    move-object v2, v1

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fgetmName(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v5, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    iget v6, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fgetmGravity(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v7

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fgetmFlags(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    move-result-object v0

    iget-boolean v8, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    iget-object v9, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/OverlayDisplayWindow;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIZLcom/android/server/display/OverlayDisplayWindow$Listener;)V

    .line 565
    invoke-virtual {v10}, Lcom/android/server/display/OverlayDisplayWindow;->show()V

    .line 567
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 568
    :try_start_54
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {p0, v10}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$fputmWindow(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)V

    .line 569
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5b

    throw p0
.end method
