.class public Lcom/android/server/pdp/PdpService$1;
.super Landroid/os/HandlerThread;
.source "PdpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pdp/PdpService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdp/PdpService;Ljava/lang/String;)V
    .registers 3

    .line 174
    iput-object p1, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    new-instance v1, Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    iget-object p0, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    invoke-static {p0}, Lcom/android/server/pdp/PdpService;->-$$Nest$fgetmSvcPdpThread(Lcom/android/server/pdp/PdpService;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;-><init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/android/server/pdp/PdpService;->-$$Nest$fputmSvcPdpHandler(Lcom/android/server/pdp/PdpService;Lcom/android/server/pdp/PdpService$SvcPdpHandler;)V

    return-void
.end method
