.class public Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;
.super Ljava/lang/Object;
.source "NetworkLoggingHandler.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/NetworkLoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 4

    .line 82
    invoke-static {}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a batch finalization timeout alarm, finalizing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->-$$Nest$fgetmNetworkEvents(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Ljava/util/ArrayList;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pending events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    monitor-enter v0

    .line 86
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-static {v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->-$$Nest$mfinalizeBatchAndBuildAdminMessageLocked(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Landroid/os/Bundle;

    move-result-object v1

    .line 87
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_39

    if-eqz v1, :cond_38

    .line 89
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-static {p0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->-$$Nest$mnotifyDeviceOwnerOrProfileOwner(Lcom/android/server/devicepolicy/NetworkLoggingHandler;Landroid/os/Bundle;)V

    :cond_38
    return-void

    :catchall_39
    move-exception p0

    .line 87
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method
