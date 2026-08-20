.class public Lcom/android/server/smartclip/SpenGarageSpecManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
    }
.end annotation


# static fields
.field public static final FEATURE_NAME_SPEN_GARAGE_SPEC:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC"

.field public static final GARAGE_BUNDLED:Ljava/lang/String; = "bundled"

.field public static final GARAGE_UNBUNDLED_SPEC:Ljava/lang/String; = "unbundled_spec"

.field public static TAG:Ljava/lang/String; = "SpenGarageSpecManager"

.field public static sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;


# instance fields
.field public mIsBundledSpenSupported:Z

.field public mSupportedExternalSpenFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2686
    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 2687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    .line 2701
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGarageSpecManager;->parseSpenGarageSpec()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;
    .registers 2

    const-class v0, Lcom/android/server/smartclip/SpenGarageSpecManager;

    monitor-enter v0

    .line 2694
    :try_start_3
    sget-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;

    if-nez v1, :cond_e

    .line 2695
    new-instance v1, Lcom/android/server/smartclip/SpenGarageSpecManager;

    invoke-direct {v1}, Lcom/android/server/smartclip/SpenGarageSpecManager;-><init>()V

    sput-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;

    .line 2697
    :cond_e
    sget-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isBundledSpenSupported()Z
    .registers 1

    .line 2749
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    return p0
.end method

.method public isUnbundledRemoteSpenSupported()Z
    .registers 2

    .line 2752
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->REMOTE:Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final parseSpenGarageSpec()V
    .registers 12

    .line 2705
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2706
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2707
    sget-object p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->TAG:Ljava/lang/String;

    const-string v0, "Spen Garage Spec is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const/4 v1, 0x1

    .line 2710
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 2712
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    .line 2713
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    .line 2715
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2716
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_30
    if-ge v5, v3, :cond_c8

    aget-object v6, v2, v5

    const-string v7, "="

    .line 2717
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2718
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_55

    .line 2719
    sget-object v6, Lcom/android/server/smartclip/SpenGarageSpecManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect Spec, strSpec : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 2723
    :cond_55
    aget-object v7, v6, v4

    .line 2724
    aget-object v6, v6, v1

    .line 2726
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v8, "unbundled_spec"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8f

    const-string v8, "bundled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6e

    goto :goto_c4

    .line 2728
    :cond_6e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 2729
    sget-object v7, Lcom/android/server/smartclip/SpenGarageSpecManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bundle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    :cond_8f
    const-string v7, "\\|"

    .line 2732
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2733
    sget-object v8, Lcom/android/server/smartclip/SpenGarageSpecManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unbundled_spec = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    array-length v6, v7

    move v8, v4

    :goto_ae
    if-ge v8, v6, :cond_c4

    aget-object v9, v7, v8

    .line 2735
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->valueOf(Ljava/lang/String;)Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    move-result-object v9

    if-eqz v9, :cond_c1

    .line 2737
    iget-object v10, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c1
    add-int/lit8 v8, v8, 0x1

    goto :goto_ae

    :cond_c4
    :goto_c4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_30

    :cond_c8
    return-void
.end method
