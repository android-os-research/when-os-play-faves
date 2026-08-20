.class public Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;
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
    name = "EventTransformCreatedInfo"
.end annotation


# instance fields
.field public final direction:I

.field public final transform:Landroid/net/IpSecTransform;


# direct methods
.method public constructor <init>(ILandroid/net/IpSecTransform;)V
    .registers 3

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    .line 338
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/net/IpSecTransform;

    iput-object p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 348
    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 352
    :cond_6
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    .line 353
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    iget v2, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    if-ne v0, v2, :cond_19

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 343
    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
