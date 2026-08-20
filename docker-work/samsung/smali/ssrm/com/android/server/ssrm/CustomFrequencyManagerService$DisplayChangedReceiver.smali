.class Lcom/android/server/ssrm/CustomFrequencyManagerService$DisplayChangedReceiver;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1751
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DisplayChangedReceiver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1753
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 1760
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DisplayChangedReceiver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$mgetRefreshRate(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputcurFps(Lcom/android/server/ssrm/CustomFrequencyManagerService;I)V

    .line 1762
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1756
    return-void
.end method
