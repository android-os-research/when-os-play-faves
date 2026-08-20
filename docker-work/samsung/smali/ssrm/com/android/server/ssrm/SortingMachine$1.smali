.class Lcom/android/server/ssrm/SortingMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "SortingMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/SortingMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/SortingMachine;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/SortingMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/SortingMachine;

    .line 85
    iput-object p1, p0, Lcom/android/server/ssrm/SortingMachine$1;->this$0:Lcom/android/server/ssrm/SortingMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 90
    invoke-static {}, Lcom/android/server/ssrm/SortingMachine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceiveImpl:: ACTION_PACKAGE_ADDED"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "newPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine$1;->this$0:Lcom/android/server/ssrm/SortingMachine;

    invoke-static {v2, v1}, Lcom/android/server/ssrm/SortingMachine;->-$$Nest$mregisterTorrentPackages(Lcom/android/server/ssrm/SortingMachine;Ljava/lang/String;)V

    .line 94
    .end local v1    # "newPackageName":Ljava/lang/String;
    goto :goto_61

    .line 95
    :cond_29
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 96
    invoke-static {}, Lcom/android/server/ssrm/SortingMachine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceiveImpl:: ACTION_PACKAGE_REMOVED"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    const/4 v3, 0x2

    if-ge v2, v3, :cond_61

    .line 99
    if-nez v2, :cond_49

    .line 100
    goto :goto_5e

    .line 102
    :cond_49
    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine$1;->this$0:Lcom/android/server/ssrm/SortingMachine;

    invoke-static {v3}, Lcom/android/server/ssrm/SortingMachine;->-$$Nest$fgetmTables(Lcom/android/server/ssrm/SortingMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 103
    .local v3, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 104
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v3    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 108
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_61
    :goto_61
    return-void
.end method
