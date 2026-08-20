.class Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIB2for5GIconObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2

    .line 3149
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 3150
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4

    .line 3154
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkTypeController;->getSIB2for5GIcon()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmSib2For5GIcon(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 3155
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIB2for5GIconObserver onChange(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmSib2For5GIcon(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3157
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method
