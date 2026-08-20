.class public Lcom/android/server/pm/PersonaServiceProxy$1;
.super Landroid/os/ContainerStateReceiver;
.source "PersonaServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaServiceProxy;->registerContainerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    const-string p1, "PersonaManagerService::Proxy"

    const-string/jumbo p2, "onDeviceOwnerActivated..."

    .line 90
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fputmIsDoEnabled(Lcom/android/server/pm/PersonaServiceProxy;Z)V

    .line 92
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    return-void
.end method
