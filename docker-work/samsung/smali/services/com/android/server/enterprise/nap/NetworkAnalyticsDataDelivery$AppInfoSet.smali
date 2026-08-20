.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
.super Ljava/lang/Object;
.source "NetworkAnalyticsDataDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoSet"
.end annotation


# instance fields
.field public hash:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public truncatedProcessName:Ljava/lang/String;

.field public uid:I

.field public userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    .line 190
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    .line 194
    iput-object p4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    .line 196
    iput-object p5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    .line 198
    iput p6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->userId:I

    return-void
.end method
