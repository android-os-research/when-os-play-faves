.class public Lcom/android/server/bgslotmanager/BGSlotManager$1;
.super Landroid/os/CountDownTimer;
.source "BGSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bgslotmanager/BGSlotManager;->runSetBonusMaxCachedAppsPerSwapTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/bgslotmanager/BGSlotManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/BGSlotManager;JJ)V
    .registers 6

    .line 187
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager$1;->this$0:Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    const-string v0, "DynamicHiddenApp_BGSlotManager"

    const-string/jumbo v1, "swapTimer onfinish"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager$1;->this$0:Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-static {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->-$$Nest$msetBonusMaxCachedAppsPerSwap(Lcom/android/server/bgslotmanager/BGSlotManager;)V

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change Max_Cached by setSwapTimer : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
