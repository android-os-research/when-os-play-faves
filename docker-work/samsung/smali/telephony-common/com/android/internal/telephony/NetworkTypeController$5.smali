.class Lcom/android/internal/telephony/NetworkTypeController$5;
.super Landroid/database/ContentObserver;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Landroid/os/Handler;)V
    .registers 3

    .line 3126
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$5;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 5

    .line 3129
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$5;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$5;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 3130
    invoke-virtual {v1}, Lcom/android/internal/telephony/NetworkTypeController;->getDefaultValueOfNetworkStatus()I

    move-result v1

    const-string v2, "mobile_network_status"

    .line 3129
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmMobileNetworkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 3131
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$5;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMobileNetworkStatusObserver onChange(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$5;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmMobileNetworkStatus(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3133
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$5;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 3135
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$5;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method
