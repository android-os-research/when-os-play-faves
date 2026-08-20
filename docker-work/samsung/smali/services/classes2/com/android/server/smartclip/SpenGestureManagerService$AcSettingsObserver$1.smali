.class public Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;Landroid/os/Handler;)V
    .registers 3

    .line 1264
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 1267
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "pen_digitizer_enabled"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 1268
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    if-ne p1, v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-static {p0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$monSpenDigitizerOnOffChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    return-void
.end method
