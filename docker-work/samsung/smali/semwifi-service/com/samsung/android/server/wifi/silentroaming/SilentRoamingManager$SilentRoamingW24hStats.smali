.class public Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;
.super Ljava/lang/Object;
.source "SilentRoamingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SilentRoamingW24hStats"
.end annotation


# instance fields
.field public totalSwitchCount:I

.field public totalSwitchFailureCount:I

.field public totalSwitchNoInternetCount:I

.field public totalToggleCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2457
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    .line 2458
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 2459
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 2460
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;)V
    .registers 3

    .line 2463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2464
    iget v0, p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    .line 2465
    iget v0, p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 2466
    iget v0, p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 2467
    iget p1, p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2471
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    .line 2472
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 2473
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 2474
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    return-void
.end method
