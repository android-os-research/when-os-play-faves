.class public Lcom/android/internal/app/ChooserActivity$ChooserListController;
.super Lcom/android/internal/app/ResolverListController;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V
    .registers 19
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "targetIntent"    # Landroid/content/Intent;
    .param p5, "referrerPackageName"    # Ljava/lang/String;
    .param p6, "launchedFromUid"    # I
    .param p7, "userId"    # Landroid/os/UserHandle;
    .param p8, "resolverComparator"    # Lcom/android/internal/app/AbstractResolverComparator;

    .line 4990
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 4991
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V

    .line 4993
    return-void
.end method


# virtual methods
.method blacklist isComponentFiltered(Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 4997
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 4998
    return v1

    .line 5000
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    .line 5001
    .local v4, "filteredComponentName":Landroid/content/ComponentName;
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 5002
    const/4 v0, 0x1

    return v0

    .line 5000
    .end local v4    # "filteredComponentName":Landroid/content/ComponentName;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 5005
    :cond_21
    return v1
.end method

.method public blacklist isComponentPinned(Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 5011
    const/4 v0, 0x0

    .line 5012
    .local v0, "currentValue":Z
    const-wide/16 v1, 0x0

    .line 5015
    .local v1, "saveTime":J
    const/4 v3, 0x0

    :try_start_4
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_12} :catch_14

    move v0, v4

    .line 5018
    goto :goto_15

    .line 5016
    :catch_14
    move-exception v4

    .line 5021
    :goto_15
    const-wide/16 v4, 0x0

    :try_start_17
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_25} :catch_27

    move-wide v1, v6

    .line 5024
    goto :goto_28

    .line 5022
    :catch_27
    move-exception v6

    .line 5026
    :goto_28
    if-nez v0, :cond_2e

    cmp-long v4, v1, v4

    if-eqz v4, :cond_2f

    :cond_2e
    const/4 v3, 0x1

    :cond_2f
    return v3
.end method

.method public blacklist isFixedAtTop(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 5034
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 5035
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshouldNearbyShareBeFirstInRankedRow(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 5034
    :goto_19
    return v0
.end method

.method public blacklist semCheckMetadataExist(Landroid/content/pm/ResolveInfo;)Z
    .registers 3
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 5059
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity;->semIsComponentWithPriorityInMetadata(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist semGetComponentPinnedTime(Landroid/content/ComponentName;)J
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 5064
    const-wide/16 v0, 0x0

    .line 5066
    .local v0, "time":J
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_12} :catch_14

    move-wide v0, v2

    .line 5069
    goto :goto_17

    .line 5067
    :catch_14
    move-exception v2

    .line 5068
    .local v2, "e":Ljava/lang/ClassCastException;
    const-wide/16 v0, 0x0

    .line 5071
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :goto_17
    return-wide v0
.end method

.method public blacklist semGetPinnedSharedPrefs()Landroid/content/SharedPreferences;
    .registers 2

    .line 5054
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method blacklist semIsComponentDropped(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 5041
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemDropComponents(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 5042
    return v1

    .line 5044
    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemDropComponents(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5045
    .local v2, "dropComponentName":Landroid/content/ComponentName;
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 5046
    const/4 v0, 0x1

    return v0

    .line 5048
    .end local v2    # "dropComponentName":Landroid/content/ComponentName;
    :cond_2c
    goto :goto_18

    .line 5049
    :cond_2d
    return v1
.end method
