.class Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHalAidlImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;


# direct methods
.method public static synthetic $r8$lambda$3yE-myisiZ7DByuCwGUK6J1w3Sk(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;->lambda$binderDied$0()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)V

    return-void
.end method

.method private synthetic lambda$binderDied$0()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v2, "ISupplicant binder died."

    .line 106
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->-$$Nest$msupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)V

    .line 108
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
