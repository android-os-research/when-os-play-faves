.class public Lcom/android/server/devicepolicy/OverlayPackagesProvider;
.super Ljava/lang/Object;
.source "OverlayPackagesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;,
        Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OverlayPackagesProvider"

.field public static final sActionToMetadataKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sAllowedActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public salesCode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 94
    new-instance v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;-><init>(Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector-IA;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;-><init>(Landroid/content/Context;Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    const-string v1, "android.app.action.PROVISION_MANAGED_USER"

    const-string v2, "android.app.REQUIRED_APP_MANAGED_USER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android.app.action.PROVISION_MANAGED_PROFILE"

    const-string v3, "android.app.REQUIRED_APP_MANAGED_PROFILE"

    .line 76
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.app.action.PROVISION_MANAGED_DEVICE"

    const-string v4, "android.app.REQUIRED_APP_MANAGED_DEVICE"

    .line 77
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 137
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 139
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string p2, "SalesCode"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    const-string v0, "OverlayPackagesProvider"

    .line 602
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 605
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "required_apps_managed_device"

    const v2, 0x10701a3

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 607
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "required_apps_managed_user"

    const v2, 0x10701a5

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 609
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "required_apps_managed_profile"

    const v2, 0x10701a4

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 612
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string v1, "disallowed_apps_managed_device"

    const v2, 0x107018d

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 614
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string v3, "disallowed_apps_managed_user"

    const v4, 0x107018f

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 616
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 619
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_required_apps_managed_device"

    const v2, 0x10701b5

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 621
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_required_apps_managed_user"

    const v2, 0x10701b7

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 623
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_required_apps_managed_profile"

    const v2, 0x10701b6

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 626
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_disallowed_apps_managed_user"

    const v2, 0x10701b3

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 628
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_disallowed_apps_managed_device"

    const v2, 0x10701b1

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 630
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vendor_disallowed_apps_managed_profile"

    const v1, 0x10701b2

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 633
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getCarrierDisallowedAppsListArrayforManagedDevice()I
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_b6

    .line 504
    :cond_16
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_b2

    .line 508
    :cond_40
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const p0, 0x1070010

    goto/16 :goto_b9

    .line 512
    :cond_4f
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_ae

    .line 516
    :cond_64
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const p0, 0x1070011

    goto :goto_b9

    .line 520
    :cond_72
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const p0, 0x107000b

    goto :goto_b9

    .line 524
    :cond_80
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const p0, 0x107000e

    goto :goto_b9

    .line 528
    :cond_8e
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const p0, 0x107000d

    goto :goto_b9

    .line 532
    :cond_9c
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v0, "CCT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const p0, 0x107000a

    goto :goto_b9

    :cond_aa
    const p0, 0x107000c

    goto :goto_b9

    :cond_ae
    :goto_ae
    const p0, 0x1070012

    goto :goto_b9

    :cond_b2
    :goto_b2
    const p0, 0x107000f

    goto :goto_b9

    :cond_b6
    :goto_b6
    const p0, 0x1070009

    :goto_b9
    return p0
.end method

.method public final getCarrierDisallowedAppsListArrayforManagedProfile()I
    .registers 3

    .line 546
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_b6

    .line 550
    :cond_16
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_b2

    .line 554
    :cond_40
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const p0, 0x107001a

    goto/16 :goto_b9

    .line 558
    :cond_4f
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_ae

    .line 562
    :cond_64
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const p0, 0x107001b

    goto :goto_b9

    .line 566
    :cond_72
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const p0, 0x1070015

    goto :goto_b9

    .line 570
    :cond_80
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const p0, 0x1070018

    goto :goto_b9

    .line 574
    :cond_8e
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const p0, 0x1070017

    goto :goto_b9

    .line 578
    :cond_9c
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v0, "CCT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const p0, 0x1070014

    goto :goto_b9

    :cond_aa
    const p0, 0x1070016

    goto :goto_b9

    :cond_ae
    :goto_ae
    const p0, 0x107001c

    goto :goto_b9

    :cond_b2
    :goto_b2
    const p0, 0x1070019

    goto :goto_b9

    :cond_b6
    :goto_b6
    const p0, 0x1070013

    :goto_b9
    return p0
.end method

.method public final getCarrierDisallowedAppsListArrayforManagedUser()I
    .registers 1

    const p0, 0x107001d

    return p0
.end method

.method public final getCarrierDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6e

    goto :goto_2c

    :sswitch_c
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_7c

    .line 400
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 394
    :pswitch_4b
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierDisallowedAppsListArrayforManagedProfile()I

    move-result p1

    goto :goto_59

    .line 391
    :pswitch_50
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierDisallowedAppsListArrayforManagedUser()I

    move-result p1

    goto :goto_59

    .line 397
    :pswitch_55
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierDisallowedAppsListArrayforManagedDevice()I

    move-result p1

    .line 403
    :goto_59
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :sswitch_data_6e
    .sparse-switch
        -0x36de2734 -> :sswitch_22
        -0x1ea9303f -> :sswitch_17
        -0x1450e22d -> :sswitch_c
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_55
        :pswitch_50
        :pswitch_4b
    .end packed-switch
.end method

.method public final getCarrierRequiredAppsListArrayforManagedDevice()I
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_c0

    .line 412
    :cond_16
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_bc

    .line 416
    :cond_40
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_b8

    .line 420
    :cond_55
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_b4

    .line 424
    :cond_6a
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const p0, 0x1070027

    goto :goto_c3

    .line 428
    :cond_78
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    const p0, 0x1070021

    goto :goto_c3

    .line 432
    :cond_86
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    const p0, 0x1070024

    goto :goto_c3

    .line 436
    :cond_94
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const p0, 0x1070023

    goto :goto_c3

    .line 440
    :cond_a2
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v0, "CCT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b0

    const p0, 0x1070020

    goto :goto_c3

    :cond_b0
    const p0, 0x1070022

    goto :goto_c3

    :cond_b4
    :goto_b4
    const p0, 0x1070028

    goto :goto_c3

    :cond_b8
    :goto_b8
    const p0, 0x1070026

    goto :goto_c3

    :cond_bc
    :goto_bc
    const p0, 0x1070025

    goto :goto_c3

    :cond_c0
    :goto_c0
    const p0, 0x107001f

    :goto_c3
    return p0
.end method

.method public final getCarrierRequiredAppsListArrayforManagedProfile()I
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_b6

    .line 458
    :cond_16
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_b2

    .line 462
    :cond_40
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const p0, 0x1070030

    goto/16 :goto_b9

    .line 466
    :cond_4f
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_ae

    .line 470
    :cond_64
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const p0, 0x1070031

    goto :goto_b9

    .line 474
    :cond_72
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const p0, 0x107002b

    goto :goto_b9

    .line 478
    :cond_80
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const p0, 0x107002e

    goto :goto_b9

    .line 482
    :cond_8e
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const p0, 0x107002d

    goto :goto_b9

    .line 486
    :cond_9c
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v0, "CCT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const p0, 0x107002a

    goto :goto_b9

    :cond_aa
    const p0, 0x107002c

    goto :goto_b9

    :cond_ae
    :goto_ae
    const p0, 0x1070032

    goto :goto_b9

    :cond_b2
    :goto_b2
    const p0, 0x107002f

    goto :goto_b9

    :cond_b6
    :goto_b6
    const p0, 0x1070029

    :goto_b9
    return p0
.end method

.method public final getCarrierRequiredAppsListArrayforManagedUser()I
    .registers 1

    const p0, 0x1070033

    return p0
.end method

.method public final getCarrierRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6e

    goto :goto_2c

    :sswitch_c
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_7c

    .line 381
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 375
    :pswitch_4b
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierRequiredAppsListArrayforManagedProfile()I

    move-result p1

    goto :goto_59

    .line 372
    :pswitch_50
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierRequiredAppsListArrayforManagedUser()I

    move-result p1

    goto :goto_59

    .line 378
    :pswitch_55
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierRequiredAppsListArrayforManagedDevice()I

    move-result p1

    .line 384
    :goto_59
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :sswitch_data_6e
    .sparse-switch
        -0x36de2734 -> :sswitch_22
        -0x1ea9303f -> :sswitch_17
        -0x1450e22d -> :sswitch_c
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_55
        :pswitch_50
        :pswitch_4b
    .end packed-switch
.end method

.method public final getDeviceManagerRoleHolders()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 179
    invoke-interface {v1, p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getDevicePolicyManagementRoleHolderPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 181
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object v0
.end method

.method public final getDisallowedApps(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getVendorDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6a

    goto :goto_2c

    :sswitch_c
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_78

    .line 324
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4b
    const p1, 0x107018e

    goto :goto_56

    :pswitch_4f
    const p1, 0x107018f

    goto :goto_56

    :pswitch_53
    const p1, 0x107018d

    .line 327
    :goto_56
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :sswitch_data_6a
    .sparse-switch
        -0x36de2734 -> :sswitch_22
        -0x1ea9303f -> :sswitch_17
        -0x1450e22d -> :sswitch_c
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
    .end packed-switch
.end method

.method public final getLaunchableApps(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    const v1, 0xc2200

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 252
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 253
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 254
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_32
    return-object p1
.end method

.method public getNonRequiredApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getLaunchableApps(I)Ljava/util/Set;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredApps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 168
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getSystemInputMethods(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 169
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDisallowedApps(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 171
    invoke-virtual {p0, v0, p3}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredAppsMainlineModules(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 170
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDeviceManagerRoleHolders()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getRequiredApps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getVendorRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 278
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getRequiredAppsMainlineModules(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 197
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isMainlineModule(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_9

    .line 201
    :cond_1c
    invoke-virtual {p0, v1, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isRequiredAppDeclaredInMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_9

    .line 204
    :cond_23
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_27
    return-object v0
.end method

.method public final getRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6a

    goto :goto_2c

    :sswitch_c
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_78

    .line 305
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4b
    const p1, 0x10701a4

    goto :goto_56

    :pswitch_4f
    const p1, 0x10701a5

    goto :goto_56

    :pswitch_53
    const p1, 0x10701a3

    .line 308
    :goto_56
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :sswitch_data_6a
    .sparse-switch
        -0x36de2734 -> :sswitch_22
        -0x1ea9303f -> :sswitch_17
        -0x1450e22d -> :sswitch_c
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
    .end packed-switch
.end method

.method public final getSystemInputMethods(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    .line 261
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 262
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 263
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 264
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 265
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2f
    return-object p1
.end method

.method public final getVendorDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6a

    goto :goto_2c

    :sswitch_c
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_78

    .line 362
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4b
    const p1, 0x10701b2

    goto :goto_56

    :pswitch_4f
    const p1, 0x10701b3

    goto :goto_56

    :pswitch_53
    const p1, 0x10701b1

    .line 365
    :goto_56
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :sswitch_data_6a
    .sparse-switch
        -0x36de2734 -> :sswitch_22
        -0x1ea9303f -> :sswitch_17
        -0x1450e22d -> :sswitch_c
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
    .end packed-switch
.end method

.method public final getVendorRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6a

    goto :goto_2c

    :sswitch_c
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_78

    .line 343
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4b
    const p1, 0x10701b6

    goto :goto_56

    :pswitch_4f
    const p1, 0x10701b7

    goto :goto_56

    :pswitch_53
    const p1, 0x10701b5

    .line 346
    :goto_56
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :sswitch_data_6a
    .sparse-switch
        -0x36de2734 -> :sswitch_22
        -0x1ea9303f -> :sswitch_17
        -0x1450e22d -> :sswitch_c
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
    .end packed-switch
.end method

.method public final isApkInApexMainlineModule(Ljava/lang/String;)Z
    .registers 2

    .line 238
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 239
    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isMainlineModule(Ljava/lang/String;)Z
    .registers 3

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isRegularMainlineModule(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isApkInApexMainlineModule(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final isRegularMainlineModule(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 230
    :try_start_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_6} :catch_8

    const/4 p0, 0x1

    return p0

    :catch_8
    return v0
.end method

.method public final isRequiredAppDeclaredInMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 212
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_19

    .line 216
    sget-object p1, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 217
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_19
    const/4 p0, 0x0

    return p0
.end method
