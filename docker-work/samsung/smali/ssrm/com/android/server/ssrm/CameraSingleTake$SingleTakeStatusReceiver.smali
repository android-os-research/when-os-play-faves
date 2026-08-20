.class Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;
.super Lcom/android/server/ssrm/common/intent/request/ASsrmRequestER;
.source "CameraSingleTake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CameraSingleTake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleTakeStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CameraSingleTake;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CameraSingleTake;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/CameraSingleTake;

    .line 47
    iput-object p1, p0, Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;->this$0:Lcom/android/server/ssrm/CameraSingleTake;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/request/ASsrmRequestER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 47
    check-cast p1, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;)V
    .registers 6
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;

    .line 50
    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;->getStatusName()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "statusName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/CameraSingleTake;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive ssrm request = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    const-string v1, "Camera_singletake"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 53
    iget-object v1, p0, Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;->this$0:Lcom/android/server/ssrm/CameraSingleTake;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;->getStatusValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/CameraSingleTake;->update(Z)V

    .line 55
    :cond_37
    return-void
.end method
