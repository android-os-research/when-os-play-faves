.class public Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
.super Landroid/os/Handler;
.source "DirEncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirEncryptServiceHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->this$0:Lcom/android/server/DirEncryptService;

    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->this$0:Lcom/android/server/DirEncryptService;

    invoke-static {p0}, Lcom/android/server/DirEncryptService;->-$$Nest$fgetmHelper(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->doHandleMessage(Landroid/os/Message;)V

    return-void
.end method
