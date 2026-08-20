.class public Lcom/android/server/am/UserController$6;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->startUserInternal(IZLandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;)V
    .registers 2

    .line 2032
    iput-object p1, p0, Lcom/android/server/am/UserController$6;->this$0:Lcom/android/server/am/UserController;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
