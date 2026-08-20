.class public Lcom/android/server/firewall/IntentFirewall;
.super Ljava/lang/Object;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/IntentFirewall$AMSInterface;,
        Lcom/android/server/firewall/IntentFirewall$RuleObserver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallHandler;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;,
        Lcom/android/server/firewall/IntentFirewall$Rule;
    }
.end annotation


# static fields
.field public static final LOG_PACKAGES_MAX_LENGTH:I = 0x96

.field public static final LOG_PACKAGES_SUFFICIENT_LENGTH:I = 0x7d

.field public static final RULES_DIR:Ljava/io/File;

.field public static final TAG:Ljava/lang/String; = "IntentFirewall"

.field public static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final TAG_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final TAG_RULES:Ljava/lang/String; = "rules"

.field public static final TAG_SERVICE:Ljava/lang/String; = "service"

.field public static final TYPE_ACTIVITY:I = 0x0

.field public static final TYPE_BROADCAST:I = 0x1

.field public static final TYPE_SERVICE:I = 0x2

.field public static final factoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/firewall/FilterFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field public final mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

.field public mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field public final mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

.field public final mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

.field public mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;


# direct methods
.method public static bridge synthetic -$$Nest$mreadRulesDir(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 6

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "ifw"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    const/16 v0, 0x12

    new-array v1, v0, [Lcom/android/server/firewall/FilterFactory;

    .line 89
    sget-object v2, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    .line 113
    new-instance v2, Ljava/util/HashMap;

    const/16 v4, 0x18

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    :goto_7f
    if-ge v3, v0, :cond_8f

    .line 115
    aget-object v2, v1, v3

    .line 116
    sget-object v4, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/firewall/FilterFactory;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_8f
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;)V
    .registers 5

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver-IA;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 85
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver-IA;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 86
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver-IA;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 121
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    .line 122
    new-instance p1, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;-><init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    .line 123
    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    .line 128
    new-instance p2, Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;-><init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    .line 129
    invoke-virtual {p2}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method public static getRulesDir()Ljava/io/File;
    .registers 1

    .line 271
    sget-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static joinPackages([Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    .line 245
    :goto_9
    array-length v5, p0

    const/16 v6, 0x96

    if-ge v3, v5, :cond_39

    .line 246
    aget-object v5, p0, v3

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    if-ge v7, v6, :cond_29

    if-nez v4, :cond_24

    const/16 v6, 0x2c

    .line 252
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_24
    move v4, v1

    .line 256
    :goto_25
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 257
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x7d

    if-lt v5, v6, :cond_36

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 261
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_60

    array-length v0, p0

    if-lez v0, :cond_60

    .line 262
    aget-object p0, p0, v1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_60
    const/4 p0, 0x0

    return-object p0
.end method

.method public static logIntent(ILandroid/content/Intent;ILjava/lang/String;)V
    .registers 15

    .line 204
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 207
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_e

    :cond_d
    move-object v3, v1

    :goto_e
    const/4 v0, 0x0

    .line 212
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 215
    :try_start_15
    invoke-interface {v2, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 217
    array-length v0, v2

    .line 218
    invoke-static {v2}, Lcom/android/server/firewall/IntentFirewall;->joinPackages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception v2

    const-string v4, "IntentFirewall"

    const-string v5, "Remote exception while retrieving packages"

    .line 221
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    :goto_29
    move v5, v0

    move-object v6, v1

    .line 226
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 227
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    move v2, p0

    move v4, p2

    move-object v8, p3

    .line 225
    invoke-static/range {v2 .. v10}, Lcom/android/server/EventLogTags;->writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 402
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 404
    sget-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/firewall/FilterFactory;

    if-eqz v1, :cond_13

    .line 409
    invoke-virtual {v1, p0}, Lcom/android/server/firewall/FilterFactory;->newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object p0

    return-object p0

    .line 407
    :cond_13
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element in filter list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 15

    .line 157
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public checkComponentPermission(Ljava/lang/String;IIIZ)Z
    .registers 12

    .line 621
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z
    .registers 23

    .line 170
    invoke-virtual {p0}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1a
    move-object v1, p1

    move-object/from16 v9, p2

    .line 175
    invoke-virtual {p1, v9, v0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V

    const/4 v1, 0x0

    move v10, v1

    move v11, v10

    move v12, v11

    .line 179
    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_57

    .line 180
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/firewall/IntentFirewall$Rule;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 181
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/firewall/AndFilter;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 183
    invoke-virtual {v13}, Lcom/android/server/firewall/IntentFirewall$Rule;->getBlock()Z

    move-result v1

    or-int/2addr v11, v1

    .line 184
    invoke-virtual {v13}, Lcom/android/server/firewall/IntentFirewall$Rule;->getLog()Z

    move-result v1

    or-int/2addr v12, v1

    if-eqz v11, :cond_54

    if-eqz v12, :cond_54

    goto :goto_57

    :cond_54
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_57
    :goto_57
    if-eqz v12, :cond_64

    move/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p7

    .line 195
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/firewall/IntentFirewall;->logIntent(ILandroid/content/Intent;ILjava/lang/String;)V

    :cond_64
    xor-int/lit8 v0, v11, 0x1

    return v0
.end method

.method public checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 16

    .line 151
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    iget v8, p6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 15

    .line 145
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget v8, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final getPackageManager()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 134
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 136
    :cond_e
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V
    .registers 14

    const-string p0, "Error reading intent firewall rules from "

    const-string v0, "Error while closing "

    const-string v1, "IntentFirewall"

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_1b

    .line 321
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 326
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_153

    .line 333
    :try_start_20
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    .line 335
    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v7, "rules"

    .line 337
    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 339
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 340
    :cond_32
    :goto_32
    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 343
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "activity"

    .line 344
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_47

    move v8, v4

    goto :goto_5d

    :cond_47
    const-string v9, "broadcast"

    .line 346
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    const/4 v8, 0x1

    goto :goto_5d

    :cond_51
    const-string/jumbo v9, "service"

    .line 348
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    const/4 v8, 0x2

    goto :goto_5d

    :cond_5c
    move v8, v10

    :goto_5d
    if-eq v8, v10, :cond_32

    .line 353
    new-instance v9, Lcom/android/server/firewall/IntentFirewall$Rule;

    invoke-direct {v9, v6}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>(Lcom/android/server/firewall/IntentFirewall$Rule-IA;)V

    .line 355
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;
    :try_end_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_6a} :catch_110
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_6a} :catch_e5
    .catchall {:try_start_20 .. :try_end_6a} :catchall_e3

    .line 360
    :try_start_6a
    invoke-virtual {v9, v5}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_6d} :catch_71
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_e5
    .catchall {:try_start_6a .. :try_end_6d} :catchall_e3

    .line 366
    :try_start_6d
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :catch_71
    move-exception v8

    .line 362
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading an intent firewall rule from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_86} :catch_110
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_86} :catch_e5
    .catchall {:try_start_6d .. :try_end_86} :catchall_e3

    goto :goto_32

    .line 379
    :cond_87
    :try_start_87
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_9e

    :catch_8b
    move-exception p0

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9e
    move p0, v4

    .line 385
    :goto_9f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_e2

    .line 386
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 387
    aget-object v0, p2, p0

    move v1, v4

    .line 389
    :goto_ae
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_df

    .line 390
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/firewall/IntentFirewall$Rule;

    move v5, v4

    .line 391
    :goto_bb
    invoke-virtual {v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilterCount()I

    move-result v7

    if-ge v5, v7, :cond_cb

    .line 392
    invoke-virtual {v3, v5}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_bb

    :cond_cb
    move v5, v4

    .line 394
    :goto_cc
    invoke-virtual {v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilterCount()I

    move-result v7

    if-ge v5, v7, :cond_dc

    .line 395
    invoke-virtual {v3, v5}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilter(I)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7, v3}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_cc

    :cond_dc
    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    :cond_df
    add-int/lit8 p0, p0, 0x1

    goto :goto_9f

    :cond_e2
    return-void

    :catchall_e3
    move-exception p0

    goto :goto_13b

    :catch_e5
    move-exception p2

    .line 375
    :try_start_e6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f8
    .catchall {:try_start_e6 .. :try_end_f8} :catchall_e3

    .line 379
    :try_start_f8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_fc

    goto :goto_10f

    :catch_fc
    move-exception p0

    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10f
    return-void

    :catch_110
    move-exception p2

    .line 372
    :try_start_111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_123
    .catchall {:try_start_111 .. :try_end_123} :catchall_e3

    .line 379
    :try_start_123
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_127

    goto :goto_13a

    :catch_127
    move-exception p0

    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13a
    return-void

    .line 379
    :goto_13b
    :try_start_13b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_13f

    goto :goto_152

    :catch_13f
    move-exception p2

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    :goto_152
    throw p0

    :catch_153
    return-void
.end method

.method public final readRulesDir(Ljava/io/File;)V
    .registers 8

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_12

    .line 287
    new-instance v4, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver-IA;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 290
    :cond_12
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_30

    move v0, v2

    .line 292
    :goto_19
    array-length v3, p1

    if-ge v0, v3, :cond_30

    .line 293
    aget-object v3, p1, v0

    .line 295
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 296
    invoke-virtual {p0, v3, v1}, Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_30
    const-string p1, "IntentFirewall"

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read new rules (A:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " B:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    .line 302
    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " S:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v5, v1, v4

    .line 303
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface {p1}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_82
    aget-object v0, v1, v2

    .line 306
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    aget-object v0, v1, v3

    .line 307
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    aget-object v0, v1, v4

    .line 308
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 309
    monitor-exit p1

    return-void

    :catchall_90
    move-exception p0

    monitor-exit p1
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public signaturesMatch(II)Z
    .registers 4

    const/4 p0, 0x0

    .line 627
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 628
    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_d

    if-nez p1, :cond_c

    const/4 p0, 0x1

    :cond_c
    return p0

    :catch_d
    move-exception p1

    const-string p2, "IntentFirewall"

    const-string v0, "Remote exception while checking signatures"

    .line 630
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method
