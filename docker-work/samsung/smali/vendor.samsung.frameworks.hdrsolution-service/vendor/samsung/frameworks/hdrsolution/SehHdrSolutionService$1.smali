.class Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;
.super Landroid/os/Handler;
.source "SehHdrSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 41
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 44
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)I

    move-result v0

    if-lez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SehHdrSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_22
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    goto :goto_50

    .line 52
    :pswitch_28
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmHdrDisplayController(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->setHdrLayerState(Z)V

    .line 53
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmHdrDisplayNitMapper(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->setHdrLayerState(Z)V

    .line 54
    goto :goto_50

    .line 47
    :pswitch_3c
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmHdrDisplayController(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->setHdrLayerState(Z)V

    .line 48
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmHdrDisplayNitMapper(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->setHdrLayerState(Z)V

    .line 49
    nop

    .line 58
    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x64
        :pswitch_3c
        :pswitch_28
    .end packed-switch
.end method
