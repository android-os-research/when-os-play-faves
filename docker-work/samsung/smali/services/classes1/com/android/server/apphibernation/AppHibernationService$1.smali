.class public Lcom/android/server/apphibernation/AppHibernationService$1;
.super Landroid/content/BroadcastReceiver;
.source "AppHibernationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/apphibernation/AppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .registers 2

    .line 893
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 896
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_b

    return-void

    .line 901
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 902
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    if-nez v2, :cond_1f

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 903
    :cond_1f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    .line 904
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_31

    return-void

    .line 909
    :cond_31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 910
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {p0, v2, p1}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$monPackageAdded(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V

    goto :goto_55

    .line 911
    :cond_3d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 912
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v0, v2, p1}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$monPackageRemoved(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V

    const-string p1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    .line 913
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 914
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {p0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$monPackageRemovedForAllUsers(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method
