.class public Lcom/android/server/ibs/IntelligentBatterySaverGather$1;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverGather.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverGather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    if-nez p1, :cond_15

    .line 36
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    monitor-enter p1

    .line 37
    :try_start_5
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->-$$Nest$fgetmIBSService(Lcom/android/server/ibs/IntelligentBatterySaverGather;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateDisplayLocked()V

    .line 38
    monitor-exit p1

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
