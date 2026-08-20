.class public Lcom/android/server/logcat/LogAccessDialogActivity$1;
.super Landroid/os/Handler;
.source "LogAccessDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/logcat/LogAccessDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/logcat/LogAccessDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/server/logcat/LogAccessDialogActivity;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 138
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_21

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-static {p1}, Lcom/android/server/logcat/LogAccessDialogActivity;->-$$Nest$fgetmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 141
    iget-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-static {p1}, Lcom/android/server/logcat/LogAccessDialogActivity;->-$$Nest$fgetmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 142
    iget-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/logcat/LogAccessDialogActivity;->-$$Nest$fputmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;Landroid/app/AlertDialog;)V

    .line 143
    iget-object p0, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-static {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->-$$Nest$mdeclineLogAccess(Lcom/android/server/logcat/LogAccessDialogActivity;)V

    :cond_21
    :goto_21
    return-void
.end method
