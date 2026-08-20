.class Lcom/android/internal/telephony/NetworkTypeController$2;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/NetworkTypeController;->parseCarrierConfigs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 623
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$2;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onNrAdvancedCapableByPcoChanged(Z)V
    .registers 5

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$2;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNrAdvancedAllowedByPco="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$2;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 629
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$2;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method
