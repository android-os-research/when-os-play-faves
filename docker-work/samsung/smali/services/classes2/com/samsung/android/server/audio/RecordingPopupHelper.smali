.class public Lcom/samsung/android/server/audio/RecordingPopupHelper;
.super Ljava/lang/Object;
.source "RecordingPopupHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AS.RecordingPopupHelper"

.field public static sOldPortId:I = -0x1

.field public static sPreviousTime:J = -0x1L


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 70
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    :try_start_9
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 73
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_15} :catch_16

    return-object p0

    .line 75
    :catch_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RECORDING POPUP] getAppName can\'t find the name of "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.RecordingPopupHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3c

    const p1, 0x10401ab

    .line 79
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    const p1, 0x104000e

    .line 81
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static notifyRecordingPopup(Landroid/os/Handler;II)V
    .registers 8

    const-string v0, "AS.RecordingPopupHelper"

    if-nez p0, :cond_a

    const-string p0, "[RECORDING POPUP] There is no audio handler"

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_a
    sget v1, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sOldPortId:I

    if-eq v1, p2, :cond_5d

    .line 54
    sput p2, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sOldPortId:I

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 56
    sget-wide v3, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sPreviousTime:J

    sub-long v3, v1, v3

    .line 57
    sput-wide v1, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sPreviousTime:J

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RECORDING POPUP] notifyRecordingPopup uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " portId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " periodTime "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x306

    .line 59
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0xfa0

    cmp-long v0, v3, v0

    const/4 v1, 0x0

    if-lez v0, :cond_54

    .line 61
    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5d

    .line 63
    :cond_54
    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5d
    :goto_5d
    return-void
.end method

.method public static showRecordingPopup(Landroid/content/Context;I)V
    .registers 4

    .line 42
    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/RecordingPopupHelper;->getAppName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x1040b6a

    .line 43
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
