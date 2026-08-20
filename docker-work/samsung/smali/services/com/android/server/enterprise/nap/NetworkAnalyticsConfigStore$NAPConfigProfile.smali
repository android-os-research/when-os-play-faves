.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NAPConfigProfile"
.end annotation


# instance fields
.field public final adminUid:I

.field public final flags:I

.field public flowTypeForProfile:I

.field public intervalValueForProfile:I

.field public final jsonString:Ljava/lang/String;

.field public final opUserId:I

.field public final packageName:Ljava/lang/String;

.field public final packageSignature:Ljava/lang/String;

.field public final profileName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;)V
    .registers 3

    .line 909
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iget-object p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->profileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 911
    iget-object p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 912
    iget-object p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageSignature:Ljava/lang/String;

    .line 913
    iget-object p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->jsonString:Ljava/lang/String;

    .line 914
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->adminUid:I

    .line 915
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 916
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 917
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flags:I

    .line 918
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flowTypeForProfile:I

    .line 919
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->intervalValueForProfile:I

    return-void
.end method


# virtual methods
.method public getAdminUid()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getFlags()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getFlowTypeForProfile()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getIntervalValueForProfile()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getJsonString()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpUserId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageSignature()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public setFlowTypeForProfile(I)V
    .registers 2

    return-void
.end method

.method public setIntervalValueForProfile(I)V
    .registers 2

    return-void
.end method

.method public setUserId(I)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
