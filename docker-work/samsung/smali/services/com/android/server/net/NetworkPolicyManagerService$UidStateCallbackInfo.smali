.class public final Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UidStateCallbackInfo"
.end annotation


# instance fields
.field public capability:I

.field public isPending:Z

.field public procState:I

.field public procStateSeq:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 1381
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    const-wide/16 v0, -0x1

    .line 1382
    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public update(IIJI)V
    .registers 6

    .line 1388
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->uid:I

    .line 1389
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 1390
    iput-wide p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    .line 1391
    iput p5, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    return-void
.end method
