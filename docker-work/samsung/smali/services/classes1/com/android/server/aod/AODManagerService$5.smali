.class public Lcom/android/server/aod/AODManagerService$5;
.super Landroid/database/ContentObserver;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;->registerAODClockContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 1063
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 1068
    :cond_3
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetAOD_SETTING_CLOCK_TYPE_URI_PARSED()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1069
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mgetAODClockType(Lcom/android/server/aod/AODManagerService;)I

    move-result p2

    div-int/lit16 p2, p2, 0x2710

    const/4 v0, 0x1

    if-ne p2, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-static {p1, v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fputmIsAODAnalogLiveClock(Lcom/android/server/aod/AODManagerService;Z)V

    .line 1070
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange: mIsAODAnalogLiveClock : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmIsAODAnalogLiveClock(Lcom/android/server/aod/AODManagerService;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void
.end method
