.class public Lcom/android/server/display/WifiDisplayController$17;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$flags:I

.field public final synthetic val$height:I

.field public final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$oldSurface:Landroid/view/Surface;

.field public final synthetic val$surface:Landroid/view/Surface;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V
    .registers 9

    .line 1204
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/WifiDisplayController$17;->val$width:I

    iput p7, p0, Lcom/android/server/display/WifiDisplayController$17;->val$height:I

    iput p8, p0, Lcom/android/server/display/WifiDisplayController$17;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1208
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    if-eqz v1, :cond_16

    :cond_8
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_25

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 1209
    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1210
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    .line 1211
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mfinish(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_3f

    .line 1212
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1213
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    .line 1214
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mfinish(Lcom/android/server/display/WifiDisplayController;)V

    .line 1217
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_98

    .line 1218
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 1219
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V

    goto :goto_7c

    .line 1220
    :cond_57
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_7c

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    if-eq v0, v1, :cond_7c

    .line 1226
    :cond_69
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$17;->val$width:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$17;->val$height:I

    iget v6, p0, Lcom/android/server/display/WifiDisplayController$17;->val$flags:I

    invoke-interface/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayChanged(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1229
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldSurface:Landroid/view/Surface;

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_98

    .line 1230
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$17;->val$width:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$17;->val$height:I

    iget v6, p0, Lcom/android/server/display/WifiDisplayController$17;->val$flags:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIILjava/lang/String;)V

    :cond_98
    return-void
.end method
