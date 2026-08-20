.class public Lcom/android/server/profcollect/ProfcollectForwardingService$2;
.super Landroid/os/UpdateEngineCallback;
.source "ProfcollectForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/profcollect/ProfcollectForwardingService;->registerOTAObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$2;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Landroid/os/UpdateEngineCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .registers 2

    return-void
.end method

.method public onStatusUpdate(IF)V
    .registers 5

    .line 289
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received OTA status update, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ProfcollectForwardingService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p2, 0x6

    if-ne p1, p2, :cond_2c

    .line 295
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$2;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$mpackProfileReport(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    :cond_2c
    return-void
.end method
