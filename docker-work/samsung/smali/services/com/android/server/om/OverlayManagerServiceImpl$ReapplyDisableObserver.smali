.class public Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;
.super Landroid/content/om/ISamsungOverlayCallback$Stub;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReapplyDisableObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;)V
    .registers 2

    .line 1449
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/om/ISamsungOverlayCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public overlayStateChanged(Ljava/lang/String;Z)V
    .registers 9

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "overlayStateChanged packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", enabled = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mDisablePackageCount = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->-$$Nest$fgetmDisablePackageCount(Lcom/android/server/om/OverlayManagerServiceImpl;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverlayManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->-$$Nest$fgetmDisablePackageCount(Lcom/android/server/om/OverlayManagerServiceImpl;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->-$$Nest$fputmDisablePackageCount(Lcom/android/server/om/OverlayManagerServiceImpl;I)V

    .line 1457
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->-$$Nest$fgetmDisablePackageCount(Lcom/android/server/om/OverlayManagerServiceImpl;)I

    move-result p1

    if-nez p1, :cond_7a

    const-string p1, "/data/overlays/currentstyle"

    .line 1458
    invoke-static {p1}, Lcom/android/server/om/SemSamsungThemeUtils;->deleteAllFilesInDir(Ljava/lang/String;)V

    const-string p2, "/data/overlays/currentstyle/reapply"

    .line 1460
    invoke-static {p2, p1}, Lcom/android/server/om/SemSamsungThemeUtils;->moveFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1464
    new-instance v5, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;

    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object p2, p1, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyCallback:Landroid/content/om/ISamsungOverlayCallback;

    invoke-direct {v5, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Landroid/content/om/ISamsungOverlayCallback;)V

    .line 1466
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerServiceImpl;)Lcom/android/server/om/PackageManagerHelper;

    move-result-object v0

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->-$$Nest$fgetmEnablePackageNamesList(Lcom/android/server/om/OverlayManagerServiceImpl;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/om/PackageManagerHelper;->parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;)V

    .line 1470
    :cond_6f
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread-IA;)V

    .line 1471
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_7a
    return-void
.end method
