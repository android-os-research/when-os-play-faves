.class public Lcom/android/server/enterprise/application/ApplicationPolicy$10;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerUserUnlockedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    .line 7819
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 7821
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 7822
    iget-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    const-string p1, "ApplicationPolicy"

    const-string/jumbo v0, "user unlocked - refreshWidgetStatus"

    .line 7823
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 7824
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v1, :cond_3d

    .line 7826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling refreshWidgetStatus for userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7827
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mrefreshWidgetStatus(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    goto :goto_51

    .line 7829
    :cond_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not call refreshWidgetStatus due to USER_NULL userId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    return-void
.end method
