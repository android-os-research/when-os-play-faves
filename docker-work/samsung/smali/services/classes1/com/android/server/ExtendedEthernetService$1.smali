.class public Lcom/android/server/ExtendedEthernetService$1;
.super Ljava/lang/Object;
.source "ExtendedEthernetService.java"

# interfaces
.implements Landroid/net/EthernetManager$TetheredInterfaceCallback;


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

    .line 75
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService$1;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Ljava/lang/String;)V
    .registers 5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TetheredInterfaceCallback onAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExtendedEthernetService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService$1;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p1}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmContext(Lcom/android/server/ExtendedEthernetService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ETHERNET_TETHERING_MODE"

    .line 82
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    return-void

    .line 86
    :cond_30
    new-instance p1, Lcom/android/server/ExtendedEthernetService$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/ExtendedEthernetService$1$1;-><init>(Lcom/android/server/ExtendedEthernetService$1;)V

    .line 93
    new-instance v0, Landroid/net/TetheringManager$TetheringRequest$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetService$1;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {v1}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmTetheringManager(Lcom/android/server/ExtendedEthernetService;)Landroid/net/TetheringManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService$1;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p0}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmHandler(Lcom/android/server/ExtendedEthernetService;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/ExtendedEthernetService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/ExtendedEthernetService$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, p1}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    return-void
.end method

.method public onUnavailable()V
    .registers 2

    const-string p0, "ExtendedEthernetService"

    const-string v0, "TetheredInterfaceCallback onUnavailable"

    .line 99
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
