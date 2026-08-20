.class public Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;
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
    name = "EventSetupCompletedInfo"
.end annotation


# instance fields
.field public final childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .registers 2

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 382
    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 386
    :cond_6
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    .line 387
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 377
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
