.class public Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;
.super Landroid/os/Handler;
.source "SamsungAlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/SamsungAlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SamsungAlarmHandler"
.end annotation


# static fields
.field public static final SEND_ALARM_CLOCK_CHANGED:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/SamsungAlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/SamsungAlarmManagerService;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/alarm/SamsungAlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 143
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_13

    .line 145
    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/alarm/SamsungAlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/alarm/SamsungAlarmManagerService;->-$$Nest$sfgetALARM_CLOCK_CHANGED_INTENT()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_13
    return-void
.end method
