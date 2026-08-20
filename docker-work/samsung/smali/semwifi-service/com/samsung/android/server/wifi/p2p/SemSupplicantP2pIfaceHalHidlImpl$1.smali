.class Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$1;
.super Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification$Stub;
.source "SemSupplicantP2pIfaceHalHidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 70
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->-$$Nest$sfgetsVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 71
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

    .line 74
    :cond_33
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->-$$Nest$minitSupplicantService(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)Z

    move-result p1

    if-nez p1, :cond_48

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p2, "Initializing ISupplicant failed."

    .line 75
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->-$$Nest$msupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)V

    goto :goto_4f

    :cond_48
    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p2, "Completed initialization of ISupplicant interfaces."

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_4f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->-$$Nest$minitSehSupplicantService(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)Z

    move-result p1

    if-nez p1, :cond_64

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p2, "initializing ISehSupplicant failed."

    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->-$$Nest$msehSupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)V

    goto :goto_6b

    :cond_64
    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p1, "Completed initialization of ISehSupplicant."

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_6b
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_7 .. :try_end_6f} :catchall_6d

    throw p0
.end method
