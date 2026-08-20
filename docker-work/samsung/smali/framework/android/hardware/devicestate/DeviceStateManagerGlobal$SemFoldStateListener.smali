.class Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemFoldStateListener"
.end annotation


# instance fields
.field private blacklist mFolded:Ljava/lang/Boolean;

.field blacklist mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

.field private blacklist mTableMode:Ljava/lang/Boolean;

.field final synthetic blacklist this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .param p2, "listener"    # Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 417
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 419
    return-void
.end method


# virtual methods
.method public blacklist onStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .line 423
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    if-ne p1, v1, :cond_7

    goto :goto_9

    :cond_7
    move v2, v0

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v1

    .line 424
    .local v2, "folded":Z
    :goto_a
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mFolded:Ljava/lang/Boolean;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_1f

    .line 425
    :cond_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mFolded:Ljava/lang/Boolean;

    .line 426
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/view/SemWindowManager$FoldStateListener;->onFoldStateChanged(Z)V

    .line 429
    :cond_1f
    const/4 v3, 0x2

    if-ne p1, v3, :cond_23

    move v0, v1

    .line 430
    .local v0, "tableMode":Z
    :cond_23
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mTableMode:Ljava/lang/Boolean;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_38

    .line 431
    :cond_2d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mTableMode:Ljava/lang/Boolean;

    .line 432
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/view/SemWindowManager$FoldStateListener;->onTableModeChanged(Z)V

    .line 434
    :cond_38
    return-void
.end method
