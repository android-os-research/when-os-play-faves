.class public Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<",
        "Landroid/util/Pair<",
        "Lcom/android/server/pm/pkg/component/ParsedActivity;",
        "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
        ">;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field public mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 3

    .line 956
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1298
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    .line 957
    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 4

    .line 964
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 1298
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    .line 965
    iget-object p1, p1, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 966
    iput-object p3, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    return-void
.end method


# virtual methods
.method public addActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_5d

    .line 1043
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1044
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    if-eqz p4, :cond_33

    const-string v4, "activity"

    .line 1045
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1046
    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_33
    invoke-virtual {v3}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_53

    .line 1053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> For Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_53
    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_5d
    return-void
.end method

.method public bridge synthetic addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V
    .registers 3

    .line 947
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    return-void
.end method

.method public allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1080
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_6
    if-ltz p0, :cond_35

    .line 1081
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1082
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1083
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 p0, 0x0

    return p0

    :cond_32
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_35
    return v0
.end method

.method public bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 947
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1253
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1254
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1256
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x20

    .line 1258
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 1259
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1260
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 1259
    invoke-static {p1, p2, p0}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " filter "

    .line 1261
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1262
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 947
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 1271
    check-cast p3, Landroid/util/Pair;

    .line 1273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1274
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x20

    .line 1275
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 1276
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1277
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 1276
    invoke-static {p1, p0, p2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-le p4, p0, :cond_3a

    const-string p0, " ("

    .line 1279
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " filters)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1281
    :cond_3a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 947
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    .line 1287
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 947
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getResolveList(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1291
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 1100
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1103
    :cond_a
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver;->-$$Nest$smisFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z
    .registers 4

    .line 947
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->isFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z

    move-result p0

    return p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1110
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 947
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public final log(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;II)V
    .registers 7

    .line 1115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; match: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Landroid/content/IntentFilter;

    int-to-long v0, p3

    const-string p3, "MATCH_"

    .line 1117
    invoke-static {p1, p3, v0, v1}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; userId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; intent info: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 1115
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public newArray(I)[Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 1093
    new-array p0, p1, [Landroid/util/Pair;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;IIJ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v8, p4

    move-wide/from16 v9, p5

    .line 1126
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1127
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1128
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v13

    .line 1130
    iget-object v1, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v14, 0x0

    if-nez v1, :cond_20

    return-object v14

    .line 1138
    :cond_20
    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    if-eqz v15, :cond_172

    .line 1139
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_172

    .line 1140
    invoke-static {v15, v11, v9, v10, v8}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    if-nez v1, :cond_3a

    goto/16 :goto_172

    .line 1149
    :cond_3a
    invoke-interface {v15, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 1150
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    move-object v2, v11

    move-wide/from16 v3, p5

    move-object/from16 v5, v16

    move/from16 v6, p4

    move-object v7, v15

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_51

    return-object v14

    :cond_51
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v9

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5f

    move v2, v6

    goto :goto_60

    :cond_5f
    move v2, v3

    :goto_60
    const-wide/32 v17, 0x1000000

    and-long v17, v9, v17

    cmp-long v7, v17, v4

    if-eqz v7, :cond_6b

    move v7, v6

    goto :goto_6c

    :cond_6b
    move v7, v3

    :goto_6c
    if-eqz v7, :cond_7e

    .line 1165
    invoke-virtual {v13}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v17

    if-eqz v17, :cond_7e

    if-eqz v2, :cond_7c

    .line 1167
    invoke-virtual {v13}, Landroid/content/IntentFilter;->isExplicitlyVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_7e

    :cond_7c
    move v2, v6

    goto :goto_7f

    :cond_7e
    move v2, v3

    :goto_7f
    const-wide/32 v17, 0x800000

    and-long v17, v9, v17

    cmp-long v17, v17, v4

    if-eqz v17, :cond_89

    move v3, v6

    :cond_89
    if-eqz v7, :cond_94

    if-nez v2, :cond_94

    .line 1170
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v2

    if-nez v2, :cond_94

    return-object v14

    :cond_94
    if-nez v3, :cond_9d

    .line 1185
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_9d

    return-object v14

    .line 1193
    :cond_9d
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_aa

    return-object v14

    .line 1199
    :cond_aa
    new-instance v2, Landroid/content/pm/ResolveInfo;

    const-string v3, "android.intent.category.BROWSABLE"

    .line 1200
    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Z)V

    .line 1201
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-wide/16 v14, 0x40

    and-long/2addr v9, v14

    cmp-long v3, v9, v4

    if-eqz v3, :cond_c0

    .line 1203
    iput-object v13, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1205
    :cond_c0
    invoke-virtual {v13}, Landroid/content/IntentFilter;->handleAllWebDataURI()Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 1206
    invoke-virtual {v13}, Landroid/content/IntentFilter;->getPriority()I

    move-result v3

    iput v3, v2, Landroid/content/pm/ResolveInfo;->priority:I

    move/from16 v3, p3

    .line 1211
    iput v3, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 1212
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1213
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    move-result v3

    iput v3, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1214
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1217
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v3

    if-eqz v3, :cond_14a

    .line 1221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_114

    .line 1223
    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_114
    if-eqz v1, :cond_14a

    .line 1226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replace res.nonLocalizedLabel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") to newName("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") and activity.getPackageName() () UId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    .line 1226
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1234
    :cond_14a
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 1235
    iput-boolean v6, v2, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_15b

    .line 1237
    :cond_155
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1239
    :goto_15b
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 1240
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, v2, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1241
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    iput-boolean v0, v2, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    return-object v2

    :cond_172
    :goto_172
    return-object v14
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7

    .line 947
    check-cast p2, Landroid/util/Pair;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const-wide/32 v0, 0x10000

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p6

    move-wide v7, p4

    .line 983
    invoke-super/range {v1 .. v8}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    .line 986
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz p1, :cond_40

    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_40

    if-nez p6, :cond_40

    if-eqz p0, :cond_40

    .line 987
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 988
    invoke-static {p0}, Lcom/android/server/pm/SProtect;->filterSprotectHiddenList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_40
    return-object p0
.end method

.method public queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    if-eqz p4, :cond_f

    const/high16 v0, 0x10000

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    int-to-long v7, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 974
    invoke-super/range {v1 .. v8}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    move/from16 v9, p7

    .line 998
    iget-object v2, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    if-nez v1, :cond_16

    .line 1002
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_16
    const-wide/32 v2, 0x10000

    and-long v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    move v4, v2

    goto :goto_26

    :cond_25
    move v4, v3

    .line 1005
    :goto_26
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    .line 1006
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_30
    if-ge v6, v2, :cond_66

    .line 1011
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1012
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v8

    .line 1013
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_63

    .line 1014
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object v10

    move v11, v3

    .line 1015
    :goto_4b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_60

    .line 1016
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v7, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 1018
    :cond_60
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p7

    move-wide/from16 v7, p4

    .line 1022
    invoke-super/range {v0 .. v8}, Lcom/android/server/IntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object v0

    .line 1025
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v1, :cond_91

    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_91

    if-nez v9, :cond_91

    if-eqz v0, :cond_91

    .line 1026
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1027
    invoke-static {v0}, Lcom/android/server/pm/SProtect;->filterSprotectHiddenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_91
    return-object v0
.end method

.method public removeActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;)V
    .registers 5

    .line 1060
    iget-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p2, :cond_2b

    .line 1067
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1068
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 1073
    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2b
    return-void
.end method

.method public sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1247
    sget-object p0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public bridge synthetic updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 947
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
