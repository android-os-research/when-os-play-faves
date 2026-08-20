.class public Lcom/android/server/ExtendedEthernetService$2;
.super Ljava/lang/Object;
.source "ExtendedEthernetService.java"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ExtendedEthernetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetService;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetService;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService$2;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .registers 5

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onInterfaceStateChanged "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", state: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "ExtendedEthernetService"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService$2;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p1, p3}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fputmInterfaceMode(Lcom/android/server/ExtendedEthernetService;I)V

    .line 109
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService$2;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p1}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmInterfaceMode(Lcom/android/server/ExtendedEthernetService;)I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_38

    .line 110
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService$2;->this$0:Lcom/android/server/ExtendedEthernetService;

    const/4 p1, 0x2

    if-ne p2, p1, :cond_34

    move p3, p4

    :cond_34
    invoke-static {p0, p3}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetService;Z)V

    goto :goto_3d

    .line 112
    :cond_38
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService$2;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p0, p3}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetService;Z)V

    :goto_3d
    return-void
.end method
