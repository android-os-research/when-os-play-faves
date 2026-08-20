.class Lcom/android/internal/telephony/SemServiceStateTracker$3;
.super Ljava/lang/Object;
.source "SemServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemServiceStateTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

.field final synthetic blacklist val$ar:Landroid/os/AsyncResult;

.field final synthetic blacklist val$msg:Landroid/os/Message;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/os/Message;Landroid/os/AsyncResult;)V
    .registers 4

    .line 439
    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iput-object p2, p0, Lcom/android/internal/telephony/SemServiceStateTracker$3;->val$msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/android/internal/telephony/SemServiceStateTracker$3;->val$ar:Landroid/os/AsyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$3;->val$msg:Landroid/os/Message;

    iget v2, v1, Landroid/os/Message;->arg1:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$3;->val$ar:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fgetmCi(Lcom/android/internal/telephony/SemServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fgetmAllowedNetworkTypes(Lcom/android/internal/telephony/SemServiceStateTracker;)I

    move-result p0

    invoke-interface {v1, p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V

    return-void
.end method
