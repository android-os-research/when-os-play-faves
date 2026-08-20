.class public Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;
.super Ljava/lang/Object;
.source "VirtualLockImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/VirtualLockImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GateKeeperDiedRecipient"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/VirtualLockImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/VirtualLockImpl;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;->this$0:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/VirtualLockImpl;Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;-><init>(Lcom/android/server/knox/dar/VirtualLockImpl;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;->this$0:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-static {v0}, Lcom/android/server/knox/dar/VirtualLockImpl;->-$$Nest$fgetmGateKeeperService(Lcom/android/server/knox/dar/VirtualLockImpl;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 214
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;->this$0:Lcom/android/server/knox/dar/VirtualLockImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/knox/dar/VirtualLockImpl;->-$$Nest$fputmGateKeeperService(Lcom/android/server/knox/dar/VirtualLockImpl;Landroid/service/gatekeeper/IGateKeeperService;)V

    return-void
.end method
