.class Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SemCellularStateManager.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CellInfoListener;
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemCellularStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SemCellularStateManager"

    if-eqz p1, :cond_6d

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6d

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: cellInfoList Number of cell: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 338
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 339
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mgetCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;Landroid/telephony/CellInfo;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: Registered = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCellularCellId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    return-void

    :cond_6d
    const-string p1, "onCellInfoChanged: cellInfoList is null or Size is zero and no registered cell"

    .line 346
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    const v0, 0x7fffffff

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V

    .line 348
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 5

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged: state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", networkType ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Landroid/telephony/TelephonyManager;

    .line 354
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemCellularStateManager"

    .line 353
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mgetNetworkClass(Lcom/samsung/android/server/wifi/SemCellularStateManager;J)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmNetworkClass(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V

    .line 356
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmCellularSignalLevel(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V

    .line 363
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    return-void
.end method

.method public onUserMobileDataStateChanged(Z)V
    .registers 4

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserMobileDataStateChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCellularStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmIsUserDataEnabled(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V

    .line 370
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    return-void
.end method
