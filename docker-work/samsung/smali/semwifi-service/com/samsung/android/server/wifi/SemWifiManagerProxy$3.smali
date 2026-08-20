.class Lcom/samsung/android/server/wifi/SemWifiManagerProxy$3;
.super Ljava/lang/Object;
.source "SemWifiManagerProxy.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 2

    .line 543
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .registers 3

    .line 545
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$fputmAutoJoinEnabled(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    .line 546
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$fputmIsQueryAutoJoinMethodResult(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 543
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$3;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
