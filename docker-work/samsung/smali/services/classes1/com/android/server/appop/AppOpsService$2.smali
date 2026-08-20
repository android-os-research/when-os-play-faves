.class public Lcom/android/server/appop/AppOpsService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 1872
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 1875
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1876
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    .line 1877
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 1879
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4c

    .line 1880
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter p2

    .line 1881
    :try_start_26
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$UidState;

    if-eqz p1, :cond_47

    .line 1882
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez p1, :cond_37

    goto :goto_47

    .line 1886
    :cond_37
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz p1, :cond_44

    .line 1888
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleFastWriteLocked(Lcom/android/server/appop/AppOpsService;)V

    .line 1890
    :cond_44
    monitor-exit p2

    goto/16 :goto_12a

    .line 1883
    :cond_47
    :goto_47
    monitor-exit p2

    return-void

    :catchall_49
    move-exception p0

    .line 1890
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_49

    throw p0

    :cond_4c
    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 1891
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12a

    .line 1892
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mgetPackageManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_61

    return-void

    .line 1897
    :cond_61
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 1898
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    .line 1899
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1900
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b4

    .line 1901
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v5

    :goto_7f
    if-ge v6, v4, :cond_b4

    .line 1904
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedAttribution;

    .line 1905
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1907
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_9b
    if-ge v9, v8, :cond_b1

    .line 1910
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1911
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 1910
    invoke-virtual {p2, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9b

    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f

    .line 1916
    :cond_b4
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter p1

    .line 1917
    :try_start_b7
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    if-eqz v1, :cond_125

    .line 1918
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v1, :cond_c8

    goto :goto_125

    .line 1922
    :cond_c8
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v0, :cond_d2

    .line 1924
    monitor-exit p1

    return-void

    .line 1928
    :cond_d2
    iput-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 1929
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1933
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_dd
    if-ge v5, v1, :cond_123

    .line 1935
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 1937
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_ed
    if-ltz v4, :cond_120

    .line 1940
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1942
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fe

    goto :goto_11d

    .line 1947
    :cond_fe
    invoke-virtual {p2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1949
    invoke-static {v3, v3, v6}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$mgetOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v6

    .line 1951
    iget-object v7, v3, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v6, v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Lcom/android/server/appop/AppOpsService$AttributedOp;)V

    .line 1952
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1954
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleFastWriteLocked(Lcom/android/server/appop/AppOpsService;)V

    :goto_11d
    add-int/lit8 v4, v4, -0x1

    goto :goto_ed

    :cond_120
    add-int/lit8 v5, v5, 0x1

    goto :goto_dd

    .line 1957
    :cond_123
    monitor-exit p1

    goto :goto_12a

    .line 1919
    :cond_125
    :goto_125
    monitor-exit p1

    return-void

    :catchall_127
    move-exception p0

    .line 1957
    monitor-exit p1
    :try_end_129
    .catchall {:try_start_b7 .. :try_end_129} :catchall_127

    throw p0

    :cond_12a
    :goto_12a
    return-void
.end method
