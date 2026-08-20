.class public Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MARsAppIdleStateChangeListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 2

    .line 1393
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 8

    .line 1397
    sget-boolean p3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p3, :cond_2d

    const-string p3, "MARsPolicyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAppIdleStateChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|bucket : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_2d
    sget-object p3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p3

    .line 1399
    :try_start_30
    iget-object p5, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v0, p5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p5, v0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p2

    if-eqz p2, :cond_146

    .line 1401
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p5

    const/4 v0, 0x2

    if-eq p5, v0, :cond_144

    .line 1402
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p5

    const/16 v0, 0x100

    if-ne p5, v0, :cond_4b

    goto/16 :goto_144

    :cond_4b
    const/16 p5, 0x28

    if-lt p4, p5, :cond_bf

    .line 1404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 1405
    new-instance p4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p4

    .line 1406
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p4

    .line 1407
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p4

    .line 1408
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p4

    .line 1409
    invoke-virtual {p4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p4

    .line 1410
    sget-boolean p5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p5, :cond_147

    const-string p5, "MARsPolicyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update resetTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_147

    :cond_bf
    const/16 p1, 0xa

    if-gt p4, p1, :cond_146

    .line 1412
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result p1

    if-nez p1, :cond_146

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    const/16 p1, 0x400

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_146

    .line 1413
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    const/16 p1, 0x80

    if-ne p0, p1, :cond_146

    .line 1414
    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 1415
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 1416
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p1

    if-eqz p1, :cond_fd

    const-string p1, "1"

    goto :goto_ff

    :cond_fd
    const-string p1, "0"

    :goto_ff
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 1417
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 1418
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 1419
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 1420
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 1421
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 1422
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p4

    goto :goto_147

    .line 1402
    :cond_144
    :goto_144
    monitor-exit p3

    return-void

    :cond_146
    const/4 p4, 0x0

    .line 1427
    :cond_147
    :goto_147
    monitor-exit p3
    :try_end_148
    .catchall {:try_start_30 .. :try_end_148} :catchall_152

    if-eqz p4, :cond_151

    .line 1428
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_151
    return-void

    :catchall_152
    move-exception p0

    .line 1427
    :try_start_153
    monitor-exit p3
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    throw p0
.end method
