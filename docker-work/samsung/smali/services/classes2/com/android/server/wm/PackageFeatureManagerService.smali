.class public Lcom/android/server/wm/PackageFeatureManagerService;
.super Ljava/lang/Object;
.source "PackageFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;
    }
.end annotation


# static fields
.field public static final DUMP_TITLE:Ljava/lang/String; = "*** Logs ***"

.field public static final LOG_BUFFER_SIZE:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "PackageFeature"


# instance fields
.field public final mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public final mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

.field public final mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/samsung/android/server/util/CoreLogger;->getBuilder()Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v0

    const-string v1, "PackageFeature"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/util/CoreLogger$Builder;->setTag(Ljava/lang/String;)Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v0

    const-string v1, "*** Logs ***"

    .line 57
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/util/CoreLogger$Builder;->setDumpTitle(Ljava/lang/String;)Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/util/CoreLogger$Builder;->setBufferSize(I)Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/util/CoreLogger$Builder;->build()Lcom/samsung/android/server/util/CoreLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 63
    invoke-static {}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->getController()Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    .line 64
    new-instance v0, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;-><init>(Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo-IA;)V

    invoke-static {v0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->getScpmController(Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;)Lcom/samsung/android/server/corescpm/ScpmController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/corescpm/ScpmController;->dump(Ljava/io/PrintWriter;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getScpmVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->getScpmVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onSystemReady(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 12

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    iget-object v1, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->startController(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    iget-object v1, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/PackageFeatureManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/PackageFeatureManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corescpm/ScpmController;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->setFileDescriptorFunction(Ljava/util/function/Function;)V

    .line 70
    iget-object v3, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    iget-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    .line 71
    invoke-interface {v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->getGroupNames()Ljava/util/Set;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    iget-object v8, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    move-object v4, p1

    move-object v5, p2

    .line 70
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/server/corescpm/ScpmController;->registerScpm(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Set;Ljava/util/function/Consumer;Lcom/samsung/android/server/util/CoreLogger;)V

    return-void
.end method
