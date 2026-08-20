.class Lcom/android/internal/telephony/cat/CatBIPManager$1;
.super Ljava/lang/Object;
.source "CatBIPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

.field final synthetic blacklist val$b:Lcom/android/internal/telephony/cat/CatBIPConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .registers 3

    .line 521
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->val$b:Lcom/android/internal/telephony/cat/CatBIPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 525
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mcontinueProcessingOpenChannel(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    .line 526
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fputmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;Z)V

    goto :goto_32

    .line 528
    :cond_29
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->val$b:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mopenChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    :goto_32
    return-void
.end method
