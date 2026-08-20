.class public Lcom/android/server/enterprise/utils/ConstrainedState$2;
.super Ljava/lang/Object;
.source "ConstrainedState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/utils/ConstrainedState;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState$2;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_23

    const-string/jumbo v1, "notification"

    .line 103
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState$2;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->-$$Nest$mupdateConstrainedStateData(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V

    move v0, v2

    goto :goto_1

    :cond_18
    const-wide/16 v1, 0x3e8

    .line 110
    :try_start_1a
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_1

    :catch_1e
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_23
    return-void
.end method
