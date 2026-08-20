.class public final Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;
.super Ljava/util/TimerTask;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResetResourceStatusTask"
.end annotation


# instance fields
.field public expired:Z

.field public final synthetic this$0:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;)V
    .registers 2

    .line 785
    iput-object p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->this$0:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    .line 786
    iput-boolean p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->expired:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;-><init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;)V

    return-void
.end method


# virtual methods
.method public hasExpired()Z
    .registers 1

    .line 795
    iget-boolean p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->expired:Z

    return p0
.end method

.method public run()V
    .registers 4

    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->expired:Z

    new-array v0, v0, [Ljava/lang/Object;

    .line 790
    iget-object v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->this$0:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    invoke-static {v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->-$$Nest$fgetname(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SystemResource[%s]: reset status"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 791
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->this$0:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    invoke-static {p0, v2}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->-$$Nest$msetStatus(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;I)V

    .line 792
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->applyNewSystemStatus()V

    return-void
.end method
