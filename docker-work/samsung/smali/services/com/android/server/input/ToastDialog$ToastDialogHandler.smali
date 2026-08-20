.class public final Lcom/android/server/input/ToastDialog$ToastDialogHandler;
.super Landroid/os/Handler;
.source "ToastDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/ToastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ToastDialogHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/ToastDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/input/ToastDialog;Landroid/os/Looper;)V
    .registers 4

    .line 138
    iput-object p1, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    :pswitch_5
    goto :goto_3e

    .line 166
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 167
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 168
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 169
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 170
    iget-object p0, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    invoke-static {p0, v1, p1, v0}, Lcom/android/server/input/ToastDialog;->-$$Nest$mshowAlertDialogInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3e

    .line 159
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 160
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 161
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 162
    iget-object p0, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    invoke-static {p0, v0, p1}, Lcom/android/server/input/ToastDialog;->-$$Nest$mshowAlertDialogWKSInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 146
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v0}, Lcom/android/server/input/ToastDialog;->dismissAlertDialogWKS()V

    .line 153
    :pswitch_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 154
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 155
    iget-object p0, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    invoke-static {p0, p1}, Lcom/android/server/input/ToastDialog;->-$$Nest$mshowToastInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;)V

    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_5
        :pswitch_5
        :pswitch_1a
        :pswitch_6
    .end packed-switch
.end method
