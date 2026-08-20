.class public Lcom/android/server/vr/XrDisplayManager$1;
.super Ljava/lang/Object;
.source "XrDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/XrDisplayManager;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/XrDisplayManager;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrDisplayManager;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2d

    .line 40
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmDisplayManager(Lcom/android/server/vr/XrDisplayManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 42
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$misMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 43
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fputmMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)V

    .line 46
    :cond_1c
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 47
    iget-object p0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {p0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;->onXrDisplayAdded(I)V

    :cond_2d
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_25

    .line 65
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 66
    iget-object p0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {p0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;->onXrDisplayChanged(I)V

    :cond_25
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_26

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$misMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 55
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fputmMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)V

    .line 57
    :cond_26
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 58
    iget-object p0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-static {p0}, Lcom/android/server/vr/XrDisplayManager;->-$$Nest$fgetmOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;->onXrDisplayRemoved(I)V

    :cond_37
    return-void
.end method
