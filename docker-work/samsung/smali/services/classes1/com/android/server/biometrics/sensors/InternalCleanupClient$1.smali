.class public Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;
.super Ljava/lang/Object;
.source "InternalCleanupClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 7

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmCurrentTask(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    .line 76
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getUnknownHALTemplates()Ljava/util/List;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate onClientFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", success: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4d

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " templates for deletion"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_4d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 84
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmUnknownHALTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmCurrentTask(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;-><init>(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 89
    :cond_76
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/log/BiometricLogger;->getStatsModality()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8b

    .line 90
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    .line 95
    :cond_8b
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmUnknownHALTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_a4

    .line 100
    :cond_9f
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$mstartCleanupUnknownHalTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    :goto_a4
    return-void
.end method
