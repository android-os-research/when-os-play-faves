.class public Lcom/android/server/UiModeManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 510
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    if-nez p1, :cond_11

    .line 511
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistComputedNightMode(Lcom/android/server/UiModeManagerService;I)V

    :cond_11
    return-void
.end method
