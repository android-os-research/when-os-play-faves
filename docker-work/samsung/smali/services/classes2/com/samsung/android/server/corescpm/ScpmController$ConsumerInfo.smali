.class public Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;
.super Ljava/lang/Object;
.source "ScpmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/corescpm/ScpmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsumerInfo"
.end annotation


# instance fields
.field public final mAppId:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mReceiverPackageName:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mReceiverPackageName:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mAppId:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mReceiverPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mAppId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mVersion:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
