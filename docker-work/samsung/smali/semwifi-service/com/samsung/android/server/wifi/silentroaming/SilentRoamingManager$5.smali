.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$5;
.super Landroid/database/ContentObserver;
.source "SilentRoamingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerForSettingsChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Handler;)V
    .registers 3

    .line 535
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$5;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 538
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    iget p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    return-void
.end method
