.class public Lcom/android/server/am/AppExitInfoTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppExitInfoTracker;->registerForUserRemoval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .registers 2

    .line 676
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$1;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    .line 679
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_b

    return-void

    .line 681
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$1;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->onUserRemoved(I)V

    return-void
.end method
