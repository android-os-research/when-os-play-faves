.class public Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventMigrationCompletedInfo"
.end annotation


# instance fields
.field public final inTransform:Landroid/net/IpSecTransform;

.field public final outTransform:Landroid/net/IpSecTransform;


# direct methods
.method public constructor <init>(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 4

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/net/IpSecTransform;

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    .line 493
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/net/IpSecTransform;

    iput-object p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 503
    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 507
    :cond_6
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    .line 508
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    iget-object v2, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    .line 509
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 498
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
