.class public Lcom/android/server/ExtendedEthernetService$3;
.super Landroid/database/ContentObserver;
.source "ExtendedEthernetService.java"


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
.method public constructor <init>(Lcom/android/server/ExtendedEthernetService;Landroid/os/Handler;)V
    .registers 3

    .line 117
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService$3;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 120
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService$3;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p1}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmContext(Lcom/android/server/ExtendedEthernetService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "eth_disabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    .line 122
    :goto_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ETH_DISABLED is changed to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ExtendedEthernetService"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2f

    return-void

    .line 126
    :cond_2f
    :try_start_2f
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService$3;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p1}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmNMService(Lcom/android/server/ExtendedEthernetService;)Landroid/os/INetworkManagementService;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object p1

    .line 127
    array-length v0, p1

    :goto_3a
    if-ge v1, v0, :cond_57

    aget-object v2, p1, v1

    .line 128
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetService$3;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {v3}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmIfaceMatch(Lcom/android/server/ExtendedEthernetService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto :goto_54

    .line 129
    :cond_4b
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetService$3;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {v3}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmNMService(Lcom/android/server/ExtendedEthernetService;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_54} :catch_57
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_54} :catch_57

    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :catch_57
    :cond_57
    return-void
.end method
