.class public abstract Lcom/android/server/pm/resolution/ComponentResolverBase;
.super Lcom/android/server/utils/WatchableImpl;
.source "ComponentResolverBase.java"

# interfaces
.implements Lcom/android/server/pm/resolution/ComponentResolverApi;


# instance fields
.field public mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

.field public mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

.field public mProvidersByAuthority:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field

.field public mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

.field public mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method


# virtual methods
.method public componentExists(Landroid/content/ComponentName;)Z
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    return v1

    .line 83
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    if-eqz v0, :cond_1b

    return v1

    .line 87
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    if-eqz v0, :cond_28

    return v1

    .line 91
    :cond_28
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    return v1
.end method

.method public dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 11

    .line 319
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "\nActivity Resolver Table:"

    goto :goto_d

    :cond_b
    const-string p0, "Activity Resolver Table:"

    :goto_d
    move-object v2, p0

    const/4 p0, 0x1

    .line 321
    invoke-virtual {p2, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    .line 319
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 322
    invoke-virtual {p2, p0}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    :cond_21
    return-void
.end method

.method public dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 12

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "    "

    if-eqz v3, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProvider;

    if-eqz p4, :cond_2a

    .line 361
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_e

    :cond_2a
    if-nez v2, :cond_3b

    .line 365
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 366
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_35
    const-string v2, "Registered ContentProviders:"

    .line 368
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v4

    :cond_3b
    const-string v4, "  "

    .line 371
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v4, v6}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ":"

    .line 373
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 379
    :cond_5b
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_65
    :goto_65
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 380
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    if-eqz p4, :cond_84

    .line 381
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto :goto_65

    :cond_84
    if-nez v1, :cond_95

    .line 385
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 386
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_8f
    const-string v1, "ContentProvider Authorities:"

    .line 388
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v4

    :cond_95
    const-string v3, "  ["

    .line 391
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "]:"

    .line 393
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_65

    const-string v2, "      applicationInfo="

    .line 400
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_65

    :cond_c9
    return-void
.end method

