.class public Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;
.super Ljava/lang/Object;
.source "McfDeviceSyncManager.java"

# interfaces
.implements Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmPreconditionObserver(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/PreconditionObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->meetConditions()Z

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v1

    if-ne v1, v0, :cond_13

    return-void

    .line 96
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v1, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fputmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Z)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_5a

    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {p1, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const-wide/16 v0, 0x0

    invoke-static {p0, v2, p2, v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$msendMessageDelayed(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;IIJ)V

    goto :goto_70

    .line 103
    :cond_5a
    iget-object p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {p2, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    and-int/lit16 p1, p1, 0xf00

    if-lez p1, :cond_6b

    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    goto :goto_70

    .line 107
    :cond_6b
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$munbindMcf(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    :goto_70
    return-void
.end method

.method public onPackageReplaced(Z)V
    .registers 6

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmPreconditionObserver(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/PreconditionObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->meetConditions()Z

    move-result v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageReplaced - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v1, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fputmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Z)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v0

    if-nez v0, :cond_3d

    return-void

    .line 122
    :cond_3d
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    if-eqz p1, :cond_4d

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    goto :goto_54

    .line 126
    :cond_4d
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    :goto_54
    return-void
.end method

.method public onPackageRestarted()V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmPreconditionObserver(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/PreconditionObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->meetConditions()Z

    move-result v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageRestarted - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v1, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fputmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Z)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v0

    if-nez v0, :cond_3d

    return-void

    .line 140
    :cond_3d
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const/4 v0, 0x2

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$msendMessageDelayed(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;IIJ)V

    return-void
.end method
