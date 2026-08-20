.class Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;
.super Landroid/os/UEventObserver;
.source "CpuLoadingObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/cpuloading/CpuLoadingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUEventObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/cpuloading/CpuLoadingObserver;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/cpuloading/CpuLoadingObserver;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;->this$0:Lcom/mediatek/cpuloading/CpuLoadingObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/cpuloading/CpuLoadingObserver;Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;-><init>(Lcom/mediatek/cpuloading/CpuLoadingObserver;)V

    return-void
.end method


# virtual methods
.method public blacklist onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 212
    const-string v0, "over"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "over":Ljava/lang/String;
    const-string v1, "specify_over"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "specify_over":Ljava/lang/String;
    const-string v2, "1"

    if-eqz v0, :cond_21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 215
    iget-object v2, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;->this$0:Lcom/mediatek/cpuloading/CpuLoadingObserver;

    invoke-static {v2}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->-$$Nest$fgetmObserver(Lcom/mediatek/cpuloading/CpuLoadingObserver;)Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;->onHighCpuLoading(I)V

    goto :goto_36

    .line 216
    :cond_21
    if-eqz v1, :cond_36

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 217
    iget-object v2, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;->this$0:Lcom/mediatek/cpuloading/CpuLoadingObserver;

    invoke-static {v2}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->-$$Nest$fgetmObserver(Lcom/mediatek/cpuloading/CpuLoadingObserver;)Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->-$$Nest$sfgetSPECIFY_RELEASE_TARGET()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;->onHighCpuLoading(I)V

    .line 219
    :cond_36
    :goto_36
    return-void
.end method
