.class public Lcom/android/server/desktopmode/TouchpadManager$5;
.super Landroid/database/ContentObserver;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;Landroid/os/Handler;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$5;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 107
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$5;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$5;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$misNavBarGestureEnabled(Lcom/android/server/desktopmode/TouchpadManager;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/desktopmode/IStateManager;->setNavBarGestureEnabled(Z)V

    return-void
.end method
