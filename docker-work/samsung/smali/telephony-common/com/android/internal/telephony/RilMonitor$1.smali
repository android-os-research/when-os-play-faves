.class Lcom/android/internal/telephony/RilMonitor$1;
.super Ljava/lang/Object;
.source "RilMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RilMonitor;->getRilStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/RilMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/RilMonitor;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/RilMonitor$1;->this$0:Lcom/android/internal/telephony/RilMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/RilMonitor$1;->this$0:Lcom/android/internal/telephony/RilMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/RilMonitor;->-$$Nest$fgetmSemCi(Lcom/android/internal/telephony/RilMonitor;)Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/RilMonitor$1;->this$0:Lcom/android/internal/telephony/RilMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->getRilStatus(Landroid/os/Message;)V

    .line 161
    iget-object p0, p0, Lcom/android/internal/telephony/RilMonitor$1;->this$0:Lcom/android/internal/telephony/RilMonitor;

    const-string v0, "getRilStatus: done"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->-$$Nest$mlogv(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V

    return-void
.end method
