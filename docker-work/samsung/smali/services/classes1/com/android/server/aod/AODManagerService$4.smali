.class public Lcom/android/server/aod/AODManagerService$4;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmDisplayManager(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 249
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmDisplayManager(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1f

    if-nez p1, :cond_1f

    .line 252
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mupdateDefaultDisplayState(Lcom/android/server/aod/AODManagerService;I)V

    :cond_1f
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
