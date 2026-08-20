.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field public adminUid:I

.field public flags:I

.field public flowTypeForProfile:I

.field public intervalValueForProfile:I

.field public jsonString:Ljava/lang/String;

.field public opUserId:I

.field public packageName:Ljava/lang/String;

.field public packageSignature:Ljava/lang/String;

.field public profileName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V
    .registers 3

    .line 1061
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->profileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public adminUid(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public build()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public flags(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public flowTypeForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public intervalValueForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public jsonString(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public opUserId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public packageName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public packageSignature(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public userId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method