.method public dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 11

    .line 329
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "\nProvider Resolver Table:"

    goto :goto_d

    :cond_b
    const-string p0, "Provider Resolver Table:"

    :goto_d
    move-object v2, p0

    const/4 p0, 0x1

    .line 331
    invoke-virtual {p2, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    .line 329
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 332
    invoke-virtual {p2, p0}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    :cond_21
    return-void
.end method

.method public dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 11

    .line 339
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "\nReceiver Resolver Table:"

    goto :goto_d

    :cond_b
    const-string p0, "Receiver Resolver Table:"

    :goto_d
    move-object v2, p0

    const/4 p0, 0x1

    .line 341
    invoke-virtual {p2, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    .line 339
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 342
    invoke-virtual {p2, p0}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    :cond_21
    return-void
.end method

.method public dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 5

    .line 408
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_9
    const-string p2, "Service permissions:"

    .line 409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 412
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 413
    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_43

    .line 414
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 415
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 417
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "    "

    .line 419
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    .line 421
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    :cond_43
    return-void
.end method

.method public dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 11

    .line 349
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "\nService Resolver Table:"

    goto :goto_d

    :cond_b
    const-string p0, "Service Resolver Table:"

    :goto_d
    move-object v2, p0

    const/4 p0, 0x1

    .line 351
    invoke-virtual {p2, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    .line 349
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 352
    invoke-virtual {p2, p0}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    :cond_21
    return-void
.end method

.method public getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedActivity;

    return-object p0
.end method

.method public getProvider(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedProvider;
    .registers 2

    .line 103
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedProvider;

    return-object p0
.end method

.method public getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedActivity;

    return-object p0
.end method

.method public getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedService;

    return-object p0
.end method

.method public isActivityDefined(Landroid/content/ComponentName;)Z
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 14
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

    .line 130
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .registers 16
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

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;
    .registers 14

    .line 146
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedProvider;

    const/4 p0, 0x0

    if-nez v1, :cond_d

    return-object p0

    .line 150
    :cond_d
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_18

    return-object p0

    .line 154
    :cond_18
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_1f

    return-object p0

    .line 158
    :cond_1f
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    move-object v2, v0

    move-wide v3, p3

    move-object v5, p2

    move v6, p5

    move-object v7, p1

    .line 159
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-nez v5, :cond_2f

    return-object p0

    :cond_2f
    move-wide v2, p3

    move-object v4, p2

    move v6, p5

    move-object v7, p1

    .line 164
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 14
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

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryProviders(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v11, p7

    .line 189
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    return-object v4

    .line 194
    :cond_12
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    iget-object v3, v3, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    move-object v13, v4

    :goto_1e
    if-ltz v12, :cond_b6

    .line 195
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    iget-object v3, v3, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 196
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_37

    move-object/from16 v14, p1

    :cond_33
    :goto_33
    move/from16 v9, p4

    goto/16 :goto_b2

    .line 200
    :cond_37
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v14, p1

    invoke-interface {v14, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    if-nez v15, :cond_44

    :goto_43
    goto :goto_33

    .line 205
    :cond_44
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v16

    if-nez v16, :cond_4b

    goto :goto_43

    :cond_4b
    if-eqz v1, :cond_64

    .line 210
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 211
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v3

    move/from16 v9, p4

    invoke-static {v3, v9}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_66

    goto :goto_b2

    :cond_64
    move/from16 v9, p4

    :cond_66
    if-eqz v2, :cond_73

    .line 215
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    goto :goto_b2

    :cond_73
    if-nez v4, :cond_7a

    .line 219
    new-instance v4, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;

    invoke-direct {v4}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;-><init>()V

    :cond_7a
    move-object/from16 v17, v4

    .line 221
    invoke-interface {v15, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v18

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move-wide/from16 v5, p5

    move-object/from16 v7, v18

    move/from16 v8, p7

    move-object v9, v15

    .line 223
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-nez v8, :cond_92

    goto :goto_a2

    :cond_92
    move-object/from16 v3, v16

    move-object v4, v10

    move-wide/from16 v5, p5

    move-object/from16 v7, v18

    move/from16 v9, p7

    move-object v10, v15

    .line 228
    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_a5

    :goto_a2
    move-object/from16 v4, v17

    goto :goto_b2

    :cond_a5
    if-nez v13, :cond_ae

    .line 234
    new-instance v13, Ljava/util/ArrayList;

    add-int/lit8 v4, v12, 0x1

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    :cond_ae
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    :goto_b2
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1e

    :cond_b6
    return-object v13
.end method

.method public queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 14
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

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .registers 16
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

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 14
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

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public querySyncProviders(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;ZI)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;ZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 277
    iget-object v1, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_b
    if-ltz v1, :cond_84

    .line 278
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 279
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v3

    if-nez v3, :cond_1f

    move-object/from16 v12, p1

    goto :goto_3b

    .line 283
    :cond_1f
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v12, p1

    invoke-interface {v12, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-nez v11, :cond_2c

    goto :goto_3b

    .line 288
    :cond_2c
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_33

    goto :goto_3b

    :cond_33
    if-eqz p4, :cond_42

    .line 293
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v3

    if-nez v3, :cond_42

    :goto_3b
    move-object/from16 v6, p2

    move-object/from16 v5, p3

    move/from16 v3, p5

    goto :goto_81

    :cond_42
    if-nez v2, :cond_49

    .line 297
    new-instance v2, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;-><init>()V

    :cond_49
    move/from16 v3, p5

    .line 299
    invoke-interface {v11, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    const-wide/16 v15, 0x0

    move-object v13, v2

    move-object v14, v4

    move-object/from16 v17, v8

    move/from16 v18, p5

    move-object/from16 v19, v11

    .line 301
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-nez v9, :cond_64

    :goto_5f
    move-object/from16 v6, p2

    move-object/from16 v5, p3

    goto :goto_81

    :cond_64
    const-wide/16 v6, 0x0

    move/from16 v10, p5

    .line 306
    invoke-static/range {v4 .. v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_6f

    goto :goto_5f

    .line 311
    :cond_6f
    iget-object v5, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p3

    .line 312
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_81
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_84
    return-void
.end method
