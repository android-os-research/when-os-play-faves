.class public Lcom/android/server/RCPManagerService$3;
.super Landroid/os/ContainerStateReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 242
    :try_start_0
    iget-object p0, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {p0, p2}, Lcom/android/server/RCPManagerService;->-$$Nest$mscanAndStartBridgeProxy(Lcom/android/server/RCPManagerService;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception p0

    .line 244
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    const-string/jumbo p1, "onRemovePersona"

    .line 256
    invoke-static {p1}, Lcom/android/server/RCPManagerService;->-$$Nest$smcheckCallerPermissionFor(Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onRemovePersona called for  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p0, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    return-void
.end method

.method public onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    const-string/jumbo p1, "onResetPersona"

    .line 263
    invoke-static {p1}, Lcom/android/server/RCPManagerService;->-$$Nest$smcheckCallerPermissionFor(Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onResetPersona called for  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p0, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    const-string/jumbo p0, "onPersonaActive"

    .line 250
    invoke-static {p0}, Lcom/android/server/RCPManagerService;->-$$Nest$smcheckCallerPermissionFor(Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " onPersonaActive called for  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
