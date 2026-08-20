.class public Lcom/android/server/UiModeManagerService$4;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


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

    .line 316
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .registers 4

    .line 319
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 320
    :try_start_7
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_41

    .line 321
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mshouldApplyAutomaticChangesImmediately(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmAutoModeChangeImmediately(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_2a

    .line 327
    :cond_24
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V

    goto :goto_41

    .line 322
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmAutoModeChangeImmediately(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 323
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Twilight state is changed immediately after MODE_NIGHT_AUTO setting"

    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_3b
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 330
    :cond_41
    :goto_41
    monitor-exit p1

    return-void

    :catchall_43
    move-exception p0

    monitor-exit p1
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw p0
.end method
