.class public Lcom/android/server/desktopmode/DesktopModeService$4;
.super Landroid/database/ContentObserver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V
    .registers 3

    .line 1137
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 1140
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1141
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$minitializeStates(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 1142
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1143
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmUserSetupCompleteObserver(Lcom/android/server/desktopmode/DesktopModeService;Landroid/database/ContentObserver;)V

    return-void
.end method
