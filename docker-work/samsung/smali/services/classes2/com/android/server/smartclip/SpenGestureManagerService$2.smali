.class public Lcom/android/server/smartclip/SpenGestureManagerService$2;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 4

    .line 359
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 360
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmClearCoverOpened(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    goto :goto_21

    .line 363
    :cond_14
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmClearCoverOpened(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    .line 368
    :goto_21
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmIsPenInserted(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmIsPenInserted(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4a

    .line 369
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 370
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmClearCoverOpened(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v0

    const-string v1, "cover_opened"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$msendAirCommandStateChangeIntent(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    :cond_4a
    return-void
.end method
