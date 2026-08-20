.class public Lcom/android/server/isrb/IsrbManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "IsrbManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/isrb/IsrbManagerServiceImpl;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 135
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_77

    iget-object p2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p2}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmIsSystemErrPopup(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Z

    move-result p2

    if-nez p2, :cond_77

    .line 136
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->isNetworkReady()Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmErrAlertNum(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result p1

    const/16 p2, 0xc

    if-lt p1, p2, :cond_27

    return-void

    .line 139
    :cond_27
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p1

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 p2, 0xb

    .line 141
    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmPreviousTipsYear(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result v1

    if-ne v0, v1, :cond_71

    const/4 v0, 0x2

    .line 144
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmPreviousTipsMonth(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result v1

    if-ne v0, v1, :cond_71

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmPreviousTipsDate(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result v0

    if-ne p1, v0, :cond_71

    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmPreviousTipsTime(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result p1

    add-int/lit8 p1, p1, 0x6

    if-ge p2, p1, :cond_71

    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmPreviousTipsTime(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result p1

    if-ge p2, p1, :cond_9e

    .line 146
    :cond_71
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V

    goto :goto_9e

    :cond_77
    const-string p2, "com.samsung.isrb.SYSTEM_UPDATE"

    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 154
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.intent.action.LAUNCH_SOFTWARE_UPDATE_NON_SYSTEM"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10000020

    .line 155
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Landroid/content/Context;

    move-result-object p0

    const-string p2, "com.samsung.permission.LAUNCH_SOFTWARE_UPDATE"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "IsrbManagerServiceImpl"

    const-string p1, "Sent SW update broadcast to FOTA modul."

    .line 158
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    :goto_9e
    return-void
.end method
