.class public Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkPolicyCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

    .line 957
    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    .line 958
    iput-object p1, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 959
    iput-object p2, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

    .line 960
    return-void
.end method


# virtual methods
.method public blacklist onBlockedReasonChanged(III)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "oldBlockedReasons"    # I
    .param p3, "newBlockedReasons"    # I

    .line 964
    if-eq p2, p3, :cond_9

    .line 965
    iget-object v0, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

    invoke-static {v0, v1, p1, p3}, Landroid/net/NetworkPolicyManager;->-$$Nest$smdispatchOnUidBlockedReasonChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;II)V

    .line 967
    :cond_9
    return-void
.end method
