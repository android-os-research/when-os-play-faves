.class public Lcom/android/server/ibs/sqd/IbsQuickDim$3;
.super Landroid/app/IProcessObserver$Stub;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sqd/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6

    .line 122
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickdimEnable(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmScreenOn(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmUiControlEnabled(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmCharging(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p1

    if-eqz p1, :cond_22

    goto/16 :goto_a5

    .line 124
    :cond_22
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmLock(Lcom/android/server/ibs/sqd/IbsQuickDim;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 125
    :try_start_29
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 126
    monitor-exit p1

    return-void

    :cond_34
    if-eqz p3, :cond_a0

    .line 128
    iget-object p3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-object p3, p3, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x4

    const/4 v0, 0x3

    if-eqz p2, :cond_81

    .line 129
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result p2

    if-eq p2, v0, :cond_a0

    .line 130
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p2, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 131
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetDEBUG(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p2

    if-eqz p2, :cond_77

    const-string p2, "IbsQuickDim"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " stop dim detect because fg click mQuickDimMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_77
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQkDimHandler(Lcom/android/server/ibs/sqd/IbsQuickDim;)Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a0

    .line 135
    :cond_81
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result p2

    if-eq p2, v0, :cond_91

    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result p2

    if-ne p2, p3, :cond_a0

    .line 136
    :cond_91
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const/4 p3, 0x2

    invoke-static {p2, p3}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 137
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQkDimHandler(Lcom/android/server/ibs/sqd/IbsQuickDim;)Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    :cond_a0
    :goto_a0
    monitor-exit p1

    return-void

    :catchall_a2
    move-exception p0

    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_29 .. :try_end_a4} :catchall_a2

    throw p0

    :cond_a5
    :goto_a5
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    return-void
.end method
