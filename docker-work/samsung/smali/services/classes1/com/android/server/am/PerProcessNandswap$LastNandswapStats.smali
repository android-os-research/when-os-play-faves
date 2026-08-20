.class public final Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PerProcessNandswap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastNandswapStats"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mRssAfterNandswap:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;[J)V
    .registers 3

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;->mName:Ljava/lang/String;

    .line 1175
    iput-object p2, p0, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;->mRssAfterNandswap:[J

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    .line 1183
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRssAfterNandswap()[J
    .registers 1

    .line 1179
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;->mRssAfterNandswap:[J

    return-object p0
.end method
