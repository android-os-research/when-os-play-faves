.class Lcom/android/internal/telephony/ImsSmsDispatcher$2;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(I)V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsConnected imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 148
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmRegisteredTransportType(Lcom/android/internal/telephony/ImsSmsDispatcher;I)V

    .line 150
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->setPreVolte(Z)V

    .line 151
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public whitelist onRegistering(I)V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsProgressing imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 159
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 160
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmRegisteredTransportType(Lcom/android/internal/telephony/ImsSmsDispatcher;I)V

    .line 161
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsDisconnected imsReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 168
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmRegisteredTransportType(Lcom/android/internal/telephony/ImsSmsDispatcher;I)V

    .line 170
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    throw p0
.end method
