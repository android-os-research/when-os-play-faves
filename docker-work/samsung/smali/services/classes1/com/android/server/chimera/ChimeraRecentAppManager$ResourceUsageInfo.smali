.class public Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;
.super Ljava/lang/Object;
.source "ChimeraRecentAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ChimeraRecentAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceUsageInfo"
.end annotation


# instance fields
.field public mAppPss:J

.field public mAvailMem:J

.field public mPsiFullTotal:J

.field public mPsiSomeTotal:J

.field public mUid:I


# direct methods
.method public constructor <init>(IJJJJ)V
    .registers 10

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mUid:I

    .line 223
    iput-wide p2, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAppPss:J

    .line 224
    iput-wide p4, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAvailMem:J

    .line 225
    iput-wide p6, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiSomeTotal:J

    .line 226
    iput-wide p8, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiFullTotal:J

    return-void
.end method


# virtual methods
.method public getAppPss()J
    .registers 3

    .line 234
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAppPss:J

    return-wide v0
.end method

.method public getAvailMem()J
    .registers 3

    .line 238
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAvailMem:J

    return-wide v0
.end method

.method public getPsiFullTotal()J
    .registers 3

    .line 246
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiFullTotal:J

    return-wide v0
.end method

.method public getPsiSomeTotal()J
    .registers 3

    .line 242
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiSomeTotal:J

    return-wide v0
.end method

.method public getUid()I
    .registers 1

    .line 230
    iget p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mUid:I

    return p0
.end method
