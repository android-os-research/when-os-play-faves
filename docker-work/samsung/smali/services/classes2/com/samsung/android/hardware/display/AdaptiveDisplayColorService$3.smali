.class public Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2

    .line 650
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 5

    .line 652
    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 653
    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4f

    .line 654
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getEnvironmentAdaptiveDisplayContext()Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    move-result-object p1

    .line 655
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getRed()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmAvgR(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)V

    .line 656
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getGreen()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmAvgG(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)V

    .line 657
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getBlue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmAvgB(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)V

    .line 658
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getLux()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmSumLux(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;J)V

    .line 659
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmCountSensorValue(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)V

    .line 661
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 662
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 663
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_4f
    return-void
.end method
