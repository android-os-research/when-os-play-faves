.class public Lcom/android/server/net/NetworkPolicyManagerService$21;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 7828
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const-string p1, "NetworkPolicy"

    const-string/jumbo v0, "mTetheringWarningObserver"

    .line 7831
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7832
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3ef

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 7833
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 7834
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
