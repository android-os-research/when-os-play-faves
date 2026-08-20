.class public Lcom/android/server/pm/ComputerEngine$Settings;
.super Ljava/lang/Object;
.source "ComputerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComputerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Settings"
.end annotation


# instance fields
.field public final mSettings:Lcom/android/server/pm/Settings;

.field public final synthetic this$0:Lcom/android/server/pm/ComputerEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/Settings;)V
    .registers 3

    .line 245
    iput-object p1, p0, Lcom/android/server/pm/ComputerEngine$Settings;->this$0:Lcom/android/server/pm/ComputerEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    return-void
.end method


# virtual methods
.method public dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 4

    .line 397
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/KeySetManagerService;->dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 388
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Settings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 4

    .line 308
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    return-void
.end method

.method public dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 3

    .line 406
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 304
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getAllSharedUsers()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 354
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getAllSharedUsersLPw()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 338
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->getApplicationEnabledSettingLPr(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getBlockUninstall(ILjava/lang/String;)Z
    .registers 3

    .line 332
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->getBlockUninstallLPr(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 344
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    return-object p0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public getPackages()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 2

    .line 300
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 2

    .line 318
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 294
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingBase(I)Lcom/android/server/pm/SettingBase;
    .registers 2

    .line 289
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserFromAppId(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 2

    .line 364
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    return-object p0
.end method

.method public getSharedUserFromId(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;
    .registers 3

    .line 324
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0
    :try_end_7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    .line 327
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 2

    .line 359
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserPackages(I)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 370
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p0, :cond_27

    .line 374
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 376
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    return-object v0
.end method

.method public getVolumePackages(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 415
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isEnabledAndMatch(Landroid/content/pm/ComponentInfo;II)Z
    .registers 5

    .line 260
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 265
    :cond_a
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    int-to-long p2, p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result p0

    return p0
.end method

.method public isEnabledAndMatch(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 272
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 277
    :cond_c
    invoke-interface {p0, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 278
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v2

    move-object v3, p2

    move-wide v4, p3

    .line 277
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result p0

    return p0
.end method

.method public writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V

    return-void
.end method
