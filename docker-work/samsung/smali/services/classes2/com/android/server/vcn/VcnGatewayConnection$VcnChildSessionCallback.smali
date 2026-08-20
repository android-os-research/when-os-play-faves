.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Landroid/net/ipsec/ike/ChildSessionCallback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VcnChildSessionCallback"
.end annotation


# instance fields
.field public final mToken:I

.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V
    .registers 3

    .line 2268
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2269
    iput p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    return-void
.end method


# virtual methods
.method public onClosed()V
    .registers 4

    .line 2286
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosed for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    return-void
.end method

.method public onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 5

    .line 2292
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosedExceptionally for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2293
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    return-void
.end method

.method public onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V
    .registers 6

    .line 2298
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformCreated; Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2299
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mchildTransformCreated(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;I)V

    return-void
.end method

.method public onIpSecTransformDeleted(Landroid/net/IpSecTransform;I)V
    .registers 5

    .line 2314
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildTransformDeleted; Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; for token "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    return-void
.end method

.method public onIpSecTransformsMigrated(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 6

    .line 2306
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformsMigrated; token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2307
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mmigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public onOpened(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .registers 3

    .line 2281
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    invoke-direct {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;-><init>(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->onOpened(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method

.method public onOpened(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2275
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildOpened for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2276
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mchildOpened(Lcom/android/server/vcn/VcnGatewayConnection;ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method
