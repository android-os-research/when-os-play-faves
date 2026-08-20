.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;
.super Landroid/content/BroadcastReceiver;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .registers 2

    .line 1067
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1070
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 1071
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 1072
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1073
    :try_start_14
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_1e
    if-ge v1, p1, :cond_34

    .line 1075
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p2, :cond_31

    .line 1077
    invoke-virtual {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onConfigurationChanged()V

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1080
    :cond_34
    monitor-exit v0

    goto/16 :goto_10b

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    const-string v0, "android.intent.action.USER_STARTED"

    .line 1081
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, -0x2710

    if-eqz v0, :cond_51

    .line 1082
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$monUserStarted(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto/16 :goto_10b

    :cond_51
    const-string v0, "android.intent.action.USER_STOPPED"

    .line 1084
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1085
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$monUserStopped(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto/16 :goto_10b

    :cond_66
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 1087
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1088
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitched(I)V

    goto/16 :goto_10b

    :cond_7b
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 1090
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1091
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_8a

    return-void

    .line 1094
    :cond_8a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.app.cocktailbarservice"

    .line 1095
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 1096
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarHandler(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_10b

    .line 1099
    :cond_a5
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmModeManager(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onBroadcastReceived(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_cb

    return-void

    .line 1103
    :cond_cb
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 1104
    :try_start_d2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f9

    .line 1106
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_e3
    if-ge v1, v0, :cond_10a

    .line 1108
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_f6

    .line 1110
    invoke-virtual {v2, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    :cond_f6
    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    .line 1114
    :cond_f9
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_10a

    .line 1116
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 1119
    :cond_10a
    monitor-exit p1

    :cond_10b
    :goto_10b
    return-void

    :catchall_10c
    move-exception p0

    monitor-exit p1
    :try_end_10e
    .catchall {:try_start_d2 .. :try_end_10e} :catchall_10c

    throw p0
.end method
