.class Lcom/samsung/android/wfd/ConnectionMode$1;
.super Ljava/lang/Object;
.source "ConnectionMode.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wfd/ConnectionMode;->registerDisplayChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/wfd/ConnectionMode;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/wfd/ConnectionMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/wfd/ConnectionMode;

    .line 105
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "i"    # I

    .line 116
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 108
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v0, v0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v0, v0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    if-ne p1, v0, :cond_19

    .line 109
    const-string v0, "ConnectionMode"

    const-string v1, "appcast display changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayValue()V

    .line 112
    :cond_19
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2
    .param p1, "i"    # I

    .line 120
    return-void
.end method
