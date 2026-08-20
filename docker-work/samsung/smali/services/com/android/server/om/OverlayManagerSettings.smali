.class public final Lcom/android/server/om/OverlayManagerSettings;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerSettings$BadKeyException;,
        Lcom/android/server/om/OverlayManagerSettings$SettingsItem;,
        Lcom/android/server/om/OverlayManagerSettings$Serializer;
    }
.end annotation


# instance fields
.field public final mItems:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mItemsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mItemsLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$0HFSqQIOtAQf9BLE5A8MIf6Vo3Y(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$dump$9(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1XsIHMoHT4R4SYBQgNtzy96ltlg(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings;->isImmutableFrameworkOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3lg1IEH_c7dcxw_oczmaYS5gRXM(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->lambda$dump$10(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8i03FBCcHuOuLiGFzkm0Ire-wlg(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getOverlaysForTarget$0(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DfRINM4kXyxADVOGyzx4GtRXBI4(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$removeUser$6(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KOHjnbEODbpX2EKaaDf2_a9WqDQ(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$selectWhereOverlay$13(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NB2m4Niu2H-13hZ3QgK47e9eAgQ(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getOverlaysForUser$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NR24dkKRB8isq_xGMDc7eK8DDKI(Ljava/util/Set;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getAllBaseCodePaths$2(Ljava/util/Set;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VPCIFQLpKkkMu1m3-f_w_ZJ_hoc(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$selectWhereUser$12(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cH0Ue12WBrOBhOeybiKIUFKFLBE(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->lambda$dump$11(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dBnMrj3PVtF6XbaltDEdXa8Oo18(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$dump$8(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k3HyJliEuQBcpXz2IGAate1aqvU(Ljava/lang/Object;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getUsers$5(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k6GemYWo6Ib4DrDLEpsbTbq-fiY(Ljava/util/Set;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getAllIdentifiersAndBaseCodePaths$3(Ljava/util/Set;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xIUah0694tLPetYakHtDqLC7D9E(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$selectWhereTarget$14(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yeIo4dsq_4SqI7mm7YZF4uVN30o(Ljava/util/function/Predicate;ILandroid/content/om/OverlayInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->lambda$removeIf$4(Ljava/util/function/Predicate;ILandroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zfCPVrRRVJGRNPP1GmtFGoAO77o(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$dump$7(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public static isImmutableFrameworkOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    .line 297
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$misMutable(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private synthetic lambda$dump$10(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 4

    .line 442
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getField()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->dumpSettingsItemField(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dump$11(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 3

    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dumpSettingsItem(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    return-void
.end method

.method public static synthetic lambda$dump$7(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    .line 428
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/om/DumpState;->getUserId()I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$dump$8(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    .line 431
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$dump$9(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    .line 435
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p0}, Lcom/android/server/om/DumpState;->getOverlayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getAllBaseCodePaths$2(Ljava/util/Set;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 2

    .line 259
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getAllIdentifiersAndBaseCodePaths$3(Ljava/util/Set;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 4

    .line 266
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getOverlaysForTarget$0(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;
    .registers 1

    .line 238
    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getOverlaysForUser$1(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 250
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$getUsers$5(Ljava/lang/Object;)I
    .registers 1

    .line 292
    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$removeIf$4(Ljava/util/function/Predicate;ILandroid/content/om/OverlayInfo;)Z
    .registers 3

    .line 272
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    iget p0, p2, Landroid/content/om/OverlayInfo;->userId:I

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$removeUser$6(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 4

    .line 306
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    if-ne v0, p0, :cond_2f

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing overlay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " from settings because user was removed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverlayManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$selectWhereOverlay$13(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    .line 847
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$selectWhereTarget$14(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    .line 854
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$selectWhereUser$12(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2

    .line 839
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 7

    .line 424
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 427
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getUserId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 428
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda11;

    invoke-direct {v2, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/om/DumpState;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 430
    :cond_19
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 431
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda12;

    invoke-direct {v2, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/om/DumpState;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 434
    :cond_28
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getOverlayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 435
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda13;

    invoke-direct {v2, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/om/DumpState;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 440
    :cond_37
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getField()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 442
    new-instance p1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, v2, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;)V

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_55

    .line 444
    :cond_4d
    new-instance p1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, v2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 446
    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final dumpSettingsItem(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 4

    .line 451
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 454
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mPackageName...........: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mOverlayName...........: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mUserId................: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mTargetPackageName.....: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mTargetOverlayableName.: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetTargetOverlayableName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mBaseCodePath..........: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mState.................: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    invoke-static {v0}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mIsEnabled.............: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$misEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mIsMutable.............: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$misMutable(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mPriority..............: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mCategory..............: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmCategory(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mIsFabricated..........: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmIsFabricated(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo p0, "}"

    .line 468
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpSettingsItemField(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)V
    .registers 5

    .line 473
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_100

    goto/16 :goto_97

    :sswitch_d
    const-string p0, "basecodepath"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_97

    :cond_17
    const/16 v0, 0xa

    goto/16 :goto_97

    :sswitch_1b
    const-string/jumbo p0, "packagename"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_97

    :cond_26
    const/16 v0, 0x9

    goto/16 :goto_97

    :sswitch_2a
    const-string/jumbo p0, "isenabled"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_97

    :cond_35
    const/16 v0, 0x8

    goto/16 :goto_97

    :sswitch_39
    const-string/jumbo p0, "state"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_97

    :cond_43
    const/4 v0, 0x7

    goto :goto_97

    :sswitch_45
    const-string p0, "category"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_97

    :cond_4e
    const/4 v0, 0x6

    goto :goto_97

    :sswitch_50
    const-string/jumbo p0, "overlayname"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto :goto_97

    :cond_5a
    const/4 v0, 0x5

    goto :goto_97

    :sswitch_5c
    const-string/jumbo p0, "ismutable"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto :goto_97

    :cond_66
    const/4 v0, 0x4

    goto :goto_97

    :sswitch_68
    const-string/jumbo p0, "userid"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto :goto_97

    :cond_72
    const/4 v0, 0x3

    goto :goto_97

    :sswitch_74
    const-string/jumbo p0, "priority"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto :goto_97

    :cond_7e
    const/4 v0, 0x2

    goto :goto_97

    :sswitch_80
    const-string/jumbo p0, "targetpackagename"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8a

    goto :goto_97

    :cond_8a
    const/4 v0, 0x1

    goto :goto_97

    :sswitch_8c
    const-string/jumbo p0, "targetoverlayablename"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    goto :goto_97

    :cond_96
    const/4 v0, 0x0

    :goto_97
    packed-switch v0, :pswitch_data_12e

    goto :goto_fe

    .line 490
    :pswitch_9b
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fe

    .line 475
    :pswitch_a3
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fe

    .line 496
    :pswitch_af
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmIsEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    goto :goto_fe

    .line 493
    :pswitch_b7
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result p0

    invoke-static {p0}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fe

    .line 505
    :pswitch_c3
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmCategory(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fe

    .line 478
    :pswitch_cb
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fe

    .line 499
    :pswitch_d7
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmIsMutable(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    goto :goto_fe

    .line 481
    :pswitch_df
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto :goto_fe

    .line 502
    :pswitch_e7
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto :goto_fe

    .line 484
    :pswitch_ef
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fe

    .line 487
    :pswitch_f7
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmTargetOverlayableName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_fe
    return-void

    nop

    :sswitch_data_100
    .sparse-switch
        -0x685a1e7c -> :sswitch_8c
        -0x4a674a60 -> :sswitch_80
        -0x4577865c -> :sswitch_74
        -0x31d4cdda -> :sswitch_68
        -0x3188d944 -> :sswitch_5c
        -0x1832e925 -> :sswitch_50
        0x302bcfe -> :sswitch_45
        0x68ac491 -> :sswitch_39
        0x1a483ad7 -> :sswitch_2a
        0x36391bd1 -> :sswitch_1b
        0x64f6f963 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_ef
        :pswitch_e7
        :pswitch_df
        :pswitch_d7
        :pswitch_cb
        :pswitch_c3
        :pswitch_b7
        :pswitch_af
        :pswitch_a3
        :pswitch_9b
    .end packed-switch
.end method

.method public getAllBaseCodePaths()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 259
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda8;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 260
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    .line 261
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/content/om/OverlayIdentifier;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 265
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 266
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getEnabled(Landroid/content/om/OverlayIdentifier;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-ltz v1, :cond_17

    .line 189
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$misEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 187
    :cond_17
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw p0

    :catchall_1d
    move-exception p0

    .line 190
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result p1

    if-gez p1, :cond_c

    const/4 p0, 0x0

    .line 151
    monitor-exit v0

    return-object p0

    .line 153
    :cond_c
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 154
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-ltz v1, :cond_17

    .line 142
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 140
    :cond_17
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw p0

    :catchall_1d
    move-exception p0

    .line 143
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 237
    new-instance p1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 238
    new-instance p1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->map(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOverlaysForUser(I)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/List;

    move-result-object p0

    .line 245
    new-instance p1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 247
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 248
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_37

    .line 249
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 250
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, v3, v4}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 251
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_37
    return-object p1
.end method

.method public getState(Landroid/content/om/OverlayIdentifier;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-ltz v1, :cond_17

    .line 214
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 212
    :cond_17
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw p0

    :catchall_1d
    move-exception p0

    .line 215
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public getUsers()[I
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 293
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;
    .registers 23

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 96
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;ZZ)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;ZZ)Landroid/content/om/OverlayInfo;
    .registers 26

    .line 106
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 109
    new-instance v13, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    const/4 v6, -0x1

    move-object v0, v13

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;ZZ)V

    move-object v0, p0

    .line 117
    invoke-virtual {p0, v13}, Lcom/android/server/om/OverlayManagerSettings;->insert(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    .line 118
    invoke-static {v13}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method public final insert(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 6

    .line 411
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_23

    .line 414
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 415
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-gt v2, v3, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 419
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 420
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public persist(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V

    .line 519
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public remove(Landroid/content/om/OverlayIdentifier;I)Z
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result p1

    if-gez p1, :cond_c

    const/4 p0, 0x0

    .line 128
    monitor-exit v0

    return p0

    .line 130
    :cond_c
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 131
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 132
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/content/om/OverlayInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 279
    :try_start_4
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_2c

    .line 280
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v3

    .line 281
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 282
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 283
    invoke-static {v1, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 286
    :cond_2c
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_32
    move-exception p0

    .line 287
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public removeIf(Ljava/util/function/Predicate;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/content/om/OverlayInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Predicate;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeUser(I)Z
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 315
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public restore(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    .line 513
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final select(Landroid/content/om/OverlayIdentifier;I)I
    .registers 8

    .line 824
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_29

    .line 827
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 828
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    if-ne v4, p2, :cond_26

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/om/OverlayIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 829
    monitor-exit v0

    return v2

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_29
    const/4 p0, -0x1

    .line 832
    monitor-exit v0

    return p0

    :catchall_2c
    move-exception p0

    .line 833
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final selectWhereOverlay(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .line 846
    invoke-virtual {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/List;

    move-result-object p0

    .line 847
    new-instance p2, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;

    invoke-direct {p2, p1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method

.method public final selectWhereTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .line 853
    invoke-virtual {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/List;

    move-result-object p0

    .line 854
    new-instance p2, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda10;

    invoke-direct {p2, p1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method

.method public final selectWhereUser(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 839
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/CollectionUtils;->addIf(Ljava/util/List;Ljava/util/Collection;Ljava/util/function/Predicate;)V

    .line 840
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    .line 841
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public setBaseCodePath(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-ltz v1, :cond_17

    .line 167
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$msetBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 165
    :cond_17
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw p0

    :catchall_1d
    move-exception p0

    .line 168
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setCategory(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-ltz v1, :cond_17

    .line 178
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$msetCategory(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 176
    :cond_17
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw p0

    :catchall_1d
    move-exception p0

    .line 179
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-ltz v1, :cond_17

    .line 203
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$msetEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 201
    :cond_17
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw p0

    :catchall_1d
    move-exception p0

    .line 204
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Z
    .registers 6

    .line 392
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result p1

    if-ltz p1, :cond_28

    .line 396
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_14

    goto :goto_28

    .line 400
    :cond_14
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 401
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 402
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    monitor-exit v0

    return v1

    :cond_28
    :goto_28
    const/4 p0, 0x0

    .line 397
    monitor-exit v0

    return p0

    :catchall_2b
    move-exception p0

    .line 404
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Z
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result p1

    const/4 p2, 0x0

    if-gtz p1, :cond_c

    .line 378
    monitor-exit v0

    return p2

    .line 381
    :cond_c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 382
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    .line 384
    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    .line 385
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setPriority(Landroid/content/om/OverlayIdentifier;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-ltz v1, :cond_1e

    .line 329
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 330
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 331
    invoke-static {p1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$msetPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->insert(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    .line 333
    monitor-exit v0

    return-void

    .line 326
    :cond_1e
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw p0

    :catchall_24
    move-exception p0

    .line 333
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Z
    .registers 10

    .line 341
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/om/OverlayIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 343
    monitor-exit v0

    return v2

    .line 345
    :cond_c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result p1

    if-gez p1, :cond_14

    .line 347
    monitor-exit v0

    return v2

    .line 350
    :cond_14
    invoke-virtual {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-gez v1, :cond_1c

    .line 352
    monitor-exit v0

    return v2

    .line 355
    :cond_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 358
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 359
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 360
    monitor-exit v0

    return v2

    .line 363
    :cond_3c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 364
    invoke-virtual {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 365
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eq p1, p2, :cond_4f

    move v2, p3

    .line 366
    :cond_4f
    monitor-exit v0

    return v2

    :catchall_51
    move-exception p0

    .line 367
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public setState(Landroid/content/om/OverlayIdentifier;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-ltz v1, :cond_17

    .line 228
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p0, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$msetState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 226
    :cond_17
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw p0

    :catchall_1d
    move-exception p0

    .line 229
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method
