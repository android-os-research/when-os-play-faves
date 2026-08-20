.class public Lcom/android/server/display/OverlayDisplayAdapter$1;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/OverlayDisplayAdapter;->registerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    .line 167
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$1$1;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 168
    invoke-virtual {v3}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/OverlayDisplayAdapter$1$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$1;Landroid/os/Handler;)V

    const/4 v3, 0x1

    .line 166
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$mupdateOverlayDisplayDevices(Lcom/android/server/display/OverlayDisplayAdapter;)V

    return-void
.end method
