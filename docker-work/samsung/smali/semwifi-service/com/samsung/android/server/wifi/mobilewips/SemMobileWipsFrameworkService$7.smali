.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;
.super Ljava/lang/Object;
.source "SemMobileWipsFrameworkService.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 2

    .line 579
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendDnsResponse(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 597
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->onDnsResponses(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public sendScanResult(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
            ">;)V"
        }
    .end annotation

    .line 592
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->onScanResults(Ljava/util/List;)V

    return-void
.end method

.method public sendServiceHandlerMessage(Landroid/os/Message;)V
    .registers 2

    .line 587
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendServiceMessage(Landroid/os/Message;)V
    .registers 2

    .line 582
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$msendMessage(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Message;)V

    return-void
.end method
