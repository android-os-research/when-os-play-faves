.class public Lcom/sec/vsim/util/VSimCscFeatureDetector;
.super Ljava/lang/Object;
.source "VSimCscFeatureDetector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/sec/vsim/util/VSimCscFeatureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/util/VSimCscFeatureDetector;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeviceGroupEnabled()Z
    .registers 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public static checkJanskyPhase2Enabled()Z
    .registers 2

    .line 49
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ConfigImsOpStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "mdmnTypes":Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method

.method public static checkVSimFeatureEnabled(Ljava/lang/String;)Z
    .registers 2
    .param p0, "vsimType"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    return v0
.end method
