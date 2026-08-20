.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NAPProfileActivation"
.end annotation


# instance fields
.field public activationFlowType:I

.field public activationIntervalValue:I

.field public activationState:I

.field public adminUid:I

.field public profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;)V
    .registers 2

    .line 816
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)V
    .registers 4

    .line 823
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 825
    iput p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->adminUid:I

    return-void
.end method


# virtual methods
.method public getActivationFlowType()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getActivationIntervalValue()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getActivationState()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getAdminUid()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public setActivationFlowType(I)V
    .registers 2

    return-void
.end method

.method public setActivationIntervalValue(I)V
    .registers 2

    return-void
.end method

.method public setActivationState(I)V
    .registers 2

    return-void
.end method
