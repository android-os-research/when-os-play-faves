.class public Lcom/android/server/enterprise/application/ApplicationPolicy$7;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerBootCompletedListener()V
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

    .line 7698
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "ApplicationPolicy"

    const-string p2, "boot completed - refreshWidgetStatus"

    .line 7700
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7701
    iget-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fputmBootCompleted(Lcom/android/server/enterprise/application/ApplicationPolicy;Z)V

    .line 7703
    iget-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p1, p1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-eqz p1, :cond_3a

    .line 7706
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 7708
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 7709
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mrefreshWidgetStatus(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    goto :goto_26

    :cond_3a
    return-void
.end method
