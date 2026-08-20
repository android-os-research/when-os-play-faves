.class public Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;
.super Ljava/lang/Object;
.source "IQIServiceBrokerExt.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "serviceStateListnerForIQI"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChange(Z)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {v0, p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fputmServiceRunning(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 203
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetDEBUG(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onIQIServiceChangeCallback : newServiceState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmServiceRunning(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string/jumbo p0, "running"

    goto :goto_27

    :cond_24
    const-string/jumbo p0, "stopped"

    :goto_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IQIServiceBrokerExt"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    if-eqz p1, :cond_39

    const/4 p0, 0x1

    .line 205
    invoke-static {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$smsubmitSS2S(Z)V

    :cond_39
    return-void
.end method
