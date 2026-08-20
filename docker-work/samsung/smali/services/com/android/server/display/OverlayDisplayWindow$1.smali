.class public Lcom/android/server/display/OverlayDisplayWindow$1;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

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

    .line 308
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fgetmDefaultDisplay(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_30

    .line 309
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {p1}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$mupdateDefaultDisplayInfo(Lcom/android/server/display/OverlayDisplayWindow;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 310
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {p1}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    .line 311
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {p1}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fgetmListener(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {p0}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fgetmDefaultDisplayInfo(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->state:I

    invoke-interface {p1, p0}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onStateChanged(I)V

    goto :goto_30

    .line 313
    :cond_2b
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    :cond_30
    :goto_30
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fgetmDefaultDisplay(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 321
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    :cond_11
    return-void
.end method
