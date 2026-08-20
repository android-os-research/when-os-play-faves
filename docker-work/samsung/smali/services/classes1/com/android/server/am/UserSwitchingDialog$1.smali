.class public Lcom/android/server/am/UserSwitchingDialog$1;
.super Landroid/os/Handler;
.source "UserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserSwitchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserSwitchingDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserSwitchingDialog;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 214
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_1c

    .line 222
    :cond_9
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    goto :goto_1c

    :cond_f
    const-string p1, "ActivityManagerUserSwitchingDialog"

    const-string/jumbo v0, "user switch window not shown in 3000 ms"

    .line 216
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    :goto_1c
    return-void
.end method
