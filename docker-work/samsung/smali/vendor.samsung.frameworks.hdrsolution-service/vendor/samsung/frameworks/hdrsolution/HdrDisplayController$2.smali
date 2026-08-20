.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;
.super Landroid/app/TaskStackListener;
.source "HdrDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V
    .registers 2
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    .line 85
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFocusChanged(IZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 88
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmSupportHdrSolution(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 89
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmSemMultiWindowManager(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Lcom/samsung/android/app/SemMultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v1

    invoke-static {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fputmMultiWindowMode(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;I)V

    .line 90
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmMultiWindowMode(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 92
    .local v0, "curMultiWindowOn":Z
    :goto_20
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmMultiWindowOn(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z

    move-result v1

    if-eq v1, v0, :cond_3a

    .line 93
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v1, v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fputmMultiWindowOn(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;Z)V

    .line 94
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmHdrState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 95
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-virtual {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateHdrMode()V

    .line 99
    .end local v0    # "curMultiWindowOn":Z
    :cond_3a
    return-void
.end method
