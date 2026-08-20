.class Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;
.super Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification$Stub;
.source "SemSupplicantStaIfaceHalHidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IServiceNotification.onRegistration for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " preexisting="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_35
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$minitSupplicantService(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Z

    move-result p1

    if-nez p1, :cond_4f

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p2, "initializing ISupplicant failed."

    .line 108
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmDeathRecipientCookie(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$msupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;J)V

    .line 110
    monitor-exit v0

    return-void

    :cond_4f
    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p2, "Completed initialization of ISupplicant."

    .line 112
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmISupplicantCallback(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantHalCallback;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$mregisterSupplicantHalCallback(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback;)Z

    move-result p1

    if-nez p1, :cond_74

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p2, "registering ISupplicantCallback failed."

    .line 115
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmDeathRecipientCookie(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$msupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;J)V

    .line 117
    monitor-exit v0

    return-void

    :cond_74
    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p2, "Completed registration of ISupplicantCallback."

    .line 119
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$minitSehSupplicantService(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Z

    move-result p1

    if-nez p1, :cond_95

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p2, "initializing ISehSupplicant failed."

    .line 122
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmSehSupplicantDeathRecipientCookie(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$msehSupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;J)V

    .line 124
    monitor-exit v0

    return-void

    :cond_95
    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p2, "Completed initialization of ISehSupplicant."

    .line 126
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmWifiMonitor(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantServiceRegistrationEvent()V

    .line 129
    monitor-exit v0

    return-void

    :catchall_a7
    move-exception p0

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_7 .. :try_end_a9} :catchall_a7

    throw p0
.end method
