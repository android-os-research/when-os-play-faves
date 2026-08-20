.class public Lcom/android/server/display/AutomaticBrightnessController$3;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    .line 2025
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2028
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmProximitySensorEnabled(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmPendingProximity(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 2030
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmPendingProximity(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmProximity(Lcom/android/server/display/AutomaticBrightnessController;I)V

    :cond_1a
    return-void
.end method
